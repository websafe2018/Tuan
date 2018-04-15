package control;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import entity.Account;
import entity.BackPlan;
import entity.Body;
import entity.Loadrecord;
import entity.Rebackrecord;
import entity.Record;
import service.AccountService;
import service.BackPlanService;
import service.RebackrecordService;
import service.RecordService;

@Controller
public class BackPlanControl {

	@Resource
	private BackPlanService bservice;
	@Resource
	private AccountService aservice;
	@Resource
	private RecordService rservice;
	@Resource
	private RebackrecordService reservice;
	
	/*
	 * 查找所有还款计划
	 */
	@RequestMapping(value="/findBackPlanList.do",produces="application/json; charset=utf-8")
	@ResponseBody
	public String findBackPlanList(HttpSession session,@RequestParam(defaultValue="")String start,@RequestParam(defaultValue="")String end){
		List<BackPlan> blist=new ArrayList<BackPlan>();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Body body=(Body) session.getAttribute("myBody");
		List<BackPlan> allList=new ArrayList<BackPlan>();
		List<Loadrecord> LoadList=body.getLoadList();
		if(start!=null&&!start.trim().equals("")&&end!=null&&!end.trim().equals("")){
			try {
				Timestamp s=new Timestamp(sdf.parse(start).getTime());
				Timestamp e=new Timestamp(sdf.parse(end).getTime());
				for(int i=0;i<LoadList.size();i++){
					int lid=LoadList.get(i).getId();
					blist=bservice.findBackPlan(lid,s, e);
					allList.addAll(blist);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			try {
				for(int i=0;i<LoadList.size();i++){
					int lid=LoadList.get(i).getId();
					blist=bservice.findBackPlan(lid,null, null);
					allList.addAll(blist);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return JSONObject.toJSONString(allList);
	}
	
	/*
	 * 点击还款
	 */
	@RequestMapping(value="/doBackById.do")
	public void doBackById(int id,HttpSession session,HttpServletResponse res){
		Body body=(Body) session.getAttribute("myBody");
		int uid=body.getId();
		try {
			PrintWriter pw=res.getWriter();
			Account acc=aservice.findAccByUidtwo(uid);
			BackPlan bp= bservice.findBpById(id);
			double qian=bp.getBackIncome()+bp.getBackMoney();
			if(acc.getAcBalance()>=qian){
				int bstyle=0;
				int bid =bp.getId();
				double money=acc.getAcBalance()-qian;
				Rebackrecord re=reservice.getRebackBodyByLid(bp.getLid()).get(0);
				double bb=re.getReMoney()+money;
				re.setReMoney(bb);
				if(re.getReTotal()==bb){
					re.setReTime(new Timestamp(System.currentTimeMillis()));
					re.setReStatus(0);
				}
				re.setReNumber(re.getReNumber()+1);
				
				Record r=new Record();
				r.setBlance(acc.getAcBalance());
				r.setRemarks("支出");
				r.setrMoney(money);
				r.setrTime(new Timestamp(System.currentTimeMillis()));
				r.setrType("还款");
				r.setUid(uid);
				if(aservice.rechargeAcc(money, acc.getId())>0
						&&bservice.updateStyle(bid, bstyle)>0
						&&rservice.addRecord(r)>0
						&&reservice.updateReback(re)>0){
					pw.write("success");
				}
			}else{
				pw.write("nofull");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
