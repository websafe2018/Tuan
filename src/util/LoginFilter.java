package util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFilter implements Filter{
	private String excludedPage;
    private String[] excludedPages;
   // private ServletContext context;
    private String str;

	@Override
	public void destroy() {
		 
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest re=(HttpServletRequest) arg0;
		HttpServletResponse res=(HttpServletResponse) arg1;
		//System.out.println(str);
		 // 定义表示变量 并验证用户请求URL 是否包含不过滤路径
        boolean flag = false;
        //请求相对路径
        String rePath=re.getServletPath();
        for (String page:excludedPages) {
            if (rePath.equals(page)){
                flag = true;
            }
        }
        //请求的完整路径
        //String path=context.getRealPath(rePath);
        //System.out.println(path);
      //  path=path.substring(0,path.lastIndexOf("houtai\\")+6);
        
		if(flag){
			arg2.doFilter(arg0, arg1);
		}else{
			Object obj= re.getSession().getAttribute("adminUser");
			if(obj!=null){
				arg2.doFilter(arg0, arg1);
			}else{
				//res.sendRedirect("/jsp/houtai/login.jsp");
				re.getRequestDispatcher("/jsp/houtai/login.jsp").forward(arg0, arg1);
			}
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		//context  = arg0.getServletContext();
		str=arg0.getServletContext().getRealPath("/");
		//System.out.println(str);
		excludedPage = arg0.getInitParameter("excludedPages");
        if (excludedPage != null && excludedPage.length() > 0){
            excludedPages = excludedPage.split(",");
        }
	}

}
