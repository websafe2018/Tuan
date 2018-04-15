package control;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;

import entity.Body;
import entity.Investrecord;
import entity.Standardinvest;

@Controller
public class InvestrecordControl {

	
	@RequestMapping("/findInvestAll.do")
	public void findInvestAll(HttpSession session,HttpServletResponse res){
		Object obj=session.getAttribute("myBody");
		if(obj!=null){
			Body body=(Body) obj;
			List<Investrecord> iList=body.getInvestList();
			Map<Integer,Standardinvest> smap=body.getStandMap();
			for(int i=0;i<iList.size();i++){
				Standardinvest s=smap.get(iList.get(i).getSid());
				Investrecord invest=iList.get(i);
				invest.setSname(s.getSname());
				invest.setSrate(s.getSrate());
				invest.setSperiod(s.getSperiod());
				invest.setSrepayType(s.getSrepayType());
			}
			try {
				res.getWriter().write(JSONObject.toJSONString(iList));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	
}
