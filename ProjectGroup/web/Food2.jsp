<%-- 
    Document   : Food2
    Created on : Nov 8, 2016, 6:09:58 PM
    Author     : Ratchanon
--%>

<%@page import="Project.int303.model.User"%>
<%@page import="Project.int303.model.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${food.foodName}</title>
    </head>
    <body>
        <jsp:include page="/Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <div class="container">
            <center><h1>${food.foodName}</h1>
                <img src="pic/${food.foodId}.png" width="50%" height="30%" style="margin-bottom: 5%;"><br>
            </center>
            <div class="col-md-12" style="width: 55%; float: none; margin-left: 23%">
                <span style="font-size: 15pt;  margin-right: 30px" >Detail : </span> ${food.detail}<br><br>
                <span style="font-size: 15pt;  margin-right: 30px" >Price : </span> ${food.price}<br><br>
                <span style="font-size: 15pt;  margin-right: 30px" >Type : </span> ${food.type}<br><br>
                <span style="font-size: 15pt;  margin-right: 30px" >Rating : </span> ${food.rating}<br><br>
            
            <form action="Favorite" method="get">
                <input type="text" name="foodId" hidden="" value="${food.foodId}">
                <input type="submit" value="Favorite" class="btn btn-info">
            </form>


            <br>
            <br>
            <br>
            <form action="Comment" method="GET">
                <input type="text" name="foodId" hidden="" value="${food.foodId}">
                Comment : <textarea name="comment" class="form-control input-md"></textarea><br>
                Rate : 
                <div class="iradio_flat checked">
                    <input type="radio" name="rate" value="1" style="width: 5%">1 &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="rate" value="2" >2 &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="rate" value="3">3 &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="rate" value="4">4 &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="rate" value="5">5 <br><br>
                </div>
                <input type="submit" value="Submit" class="btn btn-info">
            </form>
            <%
                if (request.getAttribute("message") != null) {
            %>
            <script> window.alert("${message}");</script>
            <%}%>
            <h3>History Comment</h3>
            <%
                session = request.getSession();
                ArrayList<Comment> ac = (ArrayList) request.getAttribute("ArComment");
                for (Comment c : ac) {
                    User u = new User();
                    User u2 = u.getUserById(c.getUserId());
            %>
            <div class="btn btn-success" style="margin-top: 5%; margin-bottom: -2%">
                <span style="margin-right: 2%"><%=u2.getFname()%> <%=u2.getLname()%> :</span>   
                <%=c.getDetail()%>
            </div>
            
                
                
                <div class="row">
                    <div class="col-md-2">
                    <form action="Like" method="GET">
                        <input type="text" name="comId" hidden="" value="<%=c.getCommentId()%>">
                        <input type="text" name="id" hidden="" value="${food.foodId}">
                        <input type="submit" value="Like" class="btn btn-info" style="margin-left: 50%">
                    </form>
                    </div>
                    <div class="col-md-2">
                    <% if (session.getAttribute("user") != null) {
                    int ppp = User.getUser((String) session.getAttribute("user")).getUserId();
                    if (u2.getUserId() == ppp) {%>

                    <form action="DC" method="GET"> <!-- DC = Delete Comment -->
                        <input type="text" name="comId" hidden="" value="<%=c.getCommentId()%>">
                        <input type="text" name="id" hidden="" value="${food.foodId}">
                        <input type="submit" value="delete" class="btn btn-danger">
                    </form> 
                    </div>
                        <div class="col-md-2">
                    <% }
                }%>
                    <span class="glyphicon glyphicon-heart" aria-hidden="true" style="font-size: 18pt; margin-left: 5%"></span>
                    <%=c.getLikeCount()%>
                        </div>
                    </div> 
                    <%}%>
            <hr>
            </div>
            
        </div>
        <jsp:include page="/Footer.jsp"></jsp:include>
    </body>
</html>
