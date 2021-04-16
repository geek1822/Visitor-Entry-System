<%-- 
    Document   : index
    Created on : 15 Apr, 2021, 2:25:27 PM
    Author     : Nandini Ojha
--%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    width: 330px;
    height: 580px;
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
.login-box input[type="text"], input[type="password"] 
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}

.login-box input[type="email"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.login-box input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #1c8adb;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.login-box input[type="submit"]:hover
{
    cursor: pointer;
    background: grey;
    color: #000;
}

</style>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signup</title>
</head>

<body>
    
    <div class="login-box">
        <img src="photo2.png " class ="icon">
        <br><br>
            <h1>Signup</h1>
            <form id= "signup-form" action="SignupServlet" method="post">
                
                <p>Username</p>
                <input type="text" name="user_name" placeholder="Enter Username" required>
                <p>Password</p>
                <input type="password" name="user_password" placeholder="password" required>
                <p>Email ID</p>
                <input type="email" name="user_email" placeholder="eg: user123@gmail.com" required>
                <br><!-- comment -->
                
                <div class="container" i="loader" style="display: none;">
                    <h3>Please wait...</h3>
                </div>
                <br><!-- comment -->
                <input type ="submit"  name="Submit" value="Submit">
                <div class="container text-center">  
                    <p class="container ml-3">Already have an account ? </p>
                    <a href="login.jsp" class="btn btn-primary text-white ml-2">LogIn</a>
                </div>
            </form>
    </div>
</body>
</html>


