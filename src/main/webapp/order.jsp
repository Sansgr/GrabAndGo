<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
 <style>
    /* Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body */
body {
    font-family: 'Segoe UI', sans-serif;
    background-color: #121212;
    color: #fff;
}

/* Navigation */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #1e1e1e;
    padding: 20px 40px;
    position: sticky;
    top: 0;
    z-index: 10;
}

.logo {
    font-size: 28px;
    font-weight: bold;
    color: #FFCC00;
}

.nav-links {
    list-style: none;
    display: flex;
    gap: 25px;
}

.nav-links li a {
    color: white;
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s ease;
}

.nav-links li a:hover {
    color: #FFCC00;
}

.btn-order {
    background-color: #FF3C00;
    padding: 10px 20px;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    transition: background 0.3s ease;
}

.btn-order:hover {
    background-color: #FFA500;
}
</style>
</head>
<body>
 <header class="navbar">
        <div class="logo">Grab & Go</div>
        <nav>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="menu.jsp">Menu</a></li>
                <li><a href="cart.jsp">Cart</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
            </ul>
        </nav>
        <a href="order.jsp" class="btn-order">Order Now</a>
    </header>


</body>
</html>