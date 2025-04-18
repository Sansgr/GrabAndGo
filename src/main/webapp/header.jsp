<head>
    <style>
    
    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #1e1e1e;
        padding: 10px 20px;
        position: sticky;
        top: 0;
        z-index: 10;
    }

    .logo {
        font-size: 28px;
        font-weight: bold;
        color: #FFCC00;
    }
    a.logo {
    font-size: 28px;
    font-weight: bold;
    color: #FFCC00;
    text-decoration: none;
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

    .nav-right {
        display: flex;
        align-items: center;
        gap: 20px;
        position: relative;
    }

    .search-bar {
        padding: 8px 12px;
        border-radius: 12px;
        border: none;
        outline: none;
        font-size: 14px;
        
    }

    
    .profile-info {
        display: flex;
        align-items: center;
        cursor: pointer;
    }

    .profile-img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
    }

    .profile-name {
        margin-left: 10px;
        color: #FFCC00;
        font-weight: 600;
    }

   
    .dropdown-menu {
        display: none;
        position: absolute;
        top: 50px;
        right: 0;
        background-color: #2a2a2a;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        z-index: 20;
        min-width: 160px;
    }

    .dropdown-menu a {
        display: block;
        padding: 12px 16px;
        color: #fff;
        text-decoration: none;
        transition: background 0.2s ease;
    }

    .dropdown-menu a:hover {
        background-color: #444;
    }
    @media screen and (min-width: 1280px) and (max-width: 1920px) {
    .navbar {
        padding: 12px 40px;
    }

    .logo {
        font-size: 30px;
    }

    .nav-links {
        gap: 30px;
    }

    .nav-links li a {
        font-size: 16px;
    }

    .search-bar {
        width: 220px;
        font-size: 15px;
    }

    .profile-name {
        font-size: 16px;
    }

    .dropdown-menu a {
        font-size: 14px;
    }
}
    

    </style>
</head>

<%
    String loggedInUser = (String) session.getAttribute("username");
    
%>

<header class="navbar">
    <a href="customer-dashboard.jsp" class="logo">Grab & Go</a>
    <nav>
        <ul class="nav-links">
            <li><a href="customer-dashboard.jsp">Home</a></li>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="cart.jsp">Cart</a></li>
            <li><a href="aboutus.jsp">About US</a></li>
        </ul>
    </nav>

    <div class="nav-right">
    <input type="text" class="search-bar" placeholder="Search food...">
    
    <div id="profileContainer" class="profile-info">
        <img src="images/profile.png" alt="User" class="profile-img" id="profileImg">
               
            <% if (loggedInUser != null) { %>
            <span class="profile-name">Hello, <%= loggedInUser %></span>
        <% } %>
     
    </div>
 </div>

        
        <div class="dropdown-menu" id="dropdownMenu">
            <a href="edit-profile.jsp">Edit Profile</a>
            <a href="orderhistory.jsp">Order History</a>
            <a href="Logout.jsp">Logout</a>
        </div>
    </div>
</header>

<script>
    const profileImg = document.getElementById("profileImg");
    const dropdownMenu = document.getElementById("dropdownMenu");

    
    profileImg.addEventListener("click", (e) => {
        e.stopPropagation(); 
        dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
    });

</script>
