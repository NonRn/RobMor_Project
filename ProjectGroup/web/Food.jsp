<%-- 
    Document   : Food
    Created on : Oct 17, 2016, 6:47:55 PM
    Author     : Ratchanon
--%>

<%@page import="Project.int303.model.User"%>
<%@page import="Project.int303.model.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Project.int303.model.Food"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Page</title>
    </head>
    <body>
        <h1>${food.foodName}</h1><hr>
        ${food.price}<br>
        ${food.type}<br>
        ${food.detail}<br>
        ${food.rating}<br>
        .
        .
        .
        <br>
        <br>
        <br>
        <form action="Comment" method="GET">
            <input type="text" name="foodId" hidden="" value="${food.foodId}">
            Comment : <textarea name="comment"></textarea><br>
            Rate : <input type="radio" name="rate" value="1">1 &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="rate" value="2">2 &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="rate" value="3">3 &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="rate" value="4">4 &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="rate" value="5">5 <br>
            <input type="submit">
        </form>
         <% 
            if(request.getAttribute("message")!=null){ 
        %>
        <script> window.alert("${message}"); </script>
        <%}%>
        <h3>C o m m e n t ::</h3>
        <%
            ArrayList<Comment> ac = (ArrayList)request.getAttribute("ArComment");
            for (Comment c : ac) {
                User u = new User();
                User u2 = u.getUserById(c.getUserId());
        %>
        <div>
            <p><%=u2.getFname()%> <%=u2.getLname()%></p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=c.getDetail()%> </p>
            <p><%=c.getLikeCount()%></p>
        </div>
        <%}%>
        
    </body>
</html>