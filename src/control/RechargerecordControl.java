package control;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.ParseException;
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

import entity.Body;
import entity.Rechargerecord;
import service.RechargerecordService;
import util.DateFormatUtil;

@Controller
public class RechargerecordControl {

	@Resource
	private RechargerecordService rservice;
	
	/*
	 * 有条件查找所有充值记录
	 */
	@RequestMapping("/findReAll.do")
	public void findReAll(HttpServletResponse res,@RequestParam(defaultValue="1")int pageno,@RequestParam(defaultValue="")String minTime, @RequestParam(defaultValue="")String maxTime, @RequestParam(defaultValue="")String realName){
		try {
			PrintWriter pw=res.getWriter();
			List<Rechargerecord> rlist;
			if(minTime!=null&&!minTime.trim().equals("")){
				rlist=rservice.findReAll(pageno, DateFormatUtil.dateParse(minTime), DateFormatUtil.dateParse(maxTime), realName);
			}else{
				rlist=rservice.findReAll(pageno, null, null, realName);
			}
			pw.write(JSONObject.toJSONString(rlist));
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 获得条数
	 */
	@RequestMapping("/getReCount.do")
	public void getReCount(HttpServletResponse res,@RequestParam(defaultValue="")String minTime, @RequestParam(defaultValue="")String maxTime, @RequestParam(defaultValue="")String realName){
		try {
			PrintWriter pw=res.getWriter();
			int result;
			if(minTime!=null&&!minTime.trim().equals("")){
				result=rservice.getReCount(DateFormatUtil.dateParse(minTime), DateFormatUtil.dateParse(maxTime), realName);
			}else{
				result=rservice.getReCount(null, null, realName);
			}
			pw.write(result+"");
			pw.flush();
			pw.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/findReById.do")
	public void findReById(HttpServletResponse res,int id){
		try {
			PrintWriter pw =res.getWriter();
			pw.write(JSONObject.toJSONString(rservice.findReById(id)));
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/findRechargeList.do",produces="application/json; charset=utf-8")
	@ResponseBody
	public String findRechargeList(HttpSession session,@RequestParam(defaultValue="")String start,@RequestParam(defaultValue="")String end) {
		Body body=(Body) session.getAttribute("myBody");
		int aid=body.getA_id();
		
		
		List<Rechargerecord> rlist= rservice.getRecharBodyByAid(aid)==null?
				new ArrayList<Rechargerecord>():rservice.getRecharBodyByAid(aid);
		
		if(start==null||start.trim().equals("")){
			return JSONObject.toJSONString(rlist);
		}else if(start!=null&&!start.trim().equals("")&&end!=null&&!end.trim().equals("")){
			SimpleDateFormat sdf2=new SimpleDateFormat("yyyy-MM-dd");
			try {
				Timestamp s= new Timestamp(sdf2.parse(start).getTime());
				Timestamp e=new Timestamp(sdf2.parse(end).getTime());
				List<Rechargerecord> relist =rservice.getRechargeListByAid(aid, s, e)==null?
						new ArrayList<Rechargerecord>():rservice.getRechargeListByAid(aid,s,e);
				return JSONObject.toJSONString(relist);
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
		}
		return "";
	}
}
