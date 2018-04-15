package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
/**
 * 
 * Users控制层
 *
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import entity.Account;
import entity.Basicinfo;
import entity.Loadrecord;
import entity.Users;
import service.AccountService;
import service.BasicinfoService;
import service.LoadrecordService;
import util.DateFormatUtil;
@Controller
public class LoadrecordControl {

	@Resource
	private LoadrecordService lservice;
	@Resource
	private AccountService aservice;
	@Resource
	private BasicinfoService bservice;
	
	/*
	 * 查找所有用户
	 */
	@RequestMapping("/jiedai.do")
	public void findLoadrecordByjiedai(Integer loadStatus, Integer loadPeriod, String realName, Integer pageno,HttpServletResponse res){
		
		
		try {
			List<Loadrecord> list= lservice.findLoadrecordByjiedai(loadStatus, loadPeriod, realName, pageno);
			if(list!=null){
				
				res.getWriter().write(JSONObject.toJSONString(list));
				System.out.println("单选框的值是："+loadStatus);
				System.out.println("下拉框的值是："+loadPeriod);
				System.out.println("当前页是："+pageno);
				System.out.println("总条数为："+list.size());
				
				
				
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("查询借款失败------------------------");
		}
		
		
		
	}
	
	
	@RequestMapping("/getcount.do")
	public void getCount(Integer loadStatus, Integer loadPeriod, String realName,HttpServletResponse res){
		
		try {
			int i=lservice.getCount(loadStatus, loadPeriod, realName);
			if(i>0){
				
				res.getWriter().write(JSONObject.toJSONString(i));
				System.out.println("条数"+i);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("查询页数失败------------------------");
		}
		
	}
	
	
	@RequestMapping("/jiedaibyid.do")
	
	public String findLoadrecordByid(int id,HttpSession session,HttpServletResponse r){
		
		try {
			Loadrecord l=lservice.findLoadrecordByid(id);
			if(l!=null){
				
				session.setAttribute("Loadrecord", l);
				return "/jsp/houtai/connoisseurupdata";
				
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("查询个人借款记录失败------------------------");
		}
		
		return null;
		
	}
	
	@RequestMapping("/updateLoadrecord.do")
	public void updateLoadrecordByuid(HttpServletResponse res,  Integer status, Integer loadStatus, Integer id,HttpServletResponse r,HttpSession session){
		try {
			PrintWriter pw= res.getWriter();
			if(lservice.updateLoadrecordByuid(status, loadStatus, id)){
				System.out.println("更新成功");
				Loadrecord l=lservice.findLoadrecordByid(id);
				session.setAttribute("Loadrecord", l);
				pw.write("success");
			}else{
				pw.write("fail");
			}
			pw.flush();
			pw.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/*@RequestMapping("/updateLoadrecord.do")
	public void updateLoadrecordByuid(Integer status, Integer loadStatus, Integer uid,HttpServletResponse r){
		try {
			if(lservice.updateLoadrecordByuid(status, loadStatus, uid)){
				Loadrecord l=lservice.findLoadrecordByid(uid);
				
				r.getWriter().write(JSONObject.toJSONString(l));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}*/
	
	
	
	
	
	@RequestMapping("/deleteLoadrecord.do")
	public void deleteLoadrecordByuid(int id,HttpServletResponse r){
		try {
			if(lservice.deleteLoadrecordByuid(id)){
				r.getWriter().write("0");//删除成功
			}else{
				r.getWriter().write("1");//删除失败
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/Creditloan.do")
	public void Creditloan(Loadrecord loadrecord,Account account, Basicinfo basicinfoe,
			String address ,String gender,String telNo,String realame,
			Integer pid,String loadType,int loadMoney,HttpServletResponse r,
			HttpSession session
			){
		
		Users  user= (Users)(session.getAttribute("users"));
		if(user!=null){
			
		int uid=user.getId();
		
		try {
				double loadMoney1=(double)loadMoney;
				Account a=aservice.findAccByUidtwo(uid);
				Basicinfo  b=bservice.findBasicByUidtwo(uid);
				//Loadrecord l=lservice.findLoadrecordByid(uid);
				boolean aok=false;
				boolean bok=false;
				boolean lok=false;
				if(a!=null){
					account.setUid(uid);
					account.setRealName(realame);
					aok=aservice.updateAccountByUid(account);
					
				}else{
					account.setUid(uid);
					account.setRealName(realame);
					aok=aservice.addAccount(account);
				}
				
				if(b!=null){
					basicinfoe.setUid(uid);
					basicinfoe.setAddress(address);
					basicinfoe.setGender(gender);
					bok=bservice.updateBasiByUidtwo(basicinfoe);
				}else{
					basicinfoe.setUid(uid);
					basicinfoe.setAddress(address);
					basicinfoe.setGender(gender);
					bok=bservice.addBasicinfo(basicinfoe);
				}
				loadrecord.setUid(uid);
				loadrecord.setLoadType(loadType);
				loadrecord.setTelNo(telNo);
				loadrecord.setLoadRate(10.00);
				loadrecord.setLoadMoney(loadMoney1);
				loadrecord.setOrderId("GWY"+System.currentTimeMillis());
				loadrecord.setLoadTime(new Timestamp(System.currentTimeMillis()));
				loadrecord.setLoadStatus(0);
				loadrecord.setLoadPeriod(10);
				loadrecord.setRid(1);
				loadrecord.setStatus(0);
				lok=lservice.addLoad(loadrecord)>0;
				
				if(aok==true&&bok==true&&lok==true){
					r.getWriter().write("1");//成功
				}else{
					r.getWriter().write("0");//失败
				}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}else{
			try {
				r.getWriter().write("2");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//未登录
		}
	}
	// 查找借贷总金额
		@RequestMapping(value="/findLoadrecordAll.do",produces="application/json; charset=utf-8")
		@ResponseBody
		public String findLoadrecordAll(){
			try {
				return JSONObject.toJSONString(lservice.findLoadrecordAll());
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return null;
			
			
			
			
		}
		//根据项目类型，借款方式，时间来查询；
		@RequestMapping(value="/findLoadrecordAllTime.do",produces="application/json; charset=utf-8")
		@ResponseBody
		public String findLoadrecordAllTime(Integer pid,String loadtype,Integer status,String s,String e){
			try {
				if(s!=null&&!s.trim().equals("")&&e!=null&&!e.trim().equals("")){
					return JSONObject.toJSONString(lservice.findLoadrecordAllTime(pid, loadtype,status,DateFormatUtil.dateParse(s), DateFormatUtil.dateParse(e)));
		
				}else{
					
					return JSONObject.toJSONString(lservice.findLoadrecordAllTime(pid, loadtype,status, null, null));
				}
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			return null;
		}
		
		@RequestMapping("/findjilu.do")
		public void findjilu(int uid,HttpServletResponse r){
			try {
				List<Loadrecord> l=lservice.findLoadrecordByjilu(uid);
				
				if(l!=null){
					r.getWriter().write(JSONObject.toJSONString(l));
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
}
