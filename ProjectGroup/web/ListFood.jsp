<%@page import="Project.int303.model.Food"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Food> fs = Food.findFood();
    for(Food f : fs){
        request.setAttribute("f", f);
    
%>
<a href="Food?id=${f.foodId}">${f.foodName}</a><br>
<%}%>