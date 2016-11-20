<%@page import="java.util.List"%>
<%@page import="Project.int303.model.Food"%>
<%@page import="java.util.ArrayList"%>
<div class="container">
    <div class="row">
        <%
            List<Food> fs = Food.getFood("food");
            int a = fs.size();
            int b = 0 ;
            if (fs != null) {
                for (Food f : fs) {
                    b++;
                    if (b > a-6) {
                        request.setAttribute("f", f);
                        

        %>
        <div class="col-lg-4" style="margin-bottom: 5%">
            <h3><a href="Food?id=${f.foodId}">${f.foodName}</a></h3><br>
            <center><img src="pic/${f.foodId}.png" class="img-responsive"><br></center>
            ${f.detail}
        </div>
        <%}}}%>
    </div>

    <div class="row">
        <%
            List<Food> des = Food.getFood("dessert");
            int d = des.size() ;
            int c = 0;
            if (des != null) {
                for (Food f : des) {
                    c++;
                    if (c > d-6) {
                        request.setAttribute("f", f);
                        
        %>
        <div class="col-lg-4"  style="margin-bottom: 5%">
            <h3><a href="Food?id=${f.foodId}">${f.foodName}</a></h3><br>
            <center><img src="pic/${f.foodId}.png" class="img-responsive"><br></center>
            ${f.detail}
        </div>
        <%}}}%>
    </div>

    <div class="row">
        <%
            List<Food> drs = Food.getFood("drink");
            int g = drs.size() ;
            int e = 0;
            if (drs != null) {
                for (Food f : drs) {
                    g++ ;
                    if (e > g-6) {
                        request.setAttribute("f", f);
        %>
        <div class="col-lg-4"  style="margin-bottom: 5%">
            <h3><a href="Food?id=${f.foodId}">${f.foodName}</a></h3><br>
            <center><img src="pic/${f.foodId}.png" class="img-responsive"><br></center>
            ${f.detail}
        </div>
        <%}}}%>
    </div>


</div>