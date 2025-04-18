<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Grab & Go – Order Your Favorite Meal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #121212;
            color: #fff;
        }

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
        	a {
    		text-decoration: none;
		}
        
        
        
	
        .price {
            font-size: 18px;
            font-weight: bold;
            color: #FF3C00;
            display: block;
            margin-bottom: 10px;
            text-align: center;
        }

        .menu-item:hover {
            transform: translateY(-8px);
        }

        .order-btn {
            margin-top: 10px;
            background-color: #FF3C00;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            font-weight: bold;
            font-size: 14px;
            cursor: pointer;
            transition: background 0.3s ease;
            text-decoration: none;
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
        
        @media screen and (min-width: 1280px) and (max-width: 1920px) {
    .hero-content h1 {
        font-size: 56px;
    }

    .hero-content p {
        font-size: 22px;
    }

    .hero-btn {
        font-size: 20px;
        padding: 16px 36px;
    }

    .section-title {
        font-size: 40px;
    }

    .menu-item {
        padding: 24px;
        max-width: 320px;
    }

    .menu-item h3 {
        font-size: 24px;
    }

    .menu-item p {
        font-size: 16px;
    }

    .price {
        font-size: 20px;
    }

    .order-btn {
        font-size: 16px;
        padding: 12px 24px;
    }
}
        
        
        
    </style>
</head>
<body>

<section class="hero" id="home">
    <div class="hero-overlay"></div>
    <div class="hero-content">
        <h1>Satisfy Your Cravings,</h1>
        <p>Order Online, Grab Hot and Fresh!</p>
        <a href="menu.jsp" class="hero-btn">Browse Menu</a>
    </div>
</section>

<section class="featured-menu">
    <h2 class="section-title">Today's Special</h2>
    <div class="menu-grid">
        <a href="item-details.jsp?name=Spicy%20Wings&price=8&desc=Hot%20and%20spicy%20chicken%20wings%20with%20ranch%20dip.&image=images/spicy%20wings.jpg" class="menu-item">
            <img src="images/spicy wings.jpg" alt="Spicy Wings">
            <h3>Spicy Wings</h3>
            <p>Hot and spicy chicken wings with ranch dip.</p>
            <span class="price">$8</span>
        </a>

        <a href="item-details.jsp?name=Loaded%20Nachos&price=6&desc=Crispy%20nachos%20loaded%20with%20cheese%20and%20jalape%C3%B1os.&image=images/loaded-nachos.jpg" class="menu-item">
            <img src="images/loaded-nachos.jpg" alt="Loaded Nachos">
            <h3>Loaded Nachos</h3>
            <p>Crispy nachos loaded with cheese and jalapeños.</p>
            <span class="price">$6</span>
        </a>

        <a href="item-details.jsp?name=Choco%20Blast&price=4&desc=A%20rich%20chocolate%20dessert%20to%20end%20your%20meal%20perfectly.&image=images/choco-blast.jpg" class="menu-item">
            <img src="images/choco-blast.jpg" alt="Choco Blast Dessert">
            <h3>Choco Blast</h3>
            <p>A rich chocolate dessert to end your meal perfectly.</p>
            <span class="price">$4</span>
        </a>
    </div>
</section>

<section class="featured-menu">
    <h2 class="section-title">Fan Favorites</h2>
    <div class="menu-grid">
        <a href="item-details.jsp?name=Classic%20Burger&price=6&desc=Juicy%20grilled%20patty%20with%20fresh%20lettuce%20and%20cheese.&image=images/burger.jpg" class="menu-item">
            <img src="images/burger.jpg" alt="Classic Burger">
            <h3>Classic Burger</h3>
            <p>Juicy grilled patty with fresh lettuce and cheese.</p>
            <span class="price">$6</span>
        </a>

        <a href="item-details.jsp?name=Crispy%20Fries&price=2&desc=Golden%2C%20crunchy%20fries%20perfectly%20salted.&image=images/fries.jpg" class="menu-item">
            <img src="images/fries.jpg" alt="Crispy Fries">
            <h3>Crispy Fries</h3>
            <p>Golden, crunchy fries perfectly salted.</p>
            <span class="price">$2</span>
        </a>

        <a href="item-details.jsp?name=Combo%20Meal&price=9&desc=Burger%2C%20fries%2C%20and%20drink%20%E2%80%93%20the%20ultimate%20combo.&image=images/combo.jpg" class="menu-item">
            <img src="images/combo.jpg" alt="Combo Meal">
            <h3>Combo Meal</h3>
            <p>Burger, fries, and drink — the ultimate combo.</p>
            <span class="price">$9</span>
        </a>
    </div>
</section>

<section class="featured-menu">
    <h2 class="section-title">Chef’s Specials</h2>
    <div class="menu-grid">
        <a href="item-details.jsp?name=Spicy%20Wings&price=8&desc=Hot%20and%20spicy%20chicken%20wings%20with%20ranch%20dip.&image=images/spicy%20wings.jpg" class="menu-item">
            <img src="images/spicy wings.jpg" alt="Spicy Wings">
            <h3>Spicy Wings</h3>
            <p>Hot and spicy chicken wings with ranch dip.</p>
            <span class="price">$8</span>
        </a>

        <a href="item-details.jsp?name=Loaded%20Nachos&price=6&desc=Crispy%20nachos%20loaded%20with%20cheese%20and%20jalape%C3%B1os.&image=images/loaded-nachos.jpg" class="menu-item">
            <img src="images/loaded-nachos.jpg" alt="Loaded Nachos">
            <h3>Loaded Nachos</h3>
            <p>Crispy nachos loaded with cheese and jalapeños.</p>
            <span class="price">$6</span>
        </a>

        <a href="item-details.jsp?name=Choco%20Blast&price=4&desc=A%20rich%20chocolate%20dessert%20to%20end%20your%20meal%20perfectly.&image=images/choco-blast.jpg" class="menu-item">
            <img src="images/choco-blast.jpg" alt="Choco Blast Dessert">
            <h3>Choco Blast</h3>
            <p>A rich chocolate dessert to end your meal perfectly.</p>
            <span class="price">$4</span>
        </a>
    </div>
</section>

<footer class="footer">
    <p>&copy; 2025 Grab & Go. All rights reserved.</p>
</footer>

</body>
</html>

