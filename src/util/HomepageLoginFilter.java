package util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomepageLoginFilter implements Filter{
	private String excludedPage;
    private String[] excludedPages;
   // private ServletContext context;
    private String str;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest re=(HttpServletRequest) arg0;
		HttpServletResponse res=(HttpServletResponse) arg1;
		Object obj= re.getSession().getAttribute("users");
		if(obj!=null){
			arg2.doFilter(arg0, arg1);
		}else{
			//res.sendRedirect("/jsp/houtai/login.jsp");
			re.getRequestDispatcher("/jsp/homepage/login.jsp").forward(arg0, arg1);
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {}

}
