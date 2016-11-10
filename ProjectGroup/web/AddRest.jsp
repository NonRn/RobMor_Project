<%-- 
    Document   : AddRest
    Created on : Oct 16, 2016, 3:58:23 PM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restaurant Page</title>
    </head>
    <body>
        <jsp:include page="../jsp/Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <h1>Add Restaurant ::</h1><hr>
        <form action="../AddFood">
            Name :<input type="text" name="name" required=""><br>
            Address :<textarea rows='10' cols='45' placeholder="ที่อยู่ร้าน" wrap="hard" name="address"></textarea><br>
            Seat :<input type="number" name="seat"> <br>
            <input type="text" value="123" name="fromrest" hidden="">
            <input type="submit"><br>
        </form>
        <%
            if (request.getAttribute("message") != null) {
        %>
        <script> window.alert("${message}");</script>
        <%}%>
        <%
            if (request.getParameter("name") != null) {
        %>
        <input type="button" class="btn btn-info" value="Back" onclick="history.back();history.back();">
        <% } else { %>
        <input type="button" class="btn btn-info" value="Back" onclick="history.back();">
        <%}%>
            <hr>
        <jsp:include page="../jsp/Footer.jsp"></jsp:include>
    </body>
</html>
