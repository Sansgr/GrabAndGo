package com.grabandgo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.grabandgo.database.DatabaseConnection;
import com.grabandgo.model.User;
import com.grabandgo.security.PasswordUtils;

public class UserDAO {

	//Register a new user with all details
    public boolean registerUser(User user) throws ClassNotFoundException {
        String checkQuery = "SELECT COUNT(*) FROM users WHERE username = ?";
        String insertQuery = "INSERT INTO users (first_name, last_name, username, phone, email, password, address, gender, role, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement checkStmt = conn.prepareStatement(checkQuery);
             PreparedStatement insertStmt = conn.prepareStatement(insertQuery)) {

            // Check if username already exists
            checkStmt.setString(1, user.getUsername());
            ResultSet rs = checkStmt.executeQuery();
            if (rs.next() && rs.getInt(1) > 0) {
                System.out.println("⚠️ Registration Failed: Username already exists.");
                return false;
            }

            // Hash the password
            String hashedPassword = PasswordUtils.hashPassword(user.getPassword());

            // Insert user into database
            insertStmt.setString(1, user.getFirstName());
            insertStmt.setString(2, user.getLastName());
            insertStmt.setString(3, user.getUsername());
            insertStmt.setString(4, user.getPhone());
            insertStmt.setString(5, user.getEmail());
            insertStmt.setString(6, hashedPassword);
            insertStmt.setString(7, user.getAddress());
            insertStmt.setString(8, user.getGender());
            insertStmt.setString(9, user.getRole());
            insertStmt.setString(10, user.getStatus());

            int rowsInserted = insertStmt.executeUpdate();
            System.out.println("Registration Successful. Rows Inserted: " + rowsInserted);
            return rowsInserted > 0;

        } catch (SQLException e) {
            System.err.println("SQL Error during registration: " + e.getMessage());
            e.printStackTrace();
        }

        return false;
    }
    
    
    // Validate user login
    public User validateUser(String username, String password) throws ClassNotFoundException {
        String query = "SELECT * FROM users WHERE username = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String storedHashedPassword = rs.getString("password");

                if (PasswordUtils.checkPassword(password, storedHashedPassword)) {
                	
                    // Build full User object
                    User user = new User();
                    user.setId(rs.getInt("user_id"));
                    user.setFirstName(rs.getString("first_name"));
                    user.setLastName(rs.getString("last_name"));
                    user.setUsername(rs.getString("username"));
                    user.setPhone(rs.getString("phone"));
                    user.setEmail(rs.getString("email"));
                    user.setPassword(storedHashedPassword);
                    user.setAddress(rs.getString("address"));
                    user.setGender(rs.getString("gender"));
                    user.setRole(rs.getString("role"));
                    user.setStatus(rs.getString("status"));

                    return user;
                }
            }
            rs.close();
        } catch (SQLException e) {
            System.err.println("SQL Error during login: " + e.getMessage());
            e.printStackTrace();
        }
        return null;
    }
}
