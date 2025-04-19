package com.grabandgo.controller.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private final static String databaseName = "grab&go";
    private final static String username = "root";
    private final static String password = "";
    private final static String dbUrl = "jdbc:mysql://localhost:3306/" + databaseName;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(dbUrl, username, password);
    }

    public static void main(String[] args) {
        try {
            Connection conn = DatabaseConnection.getConnection();
            if (conn != null) {
                System.out.println("Database connected successfully!");
                conn.close(); 
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
