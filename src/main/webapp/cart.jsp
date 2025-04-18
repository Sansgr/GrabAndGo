<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Cart – Grab & Go</title>
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


        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #333;
        }

        th {
            background-color: #FF3C00;
        }

        .total {
            font-weight: bold;
            text-align: right;
            padding-top: 20px;
            font-size: 18px;
        }
        
        @media screen and (min-width: 1280px) and (max-width: 1920px) {
    h1 {
        font-size: 42px;
        text-align: center;
        margin-top: 40px;
        margin-bottom: 30px;
        color: #FFCC00;
    }

    table {
        width: 90%;
        margin: 0 auto;
        font-size: 18px;
    }

    th, td {
        padding: 20px;
    }

    th {
        font-size: 20px;
    }

    .total {
        font-size: 22px;
        width: 90%;
        margin: 30px auto;
        color: #FFCC00;
    }
}
        
    </style>
</head>
<body>

<h1>Your Cart</h1>

<table id="cart-table">
    <thead>
        <tr>
            <th>Food Item</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
    </thead>
    <tbody>
        <!-- Items will be injected here -->
    </tbody>
</table>

<p class="total" id="cart-total">Total: $0</p>



</body>
</html>
