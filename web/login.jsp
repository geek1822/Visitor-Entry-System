<%-- 
    Document   : signup
    Created on : 16 Mar, 2021, 9:51:20 PM
    Author     : Nandini Ojha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    body{
    margin: 0;
    padding: 0;
    background: url('photo1.jpg') no-repeat;
    width: 100%;
    height: 100vh;
    background-size: 100% 100%;
    background-position: center;
    background-attachment:fixed ;
    font-family: sans-serif;
}
.login-box{
    width: 320px;
    height: 400px;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    position: fixed;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}
.icon{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -10px;
    left: calc(50% - 50px);
}
h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}
.login-box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.login-box input{
    width: 100%;
    margin-bottom: 20px;
}
.login-box input[type="email"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}

.login-box input[name="login"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #1c8adb;
    color: #fff;
    font-size: 18px;
    border-radius: 10px;
}
.login-box input[name="login"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}
</style>

<body>
    

    <div class="login-box">
        <img src="photo2.png " class ="icon">
        <br><br>
        <h1>Login</h1>
        <form method="post" action="LoginServlet">
                <p>Email</p>
                <input type="email" name="email" placeholder="Enter your email id" required>
                <p>Password</p>
                <input type="password" name="password" placeholder="Enter your password" required> 
                <input type="submit" name="login" value="LogIn" >
        </form>
    </div>
</body>
</html>
