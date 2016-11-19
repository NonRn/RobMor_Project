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
        <jsp:include page="Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <h1 style="text-align: center">Add Restaurant</h1><hr>
        <form action="AddFood" class="form-horizontal">
            <div class="form-group">
                <label class="col-md-4 control-label" for="name">Name :</label>  
                <div class="col-md-4">
                    <input id="username" name="name" type="text" placeholder="ชื่อร้านอาหาร" class="form-control input-md" required="">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="address">Address :</label>  
                <div class="col-md-4">
                    <textarea rows='10' cols='45' name="address" type="text" placeholder="ที่อยู่" class="form-control input-md" required=""></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">Seat :</label>  
                <div class="col-md-4">
                    <input id="username" name="seat" type="number" placeholder="จำนวนที่นั่ง" class="form-control input-md" required="">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="username"></label>
                <div class="col-md-4">
                    <input type="text" value="123" name="fromrest" hidden="">
                    <br>
                    <input type="submit" class="form-control input-md" style="background-color: lightcyan"><br>
                </div>
            </div>
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
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
