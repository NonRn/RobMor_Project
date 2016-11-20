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
                    <jsp:include page="Header.jsp" />
                    <div id="header">
                        <img class="poster" id="poster" src="pic/poster/poster.jpg">
                    </div>
                    <script>
                    function j() {
                        window.location.assign("/ProjectGroup/AddRest.jsp");
                    }
                    </script>
                    <div class="container" style="padding:30px 30px;">
                        <div class="col-md-6 col-md-offset-3">
                            <form enctype="multipart/form-data" action="AddFood" method="POST" class="form-horizontal">
                                <h1 style="text-align: center">Review Food</h1>
                                <hr>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Food Name</label>
                                    <div class="col-sm-8">
                                        <input name="name" type="text" placeholder="Enter food name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Price</label>
                                    <div class="col-sm-8">
                                        <input name="price" type="number" placeholder="Enter Price " class="form-control" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label ">Type</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" name="type">
                                            <option value="food">Food</option>
                                            <option value="dessert">Dessert</option>
                                            <option value="drink">Drink</option>
                                        </select>
                                        <br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Restaurant</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" name="restaurant">
                                            <option> </option>
                                            <%
                            ArrayList<Restaurant> ars = (ArrayList) request.getAttribute("rest");
                            for (Restaurant r : ars) {
                        %>
                                                <option value="<%=r.getName()%>">
                                                    <%=r.getName()%>
                                                </option>
                                                <%}%>
                                        </select><br>
                                        <input class="btn btn-primary" type="button" value="Add Restaurant" onclick="j()">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Detail</label>
                                    <div class="col-sm-8">
                                        <textarea rows='3' cols='45' name="detail" type="text" placeholder="Enter Detail" wrap="hard" class="form-control">
                                        </textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Picture</label>
                                    <div class="col-sm-8">
                                        <input name="picture" type="file" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label"> </label>
                                    <div class="col-sm-8">
                                        <input type="submit" value="Submit" class="btn btn-info btn-block">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <%
            if ((!(request.getAttribute("message").equals(""))) && request.getAttribute("message") != null) {
        %>
                        <script>
                        window.alert("${message}");
                        </script>
                        <%}%>
                            <jsp:include page="Footer.jsp"></jsp:include>
                </body>

                </html>
