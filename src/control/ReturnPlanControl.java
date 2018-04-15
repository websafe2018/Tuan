package control;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.json.JsonObject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import entity.Body;
import entity.Investrecord;
import entity.ReturnPlan;
import entity.Standardinvest;
import service.InvestrecordService;
import service.StandardinvestService;
import util.DateFormatUtil;

@Controller
public class ReturnPlanControl {
	
	@Resource
	private StandardinvestService service;
	@Resource
	private InvestrecordService iservice;	

	@RequestMapping(value="/findPlan.do",produces="application/json; charset=utf-8")
	@ResponseBody
	public String findPlan(HttpSession session,@RequestParam(defaultValue="")String start,@RequestParam(defaultValue="")String end){
		Body body=(Body)session.getAttribute("myBody");
		
		//存储所有投资计划对象集合
		Map<Integer,List<ReturnPlan>> returnMap=new HashMap<Integer, List<ReturnPlan>>();
				
		if(body!=null){
			Map<Integer,List<String>> strMap=session.getAttribute("allBackPlan")==null?
					new HashMap<Integer, List<String>>():(HashMap<Integer, List<String>>) session.getAttribute("allBackPlan");
					//该用户的所有投标id集合
			List<Integer> sList=session.getAttribute("sidList")==null?
					new ArrayList<Integer>():(List<Integer>)session.getAttribute("sidList");
			for (Integer integer : sList) {
				System.out.println(integer+"/*****SID*****/");
			}
			//当前日期
		/*	Calendar calendar = Calendar.getInstance();
			int day=calendar.get(Calendar.DAY_OF_MONTH);
			int year=calendar.get(Calendar.YEAR);
			int month=calendar.get(Calendar.MONTH)+1;*/
			Long now=System.currentTimeMillis();
			
			//待收款笔数
			int retrunNum=0;
			//近一个月待收本息
			double nextOne=0.00;
			//近3个月待收本息
			double nextThree=0.00;
			//近半年待收本息
			double nextSix=0.00;
			
			
			
			
			//List<Investrecord> iList=body.getInvestList();
			for(int i=0;i<sList.size();i++){
				int sid= sList.get(i); //拿到投资标号
				List<ReturnPlan> ilist=new ArrayList<ReturnPlan>();
				List<String> tempList=strMap.get(sid); //拿到回款日期计划
				Investrecord in=iservice.getInvestBySid(sid,body.getId());//拿到投资记录
				int num=0;//待收期数
				Standardinvest s;
				try {
					s = service.findStandardinvest(sid);
					double lilv=s.getSrate()/100;//拿到利率
					int qixian=s.getSperiod();//拿到投资时长
					double imoney =in.getImoney();//拿到投资金额
					
					double income=Math.floor(imoney*lilv);
					double money=Math.floor(imoney/qixian);
					boolean flag=false;//定义还清标识
					for(int j=0;j<tempList.size();j++){
						ReturnPlan re=new ReturnPlan();
						re.setReturnIncome(income);
						re.setReturnMoney(money);
						re.setSid(sid);
						String time=tempList.get(j);
						time=time.replace("年", "-");
						time=time.replace("月", "-");
						time=time.replace("日", "");
						Timestamp returnTime=new Timestamp(new SimpleDateFormat("yyyy-MM-dd").parse(time).getTime());
						re.setReturnTimes(returnTime);
						if(now<returnTime.getTime()){
							num++;
							flag=true;
							re.setStyle(1);
						}else{
							re.setStyle(0);
						}
						ilist.add(re);
						
						

						if(num>1){
							nextOne+=(income+money)*1;
						}else{
							nextOne+=(income+money)*num;
						}
						
						if(num>3){
							nextThree+=(income+money)*3;
						}else{
							nextThree+=(income+money)*num;
						}
						
						if(num>6){
							nextSix+=(income+money)*6;
						}else{
							nextSix+=(income+money)*num;
						}
					}
					if(flag){
						retrunNum++;
					}
					returnMap.put(sid,ilist);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			/*session.setAttribute("retrunNum", retrunNum);//待收投资笔数
			session.setAttribute("nextOne", nextOne);//未来一个月待收本息
			session.setAttribute("nextThree", nextOne);//未来三个月待收本息
			session.setAttribute("nextSix", nextOne);//未来六个月待收本息
*/			
			/*double myMoney= (double) session.getAttribute("myMoney");//存储投资本金 
			double backMoney= (double) session.getAttribute("backMoney");//存储已回本金
			double myIncome= (double) session.getAttribute("income");//存储利息
			double backIncome= (double) session.getAttribute("backIncome");//存储已还利息
			double myQian=myMoney-backMoney+myIncome-backIncome;
			session.setAttribute("myQian", myQian);*/
			
			List<ReturnPlan> abcList=new ArrayList<ReturnPlan>();
			for(int i=0;i<sList.size();i++){
				int sid=sList.get(i);
				List<ReturnPlan> rlist=returnMap.get(sid);
				for(int j=0;j<rlist.size();j++){
					if(start!=null&&!start.trim().equals("")&&end!=null&&!end.trim().equals("")){
						SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
						long s;
						try {
							s = sdf.parse(start).getTime();
							long e=sdf.parse(end).getTime();
							long my=rlist.get(j).getReturnTimes().getTime();
							if(my<e&&my>s){
								abcList.add(rlist.get(j));
							}
						} catch (ParseException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
					}else{
						abcList.add(rlist.get(j));
					}	
				}
			}
			System.out.println(JSONObject.toJSONString(abcList));
			return JSONObject.toJSONString(abcList);
		}
		
		
		return null;
	}
}
