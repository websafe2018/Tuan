package control;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import entity.Account;
import service.AccountService;

@Controller
public class AccountControl {

	@Resource
	private AccountService aservice;
	
	/*
	 * 验证身份证是否唯一
	 */
	@RequestMapping("/checkIdNum.do")
	public void checkIdNum(HttpServletResponse res,String idnumber){
		try {
			PrintWriter pw =res.getWriter();
			int result=aservice.checkIdNum(idnumber);
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
	 * 验证银行卡是否唯一
	 */
	@RequestMapping("/checkBank.do")
	public void checkBank(HttpServletResponse res,String bankNumber){
		try {
			PrintWriter pw =res.getWriter();
			int result=aservice.checkBank(bankNumber);
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
	
	//查找年龄
	@RequestMapping("/findAccountNumber.do")
	@ResponseBody
	public String  findAccountNumber(HttpServletResponse res){
		try {
			
			Date date=new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String startTime = sdf.format(date);
			 startTime =startTime.replace("-", "");
			 
			 
			 
			List<Account> list =aservice.findAccountNumber();
			int a=Integer.parseInt(startTime.substring(0, 4));//当前年数字表示
			int b=0;// 当前身份证号码年数字
			int [] c=new int[list.size()];//当前年数字减去身份证号码数字
			for (int i=0;i<list.size();i++) {
					b=Integer.parseInt(list.get(i).getIdnumber().substring(6,10));
					c[i]=a-b;	
			}
			return JSON.toJSONString(c);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
