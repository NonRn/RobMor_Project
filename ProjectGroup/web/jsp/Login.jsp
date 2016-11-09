<%-- 
    Document   : Login
    Created on : Oct 16, 2016, 12:30:44 AM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../css/myStyle.css">
        <link rel="stylesheet" type="text/css" href="../css/myStyle1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body background="../pic/poster/poster7.jpg" >
        <jsp:include page="../jsp/Header.jsp"/>
        <br><br><br><br><br>
 
    
    <div class="form">
         <h1 style="color: #fff">Login </h1><br><br>
            <form action="Login" method="GET">
                <h2 style="color: #fff" class="login-input">Username :
                    <input type="text" value="${param.username}" name="username" class="login-input" placeholder=" Username" style="color: #000"></h2> 
                <h2 style="color: #fff" class="login-input">Password : 
                    <input type="password" name="password"  class="login-input" placeholder=" Password" style="color: #000"></h2><br><br>
                <input type="submit" class="login-input" value="Submit">
            </form>
    </div>        
            
            <!--<form class="form-horizontal" action="Login" method="GET">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label" style="color: #fff">User</label>
                    <div class="col-sm-10">
                        <input type="text" value="${param.username}" name="username" class="form-control" id="inputEmail3" placeholder="User">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" name="password" class="col-sm-2 control-label" style="color: #fff">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                    </div>
                </div>
         
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                </div>
            </form>
        </div>!-->
   

            <!--${message}<br>
            <a href="/Forgotpass.jsp"> Forgot Password </a>!-->
        
            
       
    </body>
</html>
