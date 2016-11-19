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

        <h1 style="text-align: center">Add Restaurant</h1>
        <form action="AddFood">
            <div class="form-group">
                <label class="col-md-4 control-label" style="text-align: right">Restaurant Name</label>
                <div class="col-md-4">
                    <input name="name" type="text" placeholder="Enter restaurant name" required="" class="form-control input-md" style="margin-bottom: 15px">
                </div>
            </div>
            
            
            <div class="form-group" style=" ">
                <label class="col-md-4 control-label" style="text-align: right;" >Address</label>
                <div class="col-md-4">
                    <textarea rows='10' cols='45' name="address" type="text" placeholder="Enter address restaurant" wrap="hard" class="form-control input-md" style="margin-bottom: 15px">
                    </textarea>
                </div>
            </div>
            
             <div class="form-group">
                <label class="col-md-4 control-label" style="text-align: right">Number of Seat</label>
                <div class="col-md-4">
                    <input name="seat" type="number" class="form-control input-md" style="margin-bottom: 15px">
                </div>
            </div>
            
            <input type="text" value="123" name="fromrest" hidden="">
            
            <div class="form-group">
                <label class="col-md-4 control-label"> </label>
                <div class="col-md-4">
                    <input type="submit" value="Submit" class="btn btn-info " style="margin-bottom: 15px"><br><br>
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
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
