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
        <jsp:include page="Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <h1 style="text-align: center">Add Food</h1><hr>
        <script>
            function j() {
                window.location.assign("/ProjectGroup/AddRest.jsp");
            }
        </script>
        <form enctype="multipart/form-data" action="AddFood" method="POST" class="form-horizontal">
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">Food :</label>  
                <div class="col-md-4">
                    <input id="username" name="name" type="text" placeholder="ชื่ออาหาร" class="form-control input-md" required="">

                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">Price :</label>  
                <div class="col-md-4">
                    <input id="username" name="price" type="number" placeholder="ราคา" class="form-control input-md" required="">

                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">Type :</label>  
                <div class="col-md-4">
                    <select id="username" name="type" class="form-control input-md" required="">
                        <option value="food">Food</option>
                        <option value="dessert">Dessert</option>
                        <option value="drink">Drink</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">Restaurant :</label>  
                <div class="col-md-4">
                    <select name="restaurant" class="form-control input-md">
                        <option> </option>
                        <%
                            ArrayList<Restaurant> ars = (ArrayList) request.getAttribute("rest");
                            for (Restaurant r : ars) {
                        %>
                        <option value="<%=r.getName()%>"><%=r.getName()%></option>    
                        <%}%>
                    </select><input type="button" value="Add Restaurant" onclick="j()" class="form-control input-md" style="background-color: lightgrey"> <br>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">Detail :</label>  
                <div class="col-md-4">
                    <textarea rows='3' cols='45' placeholder="บรรยาย" wrap="hard" name="detail" class="form-control input-md"></textarea>

                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">Picture :</label>  
                <div class="col-md-4">
                    <input type="file" name="picture" class="form-control input-md">
                </div>
            </div>
                    <div class="form-group">
                <label class="col-md-4 control-label" for="username"></label>  
                <div class="col-md-4">
                    <input type="submit" class="form-control input-md" style="background-color: cornsilk"><hr>
                </div>
            </div>
        </form>
        <%
            if ((!(request.getAttribute("message").equals(""))) && request.getAttribute("message") != null) {
        %>
        <script> window.alert("${message}");</script>
        <%}%>
        <hr>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
