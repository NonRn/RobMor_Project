<%-- 
    Document   : Login
    Created on : Oct 16, 2016, 12:30:44 AM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login ::</h1><hr>
        <form action="Login" method="GET">
        username : <input type="text" value="${param.username}" name="username" required=""><br>
        password : <input type="password" name="password" required=""<br>
        <input type="submit">
        </form>
        ${message}<br>
        <a href="/Forgotpass.jsp"> Forgot Password </a>
    </body>
</html>
