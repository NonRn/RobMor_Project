<%@page import="java.util.List"%>
<%@page import="Project.int303.model.Food"%>
<%@page import="java.util.ArrayList"%>
<div class="container">
    <div class="row">
<%
    List<Food> fs = Food.getFood("food");

    if(fs!=null){
    for (Food f : fs) {
            request.setAttribute("f", f);
          
%>
        <div class="col-lg-4" style="margin-top: 5%">
            <a href="Food?id=${f.foodId}">${f.foodName}</a><br><br><br>
            <img src="pic/${f.foodId}.png" class="img-responsive"><br>
            ${f.detail}
        </div>
<%}}%>
    </div>

    <div class="row">
<%
    List<Food> des = Food.getFood("dessert");
    if(des!=null){
    for(Food f : des){
        request.setAttribute("f", f);
%>
        <div class="col-lg-4"  style="margin-top: 5%">
            <a href="Food?id=${f.foodId}">${f.foodName}</a><br>
             <img src="pic/${f.foodId}.png" class="img-responsive">
            ${f.detail}
        </div>
<%}}%>
    </div>

    <div class="row">
<%
    List<Food> drs = Food.getFood("drink");
    if(drs!=null){
    for(Food f : drs){
        request.setAttribute("f", f);
    
%>
        <div class="col-lg-4"  style="margin-top: 5%">
            <a href="Food?id=${f.foodId}">${f.foodName}</a><br>
             <img src="pic/${f.foodId}.png" class="img-responsive">
            ${f.detail}
        </div>
<%}}%>
    </div>
    

</div>