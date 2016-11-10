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
        <jsp:include page="../jsp/Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <%
            List<Food> foods = (List) request.getAttribute("foods");
            String msg = (String) request.getAttribute("msg");
        %>
        <h1>Food List</h1>
        <form action="SearchFoodServlet" method="get">
            <input type="text" name="search">ค้นหา <br>
            <input type="submit" value="Enter">
        </form>

        <%if (foods != null) {%>
        <table>
            <% for (Food f : foods) {%>
            <tr>
                <td><%=f.getFoodId()%></td>
                <td><%=f.getFoodName()%></td>
                <td><%=f.getType()%></td>
                <td><%=f.getPrice()%></td>
                <td><%=f.getRating()%></td>
            </tr>
            <%}%>
        </table>
        <%} else {%>
        <%=msg%>
        <%}%>
        <jsp:include page="../jsp/ListFood.jsp"></jsp:include>
            <hr>
        <jsp:include page="../jsp/Footer.jsp"></jsp:include>
    </body>
</html>
