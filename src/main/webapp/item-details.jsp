<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%
    // Retrieving the item details from the query parameters
    String name = request.getParameter("name");
    String price = request.getParameter("price");
    String desc = request.getParameter("desc");
    String image = request.getParameter("image");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= name %> - Grab & Go</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #121212;
            color: #fff;
            margin: 0;
            padding: 0;
        }
        .item-container {
            max-width: 1000px;
            margin: 60px auto;
            display: flex;
            background-color: #1e1e1e;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }
        .item-img {
            width: 50%;
            object-fit: cover;
        }
        .item-details {
            padding: 30px;
            flex: 1;
        }
        .item-details h1 {
            font-size: 36px;
            margin-bottom: 15px;
            color: #FFCC00;
        }
        .item-details p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .price {
            font-size: 24px;
            color: #FF3C00;
            margin-bottom: 20px;
        }
        .quantity {
            margin-bottom: 20px;
        }
        .quantity input {
            width: 60px;
            text-align: center;
            padding: 6px;
            font-size: 16px;
            border-radius: 6px;
            border: none;
            outline: none;
        }
        .btn {
            background-color: #FF3C00;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
            margin-right: 10px;
        }
        .btn:hover {
            background-color: #FFA500;
        }
    </style>
</head>
<body>

<div class="item-container">
    <img src="<%= image %>" alt="<%= name %>" class="item-img">
    <div class="item-details">
        <h1><%= name %></h1>
        <p><%= desc %></p>
        <div class="price">$<%= price %></div>

        <div class="quantity">
            <label for="qty">Quantity:</label>
            <input type="number" id="qty" name="qty" value="1" min="1">
        </div>

        <button class="btn" onclick="addToCart()">Add to Cart</button>
        <button class="btn" onclick="placeOrder()">Place Order</button>
    </div>
</div>



</body>
</html>
