package com.grabandgo.security;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Base64;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

public class PasswordUtils {
	
	private static final int ITERATIONS = 100000;
    private static final int KEY_LENGTH = 256;
    private static final String ALGORITHM = "PBKDF2WithHmacSHA256";

    private static final String ADMIN_USERNAME = "admin";
    private static final String ADMIN_PASSWORD = "Admin@123";

    //  Global static salt (for demonstration only; NOT recommended for real-world apps)
    private static final String STATIC_SALT = "a2V5c2FsdDIwMjU="; // Base64-encoded "keysalt2025"
    
    // Hash password using static salt
    public static String hashPassword(String password) {
        try {
            byte[] saltBytes = Base64.getDecoder().decode(STATIC_SALT);
            PBEKeySpec spec = new PBEKeySpec(password.toCharArray(), saltBytes, ITERATIONS, KEY_LENGTH);
            SecretKeyFactory factory = SecretKeyFactory.getInstance(ALGORITHM);
            byte[] hash = factory.generateSecret(spec).getEncoded();
            return Base64.getEncoder().encodeToString(hash);
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new RuntimeException("Error while hashing password", e);
        }
    }

    // Compare password with stored hash
    public static boolean checkPassword(String password, String storedHashedPassword) {
        String hashedAttempt = hashPassword(password);
        return hashedAttempt.equals(storedHashedPassword);
    }

    //  Admin credential generator (new format)
    public static void generateAdminCredentials() {
        String hashedPassword = hashPassword(ADMIN_PASSWORD);
        System.out.println("INSERT INTO users (username, password, role) VALUES");
        System.out.println("('" + ADMIN_USERNAME + "', '" + hashedPassword + "', 'admin');");
    }

    public static void main(String[] args) {
        generateAdminCredentials();
   }

}
