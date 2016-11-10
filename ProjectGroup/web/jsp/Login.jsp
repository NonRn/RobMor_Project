<%-- 
    Document   : Login
    Created on : Oct 16, 2016, 12:30:44 AM
    Author     : Ratchanon
--%>

    <body background="pic/poster/poster7.jpg" >
        <jsp:include page="../jsp/Header.jsp"/>
        <br><br><br><br><br>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    
    <div class="form">
         <h1 style="color: #fff">Login </h1><br><br>
            <form action="Login" method="GET">
                <h2 style="color: #fff" class="login-input">Username :
                    <input type="text" value="${param.username}" name="username" class="block" placeholder=" Username" style="color: #000"></h2> 
                <h2 style="color: #fff" class="login-input">Password : &nbsp
                    <input type="password" name="password"  class="block" placeholder=" Password" style="color: #000"></h2><br><br>
                <input type="submit" class="block" value="Submit">
            </form>
    </div>        
 
    </body>
</html>
