package com.j150914.flter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

//¹ıÂËÆ÷   ¡¢ÈÕÖ¾¡¢±àÂë
public class EncodingFilter implements Filter {

	 
	@Override
	public void init(FilterConfig arg0) throws ServletException {
	 
		
	}

	
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// ±àÂë¹ıÂËÆ÷
 
		arg0.setCharacterEncoding("UTF-8");
		arg1.setCharacterEncoding("UTF-8");
		arg2.doFilter(arg0, arg1);
		
	}

	

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
