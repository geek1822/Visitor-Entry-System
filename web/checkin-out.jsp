<%-- 
    Document   : checkin-out
    Created on : 11-Apr-2021, 12:24:17 am
    Author     : Prapti Santra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

    <style>
        *
        {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
    
        }
        body{
            background: url('bm1.jpg') no-repeat;
            width: 100%;
            height: 100vh;
            background-size: 100% 100%;
            background-position: center;
            background-attachment:fixed ;
        }
        .container
        {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);

        }
        .container span{
    
            display: block;
        }
        .text1
        {
            font-size: 60px;
            font-weight: 700;
            color: white;
            letter-spacing: 8px;
            margin-bottom: 20px;
            position: relative;
            animation: text 3s 1;
        }
        .text2
        {
            font-size: 40px;
            color: #4c7a38;
            letter-spacing: 4px;
        }
        @keyframes text
        {
            0%
            {
                color: black;
                margin-bottom: -40px;
            }
            30%
            {
                letter-spacing: 25px;
                margin-bottom: -40px;

            }
            85%
            {
                letter-spacing: 8px;
                margin-bottom: -40px;
            }
        }
           
     </style>
        <meta charset="ISO-8859-1">
        <title>checkin-checkout</title>
        
        <body>
            
            <div class="container " >
                <span class= "text1">WELCOME IN</span>
                <br>
                <span class= "text2"> VMS </span>
                </div>
            
                  <div class="cont text-center">
                      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    <a href="registration.jsp" class="btn btn-primary btn-lg">Check In</a>
                    <a href="checkout.jsp" class="btn btn-primary btn-lg">Check Out</a>
                   </div>
         </body>
    
    
</body>
</html>