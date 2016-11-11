<%-- 
    Document   : MyFavorite
    Created on : Nov 11, 2016, 6:40:57 AM
    Author     : Ratchanon
--%>

<%@page import="Project.int303.model.Food"%>
<%@page import="Project.int303.model.Favorite"%>
<%@page import="Project.int303.model.Favorite"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Project.int303.model.User"%>
<%@page import="Project.int303.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Favorite</title>
    </head>
    <body>
        <h1>${sessionScope.user}</h1>
        <hr>
        <%
            ArrayList<Food> fs = (ArrayList)request.getAttribute("ArFood");
            for (Food f : fs){
            request.setAttribute("f",f);
        %>
                ${f.foodName}
        <%    }
        %>
    </body>
</html>
