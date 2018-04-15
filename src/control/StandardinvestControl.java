package control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import entity.Standardinvest;
import service.StandardinvestService;
import util.DateFormatUtil;

@Controller
public class StandardinvestControl {

	@Resource
	private StandardinvestService ser;
	@RequestMapping(value="/findStandardinvest.do",produces="application/json; charset=utf-8")
	public String findStandardinvest(int id,Model m){
		try {			
			m.addAttribute("standardinvest", ser.findStandardinvest(id));
		} catch (Exception e) {		
			e.printStackTrace();
		}
		return "/jsp/houtai/updateStan";
	}
	@RequestMapping(value="/findStandardinvestAll.do",produces="application/json; charset=utf-8")
	@ResponseBody
	public String findStandardinvestAll(Standardinvest stan,@RequestParam(defaultValue="1")int pageno){
		System.out.println(JSON.toJSONString(ser.findStandardinvestAll(stan,pageno)));
		return JSON.toJSONString(ser.findStandardinvestAll(stan,pageno));
	}
	@RequestMapping("/delStandardinvest.do")
	@ResponseBody
	public String delStandardinvest(int id){
		return JSON.toJSONString(ser.delStandardinvest(id));	
	}
	
	@RequestMapping(value="/getcount.do",produces="application/json; charset=utf-8")
	@ResponseBody
	public String getcount(Standardinvest stan){
		
		return JSON.toJSONString(ser.getcount(stan));
	}
	@RequestMapping("/updateStandardinvest.do")	
	@ResponseBody
	public String updateStandardinvest(Standardinvest stan) {
		try {
			if(ser.updateStandardinvest(stan)==1){
				return"1";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "0";
	}
	
	@RequestMapping("/addStandardinvest.do")	
	@ResponseBody
	public String addStandardinvest(Standardinvest stan) {
		try {
			if(ser.addStandardinvest(stan)==1){
				return"1";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "0";
	}
	
	@RequestMapping(value="/findStandardInvestTime.do",produces="application/json; charset=utf-8")
	@ResponseBody
	public String findStandardInvestTime(Integer pid,Integer tys,String s,String e) throws Exception{
		if(s!=null&&!s.trim().equals("")&&e!=null&&!e.trim().equals("")){
			return JSON.toJSONString(ser.findStandardInvestTime(pid,tys,DateFormatUtil.dateParse(s), DateFormatUtil.dateParse(e)));
		}else{
			return JSON.toJSONString(ser.findStandardInvestTime(pid,tys,null,null));
		}
	}
	
	// 按年化利率 、投资期限 、投标进度 、发标时间排序，参数代表排序类型
		@RequestMapping(value="/orderStandardinvestAll.do",produces="application/json; charset=utf-8")
		@ResponseBody
		public String orderStandardinvestAll(Standardinvest stan,@RequestParam(defaultValue="1")Integer pageno, Integer group, Integer order) throws Exception{	
			return JSON.toJSONString(ser.orderStandardinvestAll(stan, pageno, group, order));	
		}
		//投资
		@RequestMapping("/touzi.do")
		@ResponseBody
		public String touzi(Integer invId,Integer uid,Double invSprice,Integer invNum){	
			
			return JSON.toJSONString(ser.touzi(invId, uid, invSprice, invNum));
		}
	
}
