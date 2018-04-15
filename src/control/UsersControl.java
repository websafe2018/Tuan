package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
/**
 * 
 * Users控制层
 *
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import entity.Account;
import entity.BackPlan;
import entity.Basicinfo;
import entity.Body;
import entity.Investrecord;
import entity.Loadrecord;
import entity.Rechargerecord;
import entity.ReturnPlan;
import entity.Standardinvest;
import entity.Users;
import service.BackPlanService;
import service.BodyService;
import service.InvestrecordService;
import service.RoleService;
import service.StandardinvestService;
import service.UsersService;
import util.DateFormatUtil;
import util.PublicUtils;

@Controller
public class UsersControl {

	
	@Resource
	private UsersService uservice;
	@Resource
	private RoleService rservice;
	@Resource
	private BodyService bodyService;
	@Resource
	private InvestrecordService iservice;
	@Resource
	private StandardinvestService service;
	@Resource
	private BackPlanService bservice;
	
	/*
	 * 查找用户
	 */
	@RequestMapping("/findUsersAll.do")
	public void findUsersAll(HttpServletResponse res){
		try {
			res.getWriter().write(JSONObject.toJSONString(uservice.findUsersAll()));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 后台用户登录
	 */
	@RequestMapping("/adminLogin.do")
	public void adminLogin(HttpServletResponse res,HttpSession session,String userName,String password){
		try {
			PrintWriter pw =res.getWriter();
			Users user=uservice.adminLogin(userName, password);
			if(user==null){
				pw.write("1");
			}
			if(user!=null && (user.getRoleId()==4 || user.getRoleId()==5)){
				pw.write("2");
			}
			if(user!=null && user.getRoleId()!=4 && user.getRoleId()!=5){
				pw.write("0");
				String role=rservice.findRoleById(user.getRoleId()).getRole();
				user.setRole(role);
				session.setAttribute("adminUser", user);
			}
			//System.out.println("adminUser");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 查询所有后台人员
	 */
	@RequestMapping("/findAdminUserAll.do")
	public void findAdminUserAll(HttpServletResponse res){
		try {
			List<Users> ulist=uservice.findAdminUsersAll();
			if(ulist!=null){
				for (Users user : ulist) {
					user.setRole(rservice.findRoleById(user.getRoleId()).getRole());
				}
			}
			res.getWriter().write(JSONObject.toJSONString(ulist));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 根据id删除用户
	 */
	@RequestMapping("/delUserById.do")
	public void delUserById(HttpServletResponse res,int id){
		PrintWriter pw=null;
		try {
			pw =res.getWriter();
			int result=uservice.delUserById(id);
			if(result>0){
				pw.write("success");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(pw!=null){
				pw.close();
			}
		}
	}
	
	/*
	 * 根据用户id查找用户
	 */
	@RequestMapping("/findUserById.do")
	public String findUserById(HttpServletRequest re,int id){
		try {
			Users user=uservice.findUserById(id);
			if(user!=null){
				re.setAttribute("user", user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//默认就是转发，无需添加forword指令
		return "/jsp/houtai/adminUserupdate";
	}
	/*
	 * 根据用户id查找会员
	 */
	@RequestMapping("/findVipById.do")
	public String findVipById(HttpServletRequest re,int id){
		try {
			Users user=uservice.findVipById(id);
			if(user!=null){
				re.setAttribute("user", user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//默认就是转发，无需添加forword指令
		return "/jsp/houtai/userupdate";
	}
	
	/*
	 * 更新用户信息
	 */
	@RequestMapping("/updateUser.do")
	public void updateUser(HttpServletResponse res,Integer id,Integer roleId,String userName,String password,@RequestParam(defaultValue="")String telNo,@RequestParam(defaultValue="")String email,String registerTime ,Users user){
		user.setId(id);
		user.setRoleId(roleId);
		user.setEmail(email);
		user.setPassword(password);
		user.setRegisterTime(DateFormatUtil.dateParse(registerTime));
		user.setTelNo(telNo);
		user.setUserName(userName);
		try {
			int result=uservice.updateUser(user);
			if(result>0){
				res.getWriter().write("success");
			}else{
				res.getWriter().write("fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 查询所有的会员账户信息
	 */
	@RequestMapping("/findUsersByRole.do")
	public void findUsersByRole(@RequestParam(defaultValue="1")int pageno ,@RequestParam(defaultValue="")String start,@RequestParam(defaultValue="")String end ,@RequestParam(defaultValue="")String condition,HttpServletResponse res){
		try {
			res.setContentType("text/html;charset=utf-8");
			List<Users> ulist;
			if(start!=null && !start.trim().equals("")){
			ulist = 	uservice.findUsersByRole(pageno, DateFormatUtil.dateParse(start), DateFormatUtil.dateParse(end), condition);
			}else{
				ulist = uservice.findUsersByRole(pageno, null, null, condition);
			}
			res.getWriter().write(JSONObject.toJSONString(ulist));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 得到所有的会员人数
	 */
	@RequestMapping("/getVipCount.do")
	public void getVipCount(HttpServletResponse res,@RequestParam(defaultValue="")String start,@RequestParam(defaultValue="")String end ,@RequestParam(defaultValue="")String condition){
		try {
			int result;
			if(start!=null&&!start.trim().equals("")){
				result=uservice.getVipCount(DateFormatUtil.dateParse(start),  DateFormatUtil.dateParse(end), condition);
			}else{
				result=uservice.getVipCount(null, null, condition);
			}
			res.getWriter().write(result+"");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 更新会员信息
	 */
	@RequestMapping("/updateVIP.do")
	public void updateVIP(HttpServletResponse res,int id,@RequestParam(defaultValue="")String realName,@RequestParam(defaultValue="")String telNo,@RequestParam(defaultValue="")String idnumber,@RequestParam(defaultValue="")String email,@RequestParam(defaultValue="")String bankNumber,@RequestParam(defaultValue="")String address,@RequestParam(defaultValue="0")Double acBalance,String registerTime,@RequestParam(defaultValue="")String unitAddres,Users u,Account acc,Basicinfo basic){
		acc.setAcBalance(acBalance);
		acc.setBankNumber(bankNumber);
		acc.setRealName(realName);
		acc.setIdnumber(idnumber);
		acc.setUid(id);
		
		u.setId(id);
		u.setEmail(email);
		u.setRegisterTime(DateFormatUtil.dateParse(registerTime));
		u.setTelNo(telNo);
		
		basic.setUid(id);
		basic.setAddress(address);
		basic.setUnitAddres(unitAddres);
		try {
			PrintWriter pw=res.getWriter();
			if(uservice.updateVIP(u,acc,basic)){
				pw.write("success");
			}else{
				pw.write("fail");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 删除会员信息
	 */
	@RequestMapping("/delVip.do")
	public void delVip(HttpServletResponse res,Integer id){
		try {
			PrintWriter pw =res.getWriter();
			if(uservice.delVip(id)){
				pw.write("success");
			}else{
				pw.write("fail");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 验证手机
	 */
	@RequestMapping("/checkTel.do")
	public void checkTel(HttpServletResponse res,String telNo){
		try {
			PrintWriter pw =res.getWriter();
			int result=uservice.checkTel(telNo);
			if(result>0){
				pw.write("fail");
			}else{
				pw.write("success");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 验证邮箱
	 */
	@RequestMapping("/checkEmail.do")
	public void checkEmail(HttpServletResponse res,String email){
		try {
			PrintWriter pw =res.getWriter();
			int result=uservice.checkEmail(email);
			if(result>0){
				pw.write("fail");
			}else{
				pw.write("success");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 增加会员
	 */
	@RequestMapping("/addVip.do")
	public void addVip(HttpServletResponse res,Account acc,Users u,Basicinfo basic,String telNo,String realName,String idnumber,String email,String bankNumber,String address,String unitAddres,String userName,String password){
		u.setEmail(email);
		u.setRoleId(4);
		u.setRegisterTime(new Timestamp(System.currentTimeMillis()));
		u.setTelNo(telNo);
		u.setUserName(userName);
		u.setPassword(password);
		
		acc.setAcBalance(0.0);
		acc.setBankNumber(bankNumber);
		acc.setIdnumber(idnumber);
		
		basic.setAddress(address);
		basic.setUnitAddres(unitAddres);
		
		try {
			PrintWriter pw =res.getWriter();
			if(uservice.addVip(u, acc, basic)){
				pw.write("success");
			}else{
				pw.write("fail");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 检查用户名
	 */
	@RequestMapping("/chenkuName.do")
	public void chenkuName(HttpServletResponse res,String userName){
		try {
			PrintWriter pw =res.getWriter();
			int result=uservice.chenkuName(userName);
			if(result>0){
				pw.write("fail");
			}else{
				pw.write("success");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 修改密码
	 */
	@RequestMapping("/changePass.do")
	public void changePass(HttpServletResponse res,int id,String newPass){
		try {
			PrintWriter pw =res.getWriter();
			int result=uservice.changePass(newPass, id);
			if(result>0){
				pw.write("success");
			}else{
				pw.write("fail");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 注销
	 */
	@RequestMapping("/removeSession.do")
	public String removeSession(HttpSession session){
		session.invalidate();
		return "/jsp/houtai/login";
	}
	/*
	 * 添加管理员 1.代表用户名被占用 2.失败 0.成功
	 */
	@RequestMapping("/addAdmin.do")
	public void addAdmin(HttpServletResponse res,Users u){
		u.setRegisterTime(new Timestamp(System.currentTimeMillis()));
		u.setRoleId(4);
		try {
			PrintWriter pw =res.getWriter();
			int result=uservice.chenkuName(u.getUserName());
			if(result>0){
				pw.write("1");
			}else{
				int num=uservice.addVipUser(u);
				if(num>0){
					pw.write("0");
				}else{
					pw.write("2");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 前台用户登录
	 */
	@RequestMapping("/login.do")
	public void login(HttpServletResponse res,HttpSession session,String condition,String password){
		try {
			Users u=uservice.login(condition, password);
			PrintWriter pw=res.getWriter();
			if(u!=null){
				Users user=uservice.findVipById(u.getId());
				//System.out.println(user.getUserName()+"<><>");
				session.setAttribute("users", user);
				pw.write("success");
			}else{
				pw.write("fail");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 前台我的账户拦截未登录账户
	 */
	@RequestMapping("/myAcc.do")
	public String myAcc(HttpSession session){
		Object obj=session.getAttribute("users");
		Timestamp time99=new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf99=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now99=sdf99.format(time99);
		session.setAttribute("nowT", now99);
		
		if(obj!=null){
			Users u=(Users) obj;
			Body body=bodyService.getBody(u.getId());
			//String path=session.getServletContext().getRealPath("/");
			String str=body.getB_headPic();
			session.setAttribute("BasicinfoheadPic", str);
			System.out.println("图片地址《》《》《》《》："+str);
			System.out.println("昵称:"+body.getB_nickname()+"<><><><><><><>");
			//存储整体对象
			session.setAttribute("myBody", body);
			/******/
			//当前日期
			Calendar calendar = Calendar.getInstance();
			int day=calendar.get(Calendar.DAY_OF_MONTH);
			int year=calendar.get(Calendar.YEAR);
			int month=calendar.get(Calendar.MONTH)+1;
			//System.out.println(year+"calender/**********************/");
			/******/
			//存储最近回款日
			List<Investrecord> inList=body.getInvestList();
			//结清标识
			boolean fff=false;
			//投资月份标识
			boolean mmm=false;
			if(inList.size()==0){
				session.setAttribute("nextTime", "您还未进行投资");
			}else {
				for(int i=0;i<inList.size();i++){
					if(inList.get(i).getRebackType()==1){
						fff=true;
						if((inList.get(i).getItime().getMonth()+1)<month){
							mmm=true;
						}
					}
				}
			}	
			if(fff){
				if(mmm){
					if(day>10){
						session.setAttribute("nextTime",((month+1)>12?(year+1):year)+"年"+((month+1)>12?(month+1-12):(month+1))+"月"+"10日");
					}else{
						session.setAttribute("nextTime",  year+"年"+month+"月"+"10日");
					}
				}else{
					session.setAttribute("nextTime",((month+1)>12?(year+1):year)+"年"+((month+1)>12?(month+1-12):(month+1))+"月"+"10日");
				}
			}else{
				session.setAttribute("nextTime", "您还未进行投资");
			}
			
			//存储每个投资的回款计划
			List<Investrecord> list=body.getInvestList();
			Map<Integer,List<String>> strMap=new HashMap<Integer,List<String>>() ;
			for(int i=0;i<list.size();i++){
				List<String> strList=new ArrayList<String>();
				int investMonth=list.get(i).getItime().getMonth()+1;
				int investYear=list.get(i).getItime().getYear()+1900;
				int speriod=body.getStandMap().get(list.get(i).getSid()).getSperiod();
				for(int j=0;j<speriod;j++){
					investMonth++;
					if(speriod+investMonth>12){
						strList.add((investMonth>12?(investYear+1):investYear)+"年"+(investMonth>12?(investMonth-12):investMonth)+"月10日");
					}else{
						strList.add(investYear+"年"+investMonth+"月10日");
					}
				}
				strMap.put(list.get(i).getSid(), strList);
			}
			
			session.setAttribute("allBackPlan", strMap);
			//存储总资产
			
			//初始化总资产,账户余额与账户冻结资金相加
			double blockMoney=body.getA_blockMoney();
			double allMoney=body.getA_acBalance()+blockMoney;
			//初始化总投资本金
			double myMoney=0.00;
			//初始化 所有已归还本金
			double backMoney=0.00;
			//初始化所有已归还利息
			double backIncome=0.00;
			//初始化 所有利息
			double income=0.00;
			//月收益map
			Map<Integer,Double> onlyIncomeMap=new HashMap<Integer, Double>();
			//所有投资标号集合
			List<Integer> sidList=new ArrayList<Integer>();
			for(int k=0;k<list.size();k++){
				sidList.add(list.get(k).getSid());
				myMoney+=list.get(k).getImoney();
				backIncome+=list.get(k).getRealIncome();
				income+=list.get(k).getExpectIncome();
				//获得投资散标的年利率
				double srate=body.getStandMap().get(list.get(k).getSid()).getSrate()/100;
				//获得投资笔数
				int inestNum=list.get(k).getBidsNumber();
				//获得投资每月收益
				double onlyIncome=list.get(k).getImoney()*srate;
				
				onlyIncomeMap.put(list.get(k).getSid(), onlyIncome);
				//获得标的周转期限
				int speriod=body.getStandMap().get(list.get(k).getSid()).getSperiod();
				//获得单笔投资每月应还本金
				double onlyMoney=list.get(k).getImoney()/speriod;
				//获得已还期数
				int backNum=(int) (list.get(k).getRealIncome()/onlyIncome);
				//获得已还本金
				backMoney+=onlyMoney*backNum;
				//获得本金加利息
				allMoney+=list.get(k).getImoney()+list.get(k).getExpectIncome();
			}
			double aMoney=0.00;//待收本息
			double bMoney=0.00;//已收本息
			aMoney=myMoney-backMoney+income-backIncome;
			aMoney=(double)Math.round(aMoney*100)/100;
			session.setAttribute("aMoney", aMoney);
			allMoney=(double)Math.round(allMoney*100)/100;
			bMoney=allMoney-aMoney;
			bMoney=(double)Math.round(bMoney*100)/100;
			session.setAttribute("allMoney", allMoney);
			session.setAttribute("bMoney", bMoney);
			session.setAttribute("sidList", sidList);
			//存储投资本金
			myMoney=(double)Math.round(myMoney*100)/100;
			session.setAttribute("myMoney", myMoney);
			//存储已回本金
			backMoney=(double)Math.round(backMoney*100)/100;
			session.setAttribute("backMoney", backMoney);
			//存储利息
			income=(double)Math.round(income*100)/100;
			session.setAttribute("income", income);
			//存储已还利息
			backIncome=(double)Math.round(backIncome*100)/100;
			session.setAttribute("backIncome", backIncome);
			//投资待满标金额
			//冻结金额
			blockMoney=(double)Math.round(blockMoney*100)/100;
			session.setAttribute("blockMoney", blockMoney);
			//2017和2018年所有利息
			
			double income2017=0.00;//初始化2017所有利息
			double realIncome2017=0.00;//初始化2017已经收到利息
			double income2018=0.00;//初始化2018所有利息
			double realIncome2018=0.00;//初始化2018已经收到利息
			for(int m=0;m<sidList.size();m++){
				List<String> tempList= strMap.get(sidList.get(m));
				int num2017=0;
				int allNum2017=0;
				int num2018=0;
				int allNum2018=0;
				for(int i=0;i<tempList.size();i++){
					String time=tempList.get(i);
					time=time.replace("年", "-");
					time=time.replace("月", "-");
					time=time.replace("日", "");
					int indexOne=time.indexOf("-");
					int indexTwo=time.lastIndexOf("-");
					//System.out.println(time+"回款计划*****************");
					String strYear=time.substring(0, 4);
					//System.out.println(strYear+"截取年份*****************");
					if("2017".equals(time.substring(0, indexOne))){
						allNum2017++;
						if(year==2017&&Integer.parseInt(time.substring(indexOne+1, indexTwo))<month){
							num2017++;
						}else if(Integer.parseInt(time.substring(indexOne+1, indexTwo))==month&&Integer.parseInt(time.substring(indexTwo+1))<day){
							num2017++;
						}
					}
					if("2018".equals(time.substring(0, indexOne))){
						allNum2018++;
						if(year==2018&&Integer.parseInt(time.substring(indexOne+1, indexTwo))<month){
							num2018++;
						}else if(Integer.parseInt(time.substring(indexOne+1, indexTwo))==month&&Integer.parseInt(time.substring(indexTwo+1))<day){
							num2018++;
						}
					}
				}
				//System.out.println("*allNum2017*"+allNum2017+"*allNum2018*"+allNum2018+"*num2017*"+num2017+"*num2018*"+num2018);
				income2017+=onlyIncomeMap.get(sidList.get(m))*allNum2017;
				realIncome2017+=onlyIncomeMap.get(sidList.get(m))*num2017;
				
				income2018+=onlyIncomeMap.get(sidList.get(m))*allNum2018;
				realIncome2018+=onlyIncomeMap.get(sidList.get(m))*num2018;
			}
			income2017=(double)Math.round(income2017*100)/100;
			//System.out.println(income2017+"income2017------------------------->");
			session.setAttribute("income2017", income2017);
			income2018=(double)Math.round(income2018*100)/100;
			//System.out.println(income2018+"income2018------------------------->");
			session.setAttribute("income2018", income2018);
			
			//2017和2018年所有收到的利息
			realIncome2017=(double)Math.round(realIncome2017*100)/100;
			session.setAttribute("realIncome2017", realIncome2017);
			realIncome2018=(double)Math.round(realIncome2018*100)/100;
			session.setAttribute("realIncome2018", realIncome2018);
			/*//存储还款记录安排map
			double justIncom=0.0;//初始化应还所有利息
			List<Loadrecord> loadList=  body.getLoadList();*/
			//for(Loadrecord aa:loadList){
			//	System.out.println(aa.getId()+"loadList/*******************/");
		//	}
			/*for(int n=0;n<loadList.size();n++){
				double lmoney= loadList.get(n).getLoadMoney();//获取当前借款金额
				double lilv=loadList.get(n).getLoadRate()/100;//获取当前借款利率
				int date=loadList.get(n).getLoadPeriod();//获取当前借款期限
				justIncom+=(lmoney*lilv*date);
			}*/
			
			/*
			Map<Integer,List<String>> backMap=new HashMap<Integer,List<String>>() ;
			for(int q=0;q<loadList.size();q++){
				if(loadList.get(q).getStatus()==1&&loadList.get(q).getLoadStatus()==1){//判断是否是通过审核的
					List<String> strList=new ArrayList<String>();//初始化还款计划集合
					int investMonth=loadList.get(q).getLoadTime().getMonth()+1; //借款月份
					int investYear=loadList.get(q).getLoadTime().getYear()+1900;	//借款年份
					int speriod=loadList.get(q).getLoadPeriod(); //借款期限
					for(int j=0;j<speriod;j++){
						if(speriod+investMonth>12){
							investMonth++;
							strList.add((investMonth>12?(investYear+1):investYear)+"年"+(investMonth>12?(investMonth-12):investMonth)+"月5日");
						}else{
							investMonth++;
							strList.add(investYear+"年"+investMonth+"月5日");
						}
					}
					backMap.put(loadList.get(q).getId(), strList);
				}
			}*/
		//	System.out.println(backMap.toString()+"/backMap******************************/");
			
			//2017和2018年所有应还利息
			/*double back2017=0.00;//初始化2017所有应还利息
			double realBack2017=0.00;//初始化2017已还利息
			double back2018=0.00;//初始化2018所有应还利息
			double realBack2018=0.00;//初始化2018已还利息
			double allLoadMoney=0.00;//初始化所有借入的金额
*/			//List<BackPlan> bpList=new ArrayList<BackPlan>(); //初始化还款计划对象集合
			/*for(int m=0;m<loadList.size();m++){
				
				List<String> tempList= backMap.get(loadList.get(m).getId());
			//	System.out.println(tempList+"<****************************>");
				double lmoney= loadList.get(m).getLoadMoney();//获取当前借款金额
				allLoadMoney+=lmoney;
				double lilv=loadList.get(m).getLoadRate()/100;//获取当前借款利率
				int date=loadList.get(m).getLoadPeriod();//获取当前借款期限
*/				
			//	BackPlan bp=new BackPlan();
			//	bp.setLid(loadList.get(m).getId());
			//	bp.setBackTimes(tempList);
			//	bp.setBackMoney(Math.floor(lmoney/date));
			//	bp.setBackIncome(Math.floor(lmoney*lilv));
			//	bp.setBackMoneys(backMoneys);
			//	bpList.add(bp);
				/*int num2017=0;
				int allNum2017=0;
				int num2018=0;
				int allNum2018=0;
				for(int i=0;i<tempList.size();i++){
					String time=tempList.get(i);
					time=time.replace("年", "-");
					time=time.replace("月", "-");
					time=time.replace("日", "");
					System.out.println(time+"time*--------------------------------->");
					int indexOne=time.indexOf("-");
					System.out.println(indexOne+"indexOne*--------------------------------->");
					int indexTwo=time.lastIndexOf("-");
					System.out.println(indexTwo+"indexTwo*--------------------------------->");
					if("2017".equals(time.substring(0, indexOne))){
						allNum2017++;
						if(year==2017&&Integer.parseInt(time.substring(indexOne+1, indexTwo))<month){
							num2017++;
						}else if(Integer.parseInt(time.substring(indexOne+1, indexTwo))==month&&Integer.parseInt(time.substring(indexTwo+1))<day){
							num2017++;
						}
					}
					if("2018".equals(time.substring(0, indexOne))){
						allNum2018++;
						if(year==2018&&Integer.parseInt(time.substring(indexOne+1, indexTwo))<month){
							num2018++;
						}else if(Integer.parseInt(time.substring(indexOne+1, indexTwo))==month&&Integer.parseInt(time.substring(indexTwo+1))<day){
							num2018++;
						}
					}
				}
				back2017+=lmoney*lilv*allNum2017;
				realBack2017+=lmoney*lilv*num2017;
				
				back2018+=lmoney*lilv*allNum2018;
				realBack2018+=lmoney*lilv*num2018;
			}
			justIncom=Math.floor(justIncom);
			session.setAttribute("justIncom", justIncom);
			back2017=Math.floor(back2017);
			session.setAttribute("back2017", back2017);
			back2018=Math.floor(back2018);
			session.setAttribute("back2018", back2018);
			//2017年和2018年已还利息
			realBack2017=Math.floor(realBack2017);
			session.setAttribute("realBack2017", realBack2017);
			realBack2018=Math.floor(realBack2018);
			session.setAttribute("realBack2018", realBack2018);*/
			//所有充值金额和
			List<Rechargerecord> rechargeList= body.getRechargeList(); //拿到所有的充值记录
			double allRecharge=0.00;//初始化所有的充值金额
			double failMoney=0.00;//所有失败的充值
			for(int g=0;g<rechargeList.size();g++){
				if(rechargeList.get(g).getChargeStatus()==0){
					allRecharge+=rechargeList.get(g).getChargeMoney();
				}else{
					failMoney+=rechargeList.get(g).getChargeMoney();
				}
			}
			allRecharge=Math.floor(allRecharge);
			session.setAttribute("failMoney", failMoney); //失败的充值
			session.setAttribute("allRecharge", allRecharge);
		
			
			//待收款笔数
			int retrunNum=0;
			//近一个月待收本息
			double nextOne=0.00;
			//近3个月待收本息
			double nextThree=0.00;
			//近半年待收本息
			double nextSix=0.00;
			
			long now=System.currentTimeMillis();
			for(int i=0;i<sidList.size();i++){
				int sid= sidList.get(i); //拿到投资标号
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
					
					double income1=imoney*lilv;
					double money=imoney/qixian;
					boolean flag=false;//定义还清标识
					for(int j=0;j<tempList.size();j++){
						ReturnPlan re=new ReturnPlan();
						re.setReturnIncome(income1);
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
					}
					if(num>1){
						nextOne+=(income1+money)*1;
					}else{
						nextOne+=(income1+money)*num;
					}
					
					if(num>3){
						nextThree+=(income1+money)*3;
					}else{
						nextThree+=(income1+money)*num;
					}
					
					if(num>6){
						nextSix+=(income1+money)*6;
					}else{
						nextSix+=(income1+money)*num;
					}
					
					if(flag){
						retrunNum++;
					}
					//returnMap.put(sid,ilist);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			//double myMoney= (double) session.getAttribute("myMoney");//存储投资本金 
			//double backMoney= (double) session.getAttribute("backMoney");//存储已回本金
			//double myIncome= (double) session.getAttribute("income");//存储利息
			//double backIncome= (double) session.getAttribute("backIncome");//存储已还利息
			nextOne=(double)Math.round(nextOne*100)/100;
			nextThree=(double)Math.round(nextThree*100)/100;
			nextSix=(double)Math.round(nextSix*100)/100;
			session.setAttribute("retrunNum", retrunNum);//待收投资笔数
			session.setAttribute("nextOne", nextOne);//未来一个月待收本息
			session.setAttribute("nextThree", nextThree);//未来三个月待收本息
			session.setAttribute("nextSix", nextSix);//未来六个月待收本息
			double myQian=myMoney-backMoney+income-backIncome;
			myQian=(double)Math.round(myQian*100)/100;
			session.setAttribute("myQian", myQian);
			
			
			
		/****************************借款及还款session****************************************/
			//近一个月待还本息
			double backnextOne=0.00;
			//近3个月待还本息
			double backnextThree=0.00;
			//近半年待还本息
			double backnextSix=0.00;
			//待还款笔数
			int mustNum=0;
			//待还金额
			double mustMoney=0.00;
			//待还本金
			double mustLmoney=0.00;
			//待还利息
			double mustIncom=0.00;
			//所有借款金额
			double allLoadMoney=0.00;
			//2017年应还利息
			double back2017 =0.00;
			//2018年应还利息
			double back2018=0.00;
			//2017年已还利息
			double realBack2017=0.00;
			//2018年已还利息
			double realBack2018=0.00;
			//共需归还利息
			double justIncom=0.00;
			//最近还款日(拿到所有的借款记录，判断审核通过的借款记录，拿到id。拿到所有的还款计划
			// 再判断还款计划的还款状态，只要有未还款的对象,就取最近的还款日)
			List<Loadrecord>  loadList=body.getLoadList();

			for(int i =0;i<loadList.size();i++){
				boolean flag=false;//未还标识
				int num=0;//未还期数
				double bmoney=0.00;
				double bincome=0.00;
				int lid=loadList.get(i).getId();
				if(loadList.get(i).getStatus()==1&&loadList.get(i).getLoadStatus()==1){
					allLoadMoney+=loadList.get(i).getLoadMoney();
					justIncom+=loadList.get(i).getLoadMoney()*loadList.get(i).getLoadRate()/100*loadList.get(i).getLoadPeriod();
					try {
						List<BackPlan> 	blist = bservice.findBackPlan(loadList.get(i).getId(),null, null);
						for(int j=0;j<blist.size();j++){
							BackPlan bp=blist.get(j);
							bmoney=bp.getBackMoney();
							bincome=bp.getBackIncome();
							Timestamp btime=bp.getBackTime();
							if((btime.getYear()+1900)==2017){
								back2017+=bincome;
								if(bp.getBstyle()==0){
									realBack2018+=bincome;
								}
							}
							if((btime.getYear()+1900)==2018){
								back2018+=bincome;
								if(bp.getBstyle()==0){
									realBack2018+=bincome;
								}
							}
							
							
							if(blist.get(j).getBstyle()==1){
								flag=true;
								num++;
							}
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					if(flag){
						mustNum++;
						mustLmoney+=bmoney*num;
						mustIncom+=bincome*num;
						backnextOne+=bmoney+bincome;
						if(num>=3){
							backnextThree+=(bmoney+bincome)*3;
						}else{
							backnextThree+=(bmoney+bincome)*num;
						}
						
						if(num>=6){
							backnextSix+=(bmoney+bincome)*6;
						}else{
							backnextSix+=(bmoney+bincome)*num;
						}
					}
				}
			}
			mustMoney=mustLmoney+mustIncom;
			
			
			if(mustNum>0){
				if(day>5){
					session.setAttribute("nextBackTime", ((month+1)>12?(year+1):year)+"年"+((month+1)>12?(month+1-12):(month+1))+"月"+"5日");
				}else{
					session.setAttribute("nextBackTime",  year+"年"+month+"月"+"5日");
				}
			}else{
				session.setAttribute("nextBackTime", "暂无还款记录");
			}
			backnextOne=(double)Math.round(backnextOne*100)/100;
			backnextThree=(double)Math.round(backnextThree*100)/100;
			backnextSix=(double)Math.round(backnextSix*100)/100;
			session.setAttribute("backnextOne", backnextOne);//近一个月待还本息
			session.setAttribute("backnextThree", backnextThree);//近3个月待还本息
			session.setAttribute("backnextSix", backnextSix);//近半年待还本息
			//待还款总金额
			mustMoney=(double)Math.round(mustMoney*100)/100;
			session.setAttribute("mustMoney", mustMoney);
			//待还所有利息
			justIncom=(double)Math.round(justIncom*100)/100;
			session.setAttribute("justIncom", justIncom);
			//待还款笔数
			session.setAttribute("mustNum", mustNum);
			//一个月待还本金
			mustLmoney=(double)Math.round(mustLmoney*100)/100;
			session.setAttribute("mustLmoney", mustLmoney);
			//一个月待还利息
			mustIncom=(double)Math.round(mustIncom*100)/100;
			session.setAttribute("mustIncom", mustIncom);
			//所有借入金额
			allLoadMoney=Math.floor(allLoadMoney);
			session.setAttribute("allLoadMoney", allLoadMoney);
			//back2017 2017年应还利息
			back2017=(double)Math.round(back2017*100)/100;
			session.setAttribute("back2017", back2017);
			//back2018 2018年应还利息
			back2018=(double)Math.round(back2018*100)/100;
			session.setAttribute("back2018", back2018);
			//realBack2017 2017年已还利息
			realBack2017=(double)Math.round(realBack2017*100)/100;
			session.setAttribute("realBack2017", realBack2017);
			//realBack2018 2018年已还利息
			realBack2018=(double)Math.round(realBack2018*100)/100;
			session.setAttribute("realBack2018", realBack2018);
			
			
			return "/jsp/member/account_default";
		}else{
			return "redirect:/jsp/homepage/login.jsp";
		}
	}
	
	/*
	 * 检查前台登录用户名
	 */
	@RequestMapping("/checkLoginName.do")
	public void checkLoginName(String condition,HttpServletResponse res){
		try {
			PrintWriter pw =res.getWriter();
			int result=uservice.checkLoginName(condition);
			if(result==1){
				pw.write("success");
			}else if(result==0){
				pw.write("fail");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	 * 注册
	 */
	@RequestMapping("/register.do")
	public void register(Users u,Account a,Basicinfo b,HttpServletResponse res){
		u.setRoleId(4);
		u.setUserName(u.getEmail());
		u.setUserName(u.getEmail());
		u.setRegisterTime(new Timestamp(System.currentTimeMillis()));
		
		try {
			PrintWriter pw =res.getWriter();
			if(uservice.register(u, a, b)){
				pw.write("success");
			}else{
				pw.write("fail");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 获取随机数
	 * @return
	 */
	@RequestMapping("/login_num.do")
	public void random_Login(String email,HttpServletResponse res){
		try {
			Integer num= PublicUtils.getRandom(email);
			System.out.println("发送到手机号码为"+email+"验证码是++++++++++++++"+num);
			PrintWriter pw=res.getWriter();
			pw.write(num+"");
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/yanzhen.do")
	public void yanzhen(HttpServletRequest rq,HttpServletResponse res){		
		try {
			PrintWriter pw = res.getWriter();
			Users user=(Users) rq.getSession(false).getAttribute("users");
			if(user==null){
				pw.write("0");		
			}else{
				pw.write(JSON.toJSONString(user));	
			}
		} catch (IOException e) {			
			e.printStackTrace();
		}
	
	}
}
