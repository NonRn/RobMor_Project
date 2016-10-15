<%-- 
    Document   : Register
    Created on : Oct 15, 2016, 4:19:53 PM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Register ::</h1><hr>
        <form action="RegisterUser" method="GET">
            <input type="text" name="fname" required><br>
            <input type="text" name="lname" required><br>
            <input type="email" name="email" required><br>
            <input type="radio" name="gender" value="female">female &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="gender" value="male">male<br>
            <input type="tel" name="tel">
            <select name="year">
                <option value="2011">2011</option>
                <option value="2012">2012</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
            </select>
            <select name="month">
                <option value="1">Jan</option>
                <option value="2">Feb</option>
                <option value="3">Mar</option>
                <option value="4">Apr</option>
                <option value="5">May</option>
                <option value="6">Jun</option>
                <option value="7">Jul</option>
                <option value="8">Aug</option>
                <option value="9">Sep</option>
                <option value="10">Oct</option>
                <option value="11">Nov</option>
                <option value="12">Dec</option>
            </select>
            <select name="day">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
            </select>
            <input type="text" name="username" required=""><br>
            <input type="password" name="pass" required=""><br>
            <input type="password" name="passcon" required=""><br>
            <input type="submit">
        </form>
    </body>
</html>
