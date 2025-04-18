<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Grab & Go – Order Your Favorite Meal</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

/* Hero Section */
.hero {
    position: relative;
    height: 100vh;
    background: url('images/herofood.png') center/cover no-repeat;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

.hero-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(18, 18, 18, 0.75);
    z-index: 1;
}

.hero-content {
    position: relative;
    z-index: 2;
    color: white;
}

.hero-content h1 {
    font-size: 64px;
    margin-bottom: 20px;
    color: #FFCC00;
}

.hero-content p {
    font-size: 20px;
    margin-bottom: 30px;
    color: #f1f1f1;
}

.hero-btn {
    background-color: #FF3C00;
    padding: 15px 30px;
    color: white;
    text-decoration: none;
    border-radius: 8px;
    font-size: 18px;
    font-weight: bold;
    transition: background 0.3s ease;
}

.hero-btn:hover {
    background-color: #FFA500;
}

/* Responsive */
@media screen and (max-width: 768px) {
    .hero-content h1 {
        font-size: 40px;
    }

    .nav-links {
        flex-direction: column;
        display: none; 
    }
}


.featured-menu {
    padding: 60px 40px;
    background-color: #1a1a1a;
    text-align: center;
}

.section-title {
    color: #FFCC00;
    font-size: 36px;
    margin-bottom: 40px;
}

.menu-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 30px;
    justify-items: center;
}

.menu-item {
    background-color: #2a2a2a;
    border-radius: 16px;
    padding: 20px;
    transition: transform 0.3s ease;
    box-shadow: 0 0 10px rgba(255, 204, 0, 0.1);
    max-width: 300px;
}

.menu-item img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 12px;
    margin-bottom: 15px;
}

.menu-item h3 {
    font-size: 22px;
    color: #fff;
    margin-bottom: 10px;
}

.menu-item p {
    font-size: 14px;
    color: #ccc;
    margin-bottom: 10px;
}

.price {
    font-size: 18px;
    font-weight: bold;
    color: #FF3C00;
    
    
}

.menu-item:hover {
    transform: translateY(-8px);
}

.order-btn {
    display: inline-block;
    margin-top: 10px;
    background-color: #FF3C00;
    color: white;
    padding: 10px 20px;
    border-radius: 6px;
    font-weight: bold;
    text-decoration: none;
    transition: background 0.3s ease;
}

.order-btn:hover {
    background-color: #FFA500;
}
.footer {
    background-color: #1e1e1e;
    text-align: center;
    padding: 20px 0;
    font-size: 14px;
    color: #ccc;
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
                <li><a href="aboutus.jsp">About US</a></li>
            </ul>
        </nav>
        <a href="order.jsp" class="btn-order">Order Now</a>
    </header>

    <!-- Hero Section -->
    <section class="hero" id=home>
        <div class="hero-overlay"></div>
        <div class="hero-content">
            <h1>Satisfy Your Cravings,</h1>
            <p>Order Online & Pick Up Hot and Fresh!</p>
            <a href="menu.jsp" class="hero-btn">Browse Menu</a>
        </div>
    </section>
    <!-- Featured Menu Items Section -->
    
   <section class="featured-menu">
    <h2 class="section-title">Today's Special</h2>
    <div class="menu-grid">
        <div class="menu-item">
            <img src="images/spicy wings.jpg" alt="Spicy Wings">
            <h3>Spicy Wings</h3>
            <p>Hot and spicy chicken wings with ranch dip.</p>
            <span class="price">$8</span>
            <a href="order.jsp" class="order-btn">Place Order</a>
        </div>
        <div class="menu-item">
            <img src="images/loaded-nachos.jpg" alt="Loaded Nachos">
            <h3>Loaded Nachos</h3>
            <p>Crispy nachos loaded with cheese and jalapeños.</p>
            <span class="price">$6</span>
            <a href="order.jsp" class="order-btn">Place Order</a>
        </div>
        <div class="menu-item">
            <img src="images/choco-blast.jpg" alt="Choco Blast Dessert">
            <h3>Choco Blast</h3>
            <p>A rich chocolate dessert to end your meal perfectly.</p>
            <span class="price">$4</span>
            <a href="order.jsp" class="order-btn">Place Order</a>
        </div>
    </div>
	</section>
	
	<section class="featured-menu">
	    <h2 class="section-title">Fan Favorites</h2>
	    <div class="menu-grid">
	        <div class="menu-item">
	            <img src="images/burger.jpg" alt="Classic Burger">
	            <h3>Classic Burger</h3>
	            <p>Juicy grilled patty with fresh lettuce and cheese.</p>
	            <span class="price">$6</span>
	            <a href="order.jsp" class="order-btn">Place Order</a>
	        </div>
	        <div class="menu-item">
	            <img src="images/fries.jpg" alt="Crispy Fries">
	            <h3>Crispy Fries</h3>
	            <p>Golden, crunchy fries perfectly salted.</p>
	            <span class="price">$2</span>
	            <a href="order.jsp" class="order-btn">Place Order</a>
	        </div>
	        <div class="menu-item">
	            <img src="images/combo.jpg" alt="Combo Meal">
	            <h3>Combo Meal</h3>
	            <p>Burger, fries, and drink — the ultimate combo.</p>
	            <span class="price">$9</span>
	            <a href="order.jsp" class="order-btn">Place Order</a>
	        </div>
	    </div>
	</section>
	
	<!-- Additional Section: Chef’s Specials -->
<section class="featured-menu">
    <h2 class="section-title">Chef’s Specials</h2>
    <div class="menu-grid">
        <div class="menu-item">
            <img src="images/spicy wings.jpg" alt="Spicy Wings">
            <h3>Spicy Wings</h3>
            <p>Hot and spicy chicken wings with ranch dip.</p>
            <span class="price">$8</span>
            <a href="order.jsp" class="order-btn">Place Order</a>
        </div>
        <div class="menu-item">
            <img src="images/loaded-nachos.jpg" alt="Loaded Nachos">
            <h3>Loaded Nachos</h3>
            <p>Crispy nachos loaded with cheese and jalapeños.</p>
            <span class="price">$6</span>
            <a href="order.jsp" class="order-btn">Place Order</a>
        </div>
        <div class="menu-item">
            <img src="images/choco-blast.jpg" alt="Choco Blast Dessert">
            <h3>Choco Blast</h3>
            <p>A rich chocolate dessert to end your meal perfectly.</p>
            <span class="price">$4</span>
            <a href="order.jsp" class="order-btn">Place Order</a>
        </div>
    </div>
</section>

  <footer class="footer">
        <p>&copy; 2025 Grab & Go. All rights reserved.</p>
    </footer>
    
</body>
</html>
