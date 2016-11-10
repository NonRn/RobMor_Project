<%-- 
    Document   : Food2
    Created on : Nov 8, 2016, 6:09:58 PM
    Author     : Ratchanon
--%>

<%@page import="Project.int303.model.User"%>
<%@page import="Project.int303.model.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${food.foodName}</title>
    </head>
    <body>
        <jsp:include page="../jsp/Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <h1>${food.foodName}</h1>
        <img src="pic/${food.foodId}.png" width="30%" height="30%">
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
            if (request.getAttribute("message") != null) {
        %>
        <script> window.alert("${message}");</script>
        <%}%>
        <h3>C o m m e n t ::</h3>
        <%
            session = request.getSession();
            ArrayList<Comment> ac = (ArrayList) request.getAttribute("ArComment");
            for (Comment c : ac) {
                User u = new User();
                User u2 = u.getUserById(c.getUserId());
        %>
        <p><%=u2.getFname()%> <%=u2.getLname()%></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=c.getDetail()%> </p>
        <p><%=c.getLikeCount()%>
        <form action="Like" method="GET">
            <input type="text" name="comId" hidden="" value="<%=c.getCommentId()%>">
            <input type="text" name="id" hidden="" value="${food.foodId}">
            <input type="submit" value="Like">
        </form>
        <% if (session.getAttribute("user") != null) {
                        int ppp = User.getUser((String) session.getAttribute("user")).getUserId();
                        if (u2.getUserId() == ppp) {%>

        <form action="Delete?id=${food.foodId}" method="GET">
            <input type="text" name="comId" hidden="" value="<%=c.getCommentId()%>">
            <input type="submit" value="delete">
        </form>  
        <% }
                    } %>
        <%}%>
        <jsp:include page="../jsp/ListFood.jsp"></jsp:include>
            <hr>
        <jsp:include page="../jsp/Footer.jsp"></jsp:include>
    </body>
</html>
