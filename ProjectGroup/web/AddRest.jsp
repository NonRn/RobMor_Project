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
            <jsp:include page="Header.jsp" />
            <div id="header">
                <img class="poster" id="poster" src="pic/poster/poster.jpg">
            </div>
            <h1 style="text-align: center">Add Restaurant</h1>
            <hr>
            <div class="container">
                <div class="col-md-8 col-md-offset-3" style="padding:30px 30px;">
                    <form action="AddFood" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: right">Restaurant Name</label>
                            <div class="col-sm-8">
                                <input name="name" type="text" placeholder="Enter restaurant name" required="" class="form-control" style="margin-bottom: 15px">
                            </div>
                        </div>
                        <div class="form-group" style=" ">
                            <label class="col-sm-4 control-label" style="text-align: right;">Address</label>
                            <div class="col-sm-8">
                                <textarea rows='10' cols='45' name="address" type="text" placeholder="Enter address restaurant" wrap="hard" class="form-control" style="margin-bottom: 15px">
                                </textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: right">Number of Seat</label>
                            <div class="col-sm-8">
                                <input name="seat" type="number" class="form-control" style="margin-bottom: 15px">
                            </div>
                        </div>
                        <input type="text" value="123" name="fromrest" hidden="">
                            <div class="col-xs-6 col-md-6">
                                <input type="submit" value="Submit" class="btn btn-info btn-block">
                            </div>
                        <div class="col-xs-6 col-md-6">
                            <input type="button" class="btn btn-default btn-block" value="Back" onclick="window.location.replace('AddFood')">
                        </div>
                    </form>
                </div>
            </div>
            <%
            if (request.getAttribute("message") != null) {
        %>
                <script>
                window.alert("${message}");
                </script>
                <%}%>
                <jsp:include page="Footer.jsp"></jsp:include>
        </body>

        </html>
