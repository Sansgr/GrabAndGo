<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile – Grab & Go</title>
    <style>
        * {
            margin: 0;
            padding: 0;.
            box-sizing: border-box;
        }

        body {
            background-color: #121212;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
        }

        .edit-container {
            max-width: 500px;
            margin: 60px auto;
            background-color: #1e1e1e;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(255, 204, 0, 0.1);
        }

        .edit-container h2 {
            text-align: center;
            color: #FFCC00;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #ccc;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"],
        textarea,
        select {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background-color: #2a2a2a;
            color: white;
        }

        textarea {
            resize: vertical;
        }

        .save-btn {
            width: 100%;
            padding: 14px;
            background-color: #FF3C00;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .save-btn:hover {
            background-color: #FFA500;
        }
        
         @media screen and (min-width: 1280px) and (max-width: 1920px) {
            .edit-container {
                max-width: 600px;
                padding: 50px;
            }

            .form-group {
                margin-bottom: 25px;
            }

            .save-btn {
                padding: 16px;
                font-size: 18px;
            }

            .edit-container h2 {
                font-size: 32px;
                margin-bottom: 40px;
            }
        }
    </style>
</head>
<body>

<div class="edit-container">
    <h2>Edit Profile</h2>
    <form action="UpdateCustomerServlet" method="post">
        <div class="form-group">
            <label for="first_name">First Name</label>
            <input type="text" id="first_name" name="first_name" placeholder="Enter first name">
        </div>

        <div class="form-group">
            <label for="last_name">Last Name</label>
            <input type="text" id="last_name" name="last_name" placeholder="Enter last name">
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter new username">
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter phone number">
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter email address">
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter new password">
        </div>

        <div class="form-group">
            <label for="address">Address</label>
            <textarea id="address" name="address" rows="3" placeholder="Enter address"></textarea>
        </div>

        <div class="form-group">
            <label for="gender">Gender</label>
            <select id="gender" name="gender">
                <option value="" disabled selected>Select gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>

        <button type="submit" class="save-btn">Save Changes</button>
    </form>
</div>

</body>
</html>
