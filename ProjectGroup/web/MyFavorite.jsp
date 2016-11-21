<%-- 
    Document   : MyFavorite
    Created on : Nov 11, 2016, 6:40:57 AM
    Author     : Ratchanon
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="Project.int303.model.Food"%>
<%@page import="Project.int303.model.Favorite"%>
<%@page import="Project.int303.model.Favorite"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Project.int303.model.User"%>
<%@page import="Project.int303.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Favorite</title>
    </head>
    <body>
       <jsp:include page="Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        
        <div class="container">
            <center><h3>My Favorite</h3></center><br><br>
                
            <table class="row">
                
                    <tr>
                        <td class="col-md-2">Picture</td>
                        <td class="col-md-1">Food Name</td>
                        <td class="col-md-1">Price</td> 
                        <td class="col-md-1">Rate</td>
                    </tr>
            
            <%

                HashMap<Food, Integer> fs = (HashMap) request.getAttribute("ArFood");
                if (fs != null) {
                    int size = fs.size();
                    Iterator<Food> it = fs.keySet().iterator();
                    while (it.hasNext()) {
                        Food f = it.next();
                        int value = fs.get(f);
                        request.setAttribute("fff", f);
                        request.setAttribute("ratee", value);
                        
            %>
            
            
            <tr>
                <td class="col-md-2"><img src="pic/<%=f.getFoodId()%>.png" class="img-responsive" style="margin-bottom: 5%; margin-top: 5%"></td>
                <td class="col-md-1" style="margin-bottom: 5%; margin-top: 5%"><a href="Food?id=<%=f.getFoodId()%>">${fff.foodName}</a> </td> 
                <td class="col-md-1" style="margin-bottom: 5%; margin-top: 5%">${fff.price}</td>   
                <td class="col-md-1" style="margin-bottom: 5%; margin-top: 5%">${ratee}</td>   
            </tr>
            <%}
                } if(fs.size()==0){%>
                <center><h3>Does not exits</h3></center><br>
                <%}%>
            </table>
        </div>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>
