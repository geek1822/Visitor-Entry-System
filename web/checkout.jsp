<%-- 
    Document   : checkout.jsp
    Created on : 15 Mar, 2021, 9:36:23 PM
    Author     : Nandini Ojha
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<style>
   
    body
    {
        margin: 0;
        padding: 0;
        font-family: arial;
    }
    #img{
        opacity: 100%;
    }
    .back
    {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        animation: animate 14s ease-in-out infinite;
        background-size: cover;
    }
    .container{
        padding: 200px;
    }
    
    #btn{
        padding: 10px 20px 20px 20px;
        background: cornflowerblue;
        color: #ffffff;
        font-family: sans-serif bold;
        font-weight:bold;
        border-radius: 64px;
    }
    
    .container h1{
        padding: 5vh;
        font-family: sans-serif bold;
    }
    .details
    {
        font-size: 20px;
        font-weight: bold;
    }
    
    
    
</style>
<body background="7.jpg" id="img">
    <div class="back">
<div class="container" align="center">
    <h1>Enter the details !</h1><!-- comment -->
    <form action="CheckoutServlet" method="POST" ">
        
            <table class = "details">
                <tr><td> Email </td><td><input type="text" name="email" required></td></tr>
            <tr><td> Checkout Time </td><td><input type="time" name="checkout" required></td></tr>
            
        </table>
        <br>
        <button class="btn btn-primary" type="submit">Submit</button>
    </form>
    </div>
</div>
</body>
</html>

<body>
    
</body>
</html>