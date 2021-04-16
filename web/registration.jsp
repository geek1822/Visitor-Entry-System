<%-- 
    Document   : registration.jsp
    Created on : 13-Mar-2021, 12:47:37 pm
    Author     : Nandini Ojha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <style>
       *{
         margin: 0;
         padding: 0;
       }
       body{
          margin: 0;
          padding: 0;
          width: 100%;
          height: 100vh;
          background-size: 100% 100%;
          background-position: center;
          background-attachment:fixed ;
          font-family: sans-serif;
        }
        #img{
            opacity: 100%;
        }
        .container{
            padding: 70px;
            color: black;
        }
        h1{
            color: black;
            font-family: sans-serif;
        }
            #btn{
            font-size: 18px;
            background: black;
             width: 5vw;
            color:white;
            font-weight:bold;
            border-radius: 64px;
            padding:10px;
          }
          #tb{
              font-size: 17px;
          }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body background="img.jpg" id="img">
        
        <div class="container" align="center">
            <form action="RegisterServlet" method="post">
                <h1>Enter the details</h1>
               <table id="tb">
                  <tr><td for="name"> Name </td><td><input type="text" name="name" placeholder="Enter Your name.." required></td></tr><br>
                  
                  <tr><td for="gender"> Gender </td>
                      <td for="gender"> Male   <input type="radio" value="male" name="gender">  Female  <input type="radio" value="female" name="gender"></td><br>
                  </tr>
                 
                  
                  <tr><td for="email"> Email </td><td><input type="email" name="email" placeholder="Your Email" required></td></tr></br>
                 
                  
                  <tr><td for="phone"> Phone Number </td><td><input type="number" name="phone" pattern="[0-9]{10}"></td></tr><br>
                 
                  
                  <tr><td for="hostName"> Host Name </td><td><input type="text" name="hostName" placeholder="Host name" required></td></tr><br>
                   
                  
                  <tr><td for="hostPhone"> Host Number </td><td><input type="number" name="hostPhone"  pattern="[0-9]{10}" required></td></tr><br>
                  
                  
                  <tr><td for="hostEmail"> Host Email </td><td><input type="email" name="hostEmail" placeholder="Host Email" required></td></tr><br>
                   
                  
                  <tr><td><input type="submit" nam="submit" value="submit" class="btn btn-primary text-center"></td></tr>
                </<table>
                
            </form>
        </div>
        
    </body>
</html>









