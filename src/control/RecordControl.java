package control;

import java.io.File;
import java.io.IOException;
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
import entity.Record;
import service.RecordService;
import util.ExcelUtil;

@Controller
public class RecordControl {

	@Resource
	private RecordService service;
	
	/*
	 * 导出所有交易记录的excel
	 */
	@RequestMapping("/downloadExcel.do")
	public void downloadExcel(HttpServletResponse res,HttpSession session){
		Object obj=session.getAttribute("myBody");
		//File file = new File("D:/交易记录.xlsx");
		if(obj!=null){
			
			Body body=(Body) obj;
			List<Record> rlist=service.findRecordAllByUid(body.getId())==null?
					new ArrayList<Record>():service.findRecordAllByUid(body.getId());
			System.out.println(rlist.get(0).getrType());
			ArrayList<List<Object>> result=new ArrayList<List<Object>>();
			List<Object> thlist=new ArrayList<Object>();
			thlist.add("交易时间");
			thlist.add("交易类型");
			thlist.add("交易金额");
			thlist.add("交易前金额");
			thlist.add("交易备注");
			result.add(thlist);
			for(int i=0;i<rlist.size();i++){
				List<Object> olist=new ArrayList<Object>();
				Record r=rlist.get(i);
				olist.add(r.getrTime());
				olist.add(r.getrType());
				olist.add(r.getrMoney());
				olist.add(r.getBlance());
				olist.add(r.getRemarks()==null?"":r.getRemarks());
				result.add(olist);
			}
			//xlsx
			ExcelUtil.writeExcel(result,"D:/交易记录.xls");
			System.out.println("写入完成~~！");
			try {
				res.getWriter().write("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	/*
	 * 查询所有记录
	 */
	@RequestMapping(value="/findReAll.do",produces="application/json; charset=utf-8")
	@ResponseBody
	public String findReAll(HttpSession session,@RequestParam(defaultValue="")String attrval,@RequestParam(defaultValue="")String rtype,@RequestParam(defaultValue="")String rTime){
		Body body=(Body)session.getAttribute("myBody");
		if(body!=null){
			int uid=body.getId();
			try {
				List<Record> rlist= service.findReAll(uid, attrval, rtype, rTime);
				return JSONObject.toJSONString(rlist);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
