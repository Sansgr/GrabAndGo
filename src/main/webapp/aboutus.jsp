<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About Us – Grab & Go</title>
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

   
    .about-section {
      padding: 80px 60px;
      text-align: center;
      background-color: #1a1a1a;
    }

    .about-section h2 {
      color: #FFCC00;
      font-size: 36px;
      margin-bottom: 20px;
    }

    .about-section p {
      font-size: 18px;
      color: #ccc;
      margin-bottom: 40px;
      max-width: 800px;
      margin-left: auto;
      margin-right: auto;
    }

    
    .members-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 30px;
      justify-items: center;
    }

    .member-card {
      background-color: #2a2a2a;
      padding: 20px;
      border-radius: 16px;
      text-align: center;
      box-shadow: 0 0 10px rgba(255, 204, 0, 0.1);
      transition: transform 0.3s ease;
      max-width: 350px;
    }

    .member-card img {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      object-fit: cover;
      margin-bottom: 15px;
      border: 3px solid #FFCC00;
    }

    .member-card h3 {
      font-size: 22px;
      margin-bottom: 10px;
      color: #fff;
    }

    .member-card p {
      font-size: 16px;
      color: #ccc;
    }

    .member-card:hover {
      transform: translateY(-8px);
    }

   .footer {
        background-color: #1e1e1e;
        text-align: center;
        padding: 20px 0;
        font-size: 14px;
        color: #ccc;
    }
    
    @media screen and (min-width: 1280px) and (max-width: 1920px) {
  .about-section {
    padding: 100px 100px;
  }

  .about-section h2 {
    font-size: 48px;
    margin-bottom: 30px;
  }

  .about-section p {
    font-size: 20px;
    margin-bottom: 60px;
  }

  .members-grid {
    gap: 40px;
  }

  .member-card {
    max-width: 400px;
    padding: 30px;
  }

  .member-card img {
    width: 140px;
    height: 140px;
  }

  .member-card h3 {
    font-size: 24px;
  }

  .member-card p {
    font-size: 18px;
  }

  .footer {
    font-size: 16px;
    padding: 30px 0;
  }
}
    

   

  </style>
</head>
<body>
  
  
  <section class="about-section">
    <h2>About Us</h2>
    <p>We are a passionate team dedicated to delivering the best food ordering experience. Meet the creative individuals behind Grab & Go.</p>
    <div class="members-grid">
      
      <div class="member-card">
        <img src="images/members1.jpg" alt="Member 1">
        <h3>Sanjog Gurung</h3>
        <p>Team Leader & Front-end Developer, Back-end Developer, UI/UX Designer, Quality Assurance & Tester</p>
      </div>
      
      <div class="member-card">
        <img src="images/members2.jpg" alt="Member 2">
        <h3>Nischay Poudel</h3>
        <p>Front-end Developer, Back-end Developer, UI/UX Designer, Quality Assurance & Tester</p>
      </div>
      
      <div class="member-card">
        <img src="images/members3.jpg" alt="Member 3">
        <h3>Prabesh Marasini</h3>
        <p>Front-end Developer, Back-end Developer, UI/UX Designer, Quality Assurance & Tester</p>
      </div>
      
      <div class="member-card">
        <img src="images/members4.jpg" alt="Member 4">
        <h3>Samuel Acharya</h3>
        <p>Front-end Developer, Back-end Developer, UI/UX Designer, Quality Assurance & Tester</p>
      </div>
    </div>
  </section>
  
  
<footer class="footer">
    <p>&copy; 2025 Grab & Go. All rights reserved.</p>
</footer>
  

</body>
</html>
