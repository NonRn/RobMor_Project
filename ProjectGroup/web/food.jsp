<%-- 
    Document   : food.jsp
    Created on : Nov 20, 2016, 1:58:38 PM
    Author     : commo
--%>

<%@page import="java.util.List"%>
<%@page import="Project.int303.model.Food"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster1.jpg">
	</div>
        <div style="margin-bottom: 5%"></div>
        <center><h2>Food Menu</h2></center>
        <div class="container">
            <div class="row">
                <%
                    List<Food> fs = Food.getFood("food");
                    if (fs != null) {
                        for (Food f : fs) {
                                request.setAttribute("f", f);
                %>
                <div class="col-lg-4" style="margin-bottom: 5%">
                    <h3><a href="Food?id=${f.foodId}">${f.foodName}</a></h3><br>
                    <center><img src="pic/${f.foodId}.png" class="img-responsive"><br></center>
                    ${f.detail}
                </div>
                <%}}%>
            </div>

        </div>
            
            
        <jsp:include page="Footer.jsp"/>
    </body>
</html>
