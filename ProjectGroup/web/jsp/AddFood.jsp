<%-- 
    Document   : AddFood
    Created on : Oct 16, 2016, 4:00:34 PM
    Author     : Ratchanon
--%>

<%@page import="Project.int303.model.Restaurant"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Food Page</title>
    </head>
    <body>
        <jsp:include page="../jsp/Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <h1>Add Food ::</h1><hr>
        <script>
            function j() {
                window.location.assign("/ProjectGroup/jsp/AddRest.jsp");
            }
        </script>
        <form enctype="multipart/form-data" action="AddFood" method="POST">
            Food : <input type="text" name="name" required=""><br>
            Price : <input type="number" name="price" required=""><br>
            Type : <select name="type">
                <option value="food">Food</option>
                <option value="dessert">Dessert</option>
                <option value="drink">Drink</option>
            </select><br>
            Restaurant : <select name="restaurant">
                <option> </option>
                <%
                    ArrayList<Restaurant> ars = (ArrayList) request.getAttribute("rest");
                    for (Restaurant r : ars) {
                %>
                <option value="<%=r.getName()%>"><%=r.getName()%></option>    
                <%}%>
            </select><input type="button" value="Add Restaurant" onclick="j()"> <br>
            Detail : <textarea rows='3' cols='45' placeholder="บรรยาย" wrap="hard" name="detail"></textarea><br>
            Picture : <input type="file" name="picture"><br><br>
            <input type="submit"><hr>
        </form>
        <%
            if ((!(request.getAttribute("message").equals(""))) && request.getAttribute("message") != null) {
        %>
        <script> window.alert("${message}");</script>
        <%}%>
        <jsp:include page="../jsp/ListFood.jsp"></jsp:include>
            <hr>
        <jsp:include page="../jsp/Footer.jsp"></jsp:include>
    </body>
</html>
