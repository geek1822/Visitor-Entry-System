<%-- 
    Document   : error_page
    Created on : 07-Apr-2021, 7:43:57 pm
    Author     : Prapti Santra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry!!!</title>
        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <style>
            .banner
            {
                clip-path: polygon(30% 0%,70% 0%,100% 0,100% 91%, 63% 100% , 22% 91%, 0 99%, 0 0);
            }

        </style>
    </head>
    <body>
        
        <div class="container text-center">
            <img src="error.png" class="img-fluid" >
            <br><br><br>
            <h3>Sorry!!! Something went wrong</h3>
            <br><br>
            
            <a href="index.jsp" class="btn primary-background btn-lg text-black mt-6">Home</a>
                 
                 
            
        </div>
    </body>
</html>
