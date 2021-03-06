<%-- 
    Document   : Header
    Created on : Nov 9, 2016, 1:54:35 PM
    Author     : commo
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/myStyle.css">
    <link rel="stylesheet" type="text/css" href="css/myStyle1.css">
    <link rel="stylesheet" type="text/css" href="css/myStyle2.css">
    <link rel="stylesheet" type="text/css" href="css/dropdown.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<div class="nav">
    <div class="navpic">
        <a href="Index.jsp"><img class="logo" src="pic/header/header1.png"></a>

    </div>

    <div class="navcontent">
        <form action="SearchFoodServlet" method="GET">

            <ul class="navcontent">
                <li><a class="link" href="food.jsp" >Food</a></li>
                <li><a class="link" href="dessert.jsp">Dessert</a></li>
                <li><a class="link" href="drink.jsp">Drink</a></li>
                <li><input type="text" name="search" class="block"></li>
                <li><input type="submit"  value="Search" class="search-block"></li>
                <div class="dropdown">
                    <li onclick="myFunction()" class="dropbtn">MENU</li>
                    <div id="myDropdown" class="dropdown-content" style="text-align: left; background-color: #fff; font-size: 10pt">
                        <a class="list-group-item" href="EditUser"><span class="glyphicon glyphicon-user"></span> Edit Profile</a>
                        <a class="list-group-item" href="AddFood"><span class="glyphicon glyphicon-pencil"></span> Add Food</a>
                        <a class="list-group-item" href="ListFavorite"><span class="glyphicon glyphicon-star"></span> My Favortie</a>
                        <% if (session.getAttribute("user") == null) { %>
                        <a class="list-group-item" href="Login"><span class="glyphicon glyphicon-off"></span> Login</a>
                        <%} else {%>
                        <a class="list-group-item" href="Logout"><span class="glyphicon glyphicon-off"></span> Logout</a>
                        <%}%>
                    </div>
                </div>
            </ul>

        </form>

    </div>
</div>

<script>
    /* When the user clicks on the button, 
     toggle between hiding and showing the dropdown content */
    function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

// Close the dropdown if the user clicks outside of it
    window.onclick = function (event) {
        if (!event.target.matches('.dropbtn')) {

            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                }
            }
        }
    }
</script>


