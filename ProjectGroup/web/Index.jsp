<%-- 
    Document   : Index
    Created on : Oct 16, 2016, 2:30:23 AM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>This Is H o m e P a g e ::</h1><hr>
        <% if(session.getAttribute("user")==null){ %>
        <a href="Login.jsp">Login</a><br>
        <%}%>
        <a href="Register.jsp">Register</a><br>
        <a href="SearchFoodServlet">Search Food</a><br>
        <a href="EditProfile.jsp">Edit Profile</a><br>
        <% if(session.getAttribute("user")!=null){ %>
        <a href="Logout">Logout</a><br>
        <%}%>
    </body>
</html>