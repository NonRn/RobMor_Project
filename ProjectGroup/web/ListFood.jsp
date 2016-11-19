<%@page import="java.util.List"%>
<%@page import="Project.int303.model.Food"%>
<%@page import="java.util.ArrayList"%>
<%
    List<Food> fs = Food.getFood("food");

    if(fs!=null){
    for (Food f : fs) {
            request.setAttribute("f", f);
          
%>
<a href="Food?id=${f.foodId}">${f.foodName}</a><br>
<%}}%>
<%
    List<Food> des = Food.getFood("dessert");
    if(des!=null){
    for(Food f : des){
        request.setAttribute("f", f);
%>
<a href="Food?id=${f.foodId}">${f.foodName}</a><br>
<%}}%>
<%
    List<Food> drs = Food.getFood("drink");
    if(drs!=null){
    for(Food f : drs){
        request.setAttribute("f", f);
    
%>
<a href="Food?id=${f.foodId}">${f.foodName}</a><br>
<%}}%>