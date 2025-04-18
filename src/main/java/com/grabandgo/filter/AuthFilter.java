package com.grabandgo.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthFilter {
	
	public void init(FilterConfig filterConfig) throws ServletException {}

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);

        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();

        System.out.println("🔍 AuthFilter triggered for: " + uri);

        // Allow login and register pages without authentication
        if (uri.endsWith("login.jsp") || uri.endsWith("register.jsp")
                || uri.endsWith("LoginServlet") || uri.endsWith("RegisterServlet")) {
            chain.doFilter(request, response);
            return;
        }

        String role = (session != null) ? (String) session.getAttribute("role") : null;
        System.out.println("🧾 Session: " + session + ", Role: " + role);

        if (session == null || role == null) {
            res.sendRedirect(contextPath + "/login.jsp?error=Please login first");
            return;
        }

        // Role-based access
        if (uri.contains("admin-dashboard.jsp") && !"admin".equalsIgnoreCase(role)) {
            res.sendRedirect(contextPath + "/login.jsp?error=Access denied: Admins only");
            return;
        } else if (uri.contains("staff-dashboard.jsp") && !"staff".equalsIgnoreCase(role)) {
            res.sendRedirect(contextPath + "/login.jsp?error=Access denied: Staff only");
            return;
        } else if (uri.contains("customer-dashboard.jsp") && !"customer".equalsIgnoreCase(role)) {
            res.sendRedirect(contextPath + "/login.jsp?error=Access denied: Customers only");
            return;
        }

        // All checks passed
        chain.doFilter(request, response);
    }

    public void destroy() {}
}
