<%-- 
    Document   : SearchFood
    Created on : Oct 11, 2016, 4:45:12 PM
    Author     : Meen
--%>

<%@page import="java.util.List"%>
<%@page import="Project.int303.model.Food"%>
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
        <%
            List<Food> foods = (List) request.getAttribute("foods");
            String msg = (String) request.getAttribute("msg");
        %>
        <div class="container">
            <center><h1>Food List</h1>
                <form action="SearchFoodServlet" method="get">
                    <input type="text" name="search" class="block" placeholder="Search">
                    <input type="submit" value="Enter" class="btn btn-success">
                </form>
            </center><br><br>
            
            
            
            <%if (foods != null) {%>
            <table class="row">
                <tr>
                    <td class="col-md-2" >Picture</td>
                    <td class="col-md-1">Food Name</td>
                    <td class="col-md-1">Type</td>
                    <td class="col-md-1">Price</td>
                    <td class="col-md-1">Rating</td>
                </tr>
                <% for (Food f : foods) {%>
                <tr>
                    <td class="col-md-2"><img src="pic/<%=f.getFoodId()%>.png" class="img-responsive" style="margin-bottom: 5%; margin-top: 5%"></td>
                    <td class="col-md-1" style="margin-bottom: 5%; margin-top: 5%"><a href="Food?id=<%=f.getFoodId()%>"><%=f.getFoodName()%></a></td>
                    <td class="col-md-1" style="margin-bottom: 5%; margin-top: 5%"><%=f.getType()%></td>
                    <td class="col-md-1" style="margin-bottom: 5%; margin-top: 5%"><%=f.getPrice()%></td>
                    <td class="col-md-1" style="margin-bottom: 5%; margin-top: 5%"><%=f.getRating()%></td>
                </tr>
                <%}%>
            
            </table>
            <%} else {%>
            <center>" <%=msg%> "</center>
            <%}%>
        </div>
            <hr>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
