<%-- 
    Document   : MyFavorite
    Created on : Nov 11, 2016, 6:40:57 AM
    Author     : Ratchanon
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
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
        <jsp:include page="Header.jsp"/>
        <h1>${sessionScope.user}</h1>
        <hr>
        <%  
            HashMap<Food,Integer> fs = (HashMap)request.getAttribute("ArFood");
            int size = fs.size();
            Iterator<Food> it=fs.keySet().iterator();
            while(it.hasNext()){
            Food f=it.next();
            int value=fs.get(f); 
            request.setAttribute("fff", f);
            request.setAttribute("ratee", value);
        %>
            ${fff.foodName}  ${ratee}
        <%    }
        %>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>
