package com.bitwise.jsploginapp;
 
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class sessionAuth
 */
//@WebFilter("/sessionAuth")
public class sessionAuth implements Filter {

    /**
     * Default constructor. 
     */
    public sessionAuth() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse)response;
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		String username = null;
		Cookie[] cookies = req.getCookies();
		if(cookies !=null){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("username"))
				username = cookie.getValue();
		}
		}
		 if(username == null){
			 pw.println("<font color = red >Session Expired!!</font>");
			 res.sendRedirect("login.jsp");
		 }
		 else{
			 	chain.doFilter(req, res);
		 }
			  
		
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
