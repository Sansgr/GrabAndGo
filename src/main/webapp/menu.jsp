<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Our Menu – Grab & Go</title>
    <link rel="stylesheet" href="css/menu.css">
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


.menu-section {
    padding: 60px 40px;
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
.menu-item:hover {
    transform: translateY(-8px);
    background-color: #333;  
    box-shadow: 0 10px 20px rgba(255, 204, 0, 0.2);  

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
        font-size: 60px;
    }

    .hero-content p {
        font-size: 24px;
    }

    .hero-btn {
        font-size: 20px;
        padding: 16px 32px;
    }

    .section-title {
        font-size: 40px;
    }

    .menu-item {
        padding: 25px;
        max-width: 350px;
    }

    .menu-item img {
        height: 220px;
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

<section class="menu-section">
    <h2 class="section-title">Our Full Menu</h2>
    <div class="menu-grid">

        
        <div class="menu-item">
            <img src="images/burger.jpg" alt="Classic Burger">
            <h3>Classic Burger</h3>
            <p>Juicy grilled patty with lettuce and cheese.</p>
            <span class="price">$6</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Classic Burger">
                <input type="hidden" name="price" value="6">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

        
        <div class="menu-item">
            <img src="images/fries.jpg" alt="Crispy Fries">
            <h3>Crispy Fries</h3>
            <p>Golden, crunchy fries with sea salt.</p>
            <span class="price">$2</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Crispy Fries">
                <input type="hidden" name="price" value="2">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

        
        <div class="menu-item">
            <img src="images/combo.jpg" alt="Combo Meal">
            <h3>Combo Meal</h3>
            <p>Burger, fries, and drink — perfect combo.</p>
            <span class="price">$9</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Combo Meal">
                <input type="hidden" name="price" value="9">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

       
        <div class="menu-item">
            <img src="images/cheese pizza.jpg" alt="Cheesy Pizza">
            <h3>Cheesy Pizza</h3>
            <p>Hot cheesy pizza with extra toppings.</p>
            <span class="price">$8</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Cheesy Pizza">
                <input type="hidden" name="price" value="8">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

        
        <div class="menu-item">
            <img src="images/hot dog.jpg" alt="Hot Dog">
            <h3>Hot Dog</h3>
            <p>Classic sausage in a bun with mustard.</p>
            <span class="price">$4</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Hot Dog">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

       
        <div class="menu-item">
            <img src="images/sandwitch.jpg" alt="Chicken Sandwich">
            <h3>Chicken Sandwich</h3>
            <p>Grilled chicken breast with fresh veggies.</p>
            <span class="price">$5</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Sandwich">
                <input type="hidden" name="price" value="5">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

        
        <div class="menu-item">
            <img src="images/milkshake.jpg" alt="Milkshake">
            <h3>Milkshake</h3>
            <p>Thick and creamy milkshake, various flavors.</p>
            <span class="price">$3</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Milkshake">
                <input type="hidden" name="price" value="3">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

        
        <div class="menu-item">
            <img src="images/salad.jpg" alt="Healthy Salad">
            <h3>Healthy Salad</h3>
            <p>Fresh greens, tomatoes, and vinaigrette.</p>
            <span class="price">$5</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Healthy Salad">
                <input type="hidden" name="price" value="5">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

       
        <div class="menu-item">
            <img src="images/nuggest.jpg" alt="Chicken Nuggets">
            <h3>Chicken Nuggets</h3>
            <p>Crispy chicken bites served with sauce.</p>
            <span class="price">$4</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/chowmein.jpg" alt="Chowmein">
            <h3>Chowmein</h3>
            <p>Best Nepali Chowmein</p>
            <span class="price">$6</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/choco-blast.jpg" alt="Choco Blast">
            <h3>Choco Blast</h3>
            <p>Blast of Chocolate</p>
            <span class="price">$10</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/dalbhat.jpg" alt="DalBhat">
            <h3>DalBhat</h3>
            <p>DalBhat ko Power 24hrs</p>
            <span class="price">$8</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/momo.jpg" alt="MOMO">
            <h3>MOMO</h3>
            <p>Nepali Juicy Momo</p>
            <span class="price">$12</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/nan.jpg" alt="Plain NAN">
            <h3>Plain NAN</h3>
            <p>Original nan from gurkha</p>
            <span class="price">$13</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/newari set.jpg" alt="Newari Khaja Set">
            <h3>Newari Khaja Set</h3>
            <p>Jojolapa! Hava a khaja set</p>
            <span class="price">$16</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/thakali set.jpg" alt="Thakali Khaja Set">
            <h3>Thakali Khaja Set</h3>
            <p>Mitho Mitho Mitho khaja set</p>
            <span class="price">$15</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/sugercane juice.jpg" alt="Sugercan Juice">
            <h3>Sugercan Juice</h3>
            <p>Gannay Ka Juice Only 20 rupeees</p>
            <span class="price">$20</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/paneer.jpg" alt="Chilli Paneer">
            <h3>Chilli Paneer</h3>
            <p>Spicy like you</p>
            <span class="price">$18</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/sushi.jpg" alt="Japnese Sushi">
            <h3>Japnese Sushi</h3>
            <p>Origin from japan</p>
            <span class="price">$21</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>
        
         <div class="menu-item">
            <img src="images/fried rice.jpg" alt="Fried Rice">
            <h3>Fried Rice</h3>
            <p>Fresh Fried Rice</p>
            <span class="price">$5</span>
            <form action="order.jsp" method="post">
                <input type="hidden" name="item" value="Chicken Nuggets">
                <input type="hidden" name="price" value="4">
                <button type="submit" class="order-btn">Place Order</button>
            </form>
        </div>

    </div>
</section>


<footer class="footer">
    <p>&copy; 2025 Grab & Go. All rights reserved.</p>
</footer>


</body>
</html>
