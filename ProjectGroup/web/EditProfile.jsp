<%-- 
    Document   : EditProfile
    Created on : Oct 16, 2016, 1:38:34 AM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EditProfile Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"/>
        <h1>Edit Profile :: </h1> <hr>
        <form action="EditUser" Method="GET">
        <table>
            <tr><td>Customer ID: </td><td><input type="text" name="id" value="${requestScope.user.userId}" readonly=""/></td></tr>
            <tr><td>First Name: </td><td><input type="text" name="fname" value="${requestScope.user.fname}" required=""/></td></tr>
            <tr><td>Last Name: </td><td><input type="text" name="lname" value="${requestScope.user.lname}" required=""/></td></tr>
            <tr><td>Gender: </td><td><input type="radio" name="gender" value="Female" required=""/>Female <input type="radio" name="gender" required="" value="male"/>Male </td></tr>
            <tr><td>Date Of Birth: </td><td>${requestScope.user.dob}</td></tr>
            <tr><td>Phone: </td><td><input type="text" name="telno" value="${requestScope.user.telno}"/></td></tr>
            <tr><td>Username: </td><td><input type="text" name="username" value="${requestScope.user.username}" readonly=""/></td></tr>
            <tr><td>Email: </td><td><input type="text" name="email" value="${requestScope.user.email}" readonly=""/></td></tr>
        </table>
        <input type="submit">
        </form>
        <input type="button" class="btn btn-info" value="Back" onclick="history.back()">
        ${message}
    </body>
</html>
