<%-- 
    Document   : restaurant.jsp
    Created on : Nov 21, 2016, 12:17:31 PM
    Author     : Ratchanon
--%>

<%@page import="Project.int303.model.Restaurant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <div class="container">
            <center><%Restaurant r = Restaurant.getRestaurant(Integer.parseInt(request.getParameter("ResId")));%></center>

            <div class="row">
                <div class="col-sm-4"><strong>Restaurant Name</strong></div>
                <div class="col-sm-4"><strong>Address</strong></div>
                <div class="col-sm-4"><strong>Number of Seat</strong></div>

            </div>
            <div class="row">

                <div class="col-sm-4"><%=r.getName()%></div>
                <div class="col-sm-4"><%=r.getAddress()%></div>
                <div class="col-sm-4"><%=r.getSeat()%></div>



            </div>    

        </div><br><br>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>
