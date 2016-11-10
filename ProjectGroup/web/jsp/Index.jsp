<%-- 
    Document   : Index
    Created on : Oct 16, 2016, 2:30:23 AM
    Author     : Ratchanon
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <jsp:include page="../jsp/Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
	</div>
        <div style="margin-bottom: 5%"></div>
       
        <% if(session.getAttribute("user")==null){ %>
        <a href="Login">Login</a><br>
        <%}%>
        <a href="jsp/Register.jsp">Register</a><br>
        <a href="SearchFoodServlet">Search Food</a><br>
        <a href="EditUser">Edit Profile</a><br>
        <a href="AddFood">Add Food</a><br>
        <% if(session.getAttribute("user")!=null){ %>
        <a href="Logout">Logout</a><br>
        <%}%>    
        <hr>
        <h2>Food ::</h2>
        <jsp:include page="../jsp/ListFood.jsp"></jsp:include>
        <hr>
        <jsp:include page="../jsp/Footer.jsp"></jsp:include>
    </body>
</html>
