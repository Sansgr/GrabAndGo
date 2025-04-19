package com.grabandgo.controller.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.grabandgo.controller.dao.UserDAO;
import com.grabandgo.model.User;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();
        User user = null;

        try {
            user = dao.validateUser(username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=Server error, please try again.");
            return;
        }

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("userId", user.getId());
            session.setAttribute("username", user.getUsername());
            session.setAttribute("role", user.getRole());
            session.setMaxInactiveInterval(15 * 60);  // 15 minutes

//         // Create a cookie for username
//            Cookie usernameCookie = new Cookie("username", user.getUsername());
//
//            // Optional: create a cookie for role
//            Cookie roleCookie = new Cookie("role", user.getRole());
//
//            // Set cookie max age to 15 minutes (in seconds)
//            usernameCookie.setMaxAge(15 * 60);
//            roleCookie.setMaxAge(15 * 60);
//
//            // Optional: Secure & HttpOnly flags for better security (if using HTTPS)
//            usernameCookie.setHttpOnly(true);
//            roleCookie.setHttpOnly(true);
//
//            // Add cookies to the response
//            response.addCookie(usernameCookie);
//            response.addCookie(roleCookie);


     
            
            System.out.println("User Role: " + user.getRole());

            String role = user.getRole();

            if (role != null && !role.trim().isEmpty()) {
                try {
                    switch (role.toLowerCase()) {
                        case "admin":
                            System.out.println("🔄 Redirecting to admin-dashboard.jsp");
                            response.sendRedirect("admin-dashboard.jsp");
                            return;
                        case "staff":
                            System.out.println("🔄 Redirecting to staff-dashboard.jsp");
                            response.sendRedirect("staff-dashboard.jsp");
                            return;
                        case "customer":
                            System.out.println("🔄 Redirecting to customer-dashboard.jsp");
                            response.sendRedirect("customer-dashboard.jsp");
                            return;
                        default:
                            System.out.println("!Unknown role: " + role);
                            response.sendRedirect("login.jsp?error=Unknown role: " + role);
                            return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    response.sendRedirect("login.jsp?error=Redirection failed.");
                }
            } else {
                System.out.println("Role is NULL or EMPTY");
                response.sendRedirect("login.jsp?error=Role is empty or null.");
            }
        } else {
            System.out.println("!Invalid credentials for username: " + username);
            response.sendRedirect("login.jsp?error=Invalid credentials");
        }
    }
}
