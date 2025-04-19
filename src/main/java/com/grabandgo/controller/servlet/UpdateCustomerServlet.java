package com.grabandgo.controller.servlet;

import com.grabandgo.controller.dao.UserDAO;
import com.grabandgo.model.User;
import com.grabandgo.security.PasswordUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        Integer userId = (Integer) session.getAttribute("userId");
        
        // Validate session
        if (userId == null) {
            response.sendRedirect("login.jsp?error=Session expired. Please login again.");
            return;
        }

        // Get form data
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");

        try {
            UserDAO userDAO = new UserDAO();
            User currentUser = userDAO.getUserById(userId);
            
            // Create updated user object
            User updatedUser = new User();
            updatedUser.setId(userId);
            updatedUser.setFirstName(firstName);
            updatedUser.setLastName(lastName);
            updatedUser.setUsername(username);
            updatedUser.setPhone(phone);
            updatedUser.setEmail(email);
            updatedUser.setAddress(address);
            updatedUser.setGender(gender);
            updatedUser.setRole(currentUser.getRole());
            updatedUser.setStatus(currentUser.getStatus());
            
            // Only update password if a new one was provided
            if (password != null && !password.trim().isEmpty()) {
                updatedUser.setPassword(PasswordUtils.hashPassword(password));
            } else {
                updatedUser.setPassword(currentUser.getPassword());
            }

            // Update user in database
            boolean isUpdated = userDAO.updateUser(updatedUser);
            
            if (isUpdated) {
                // Update session with new details
                session.setAttribute("username", username);
                response.sendRedirect("customer-dashboard.jsp?success=Profile updated successfully");
            } else {
                response.sendRedirect("edit-profile.jsp?error=Failed to update profile");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("edit-profile.jsp?error=Server error: " + e.getMessage());
        }
    }
}