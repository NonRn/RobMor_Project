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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
</head>

<div class="nav">
    <div class="navpic">
        <a href="/ProjectGroup"><img class="logo" src="pic/header/header1.png"></a>
    </div>

    <div class="navcontent">
        <form action="SearchFoodServlet" method="GET">
        <ul class="navcontent">
            <li><a class="link" href="food.html" >Food</a></li>
            <li><a class="link" href="dessert.html">Dessert</a></li>
            <li><a class="link" href="drink.html">Drink</a></li>
            <li><input type="text" name="search" class="block"></li>
            <li><input type="submit"  value="Search" class="search-block"></li>
            	
        </ul>
        </form>
        
    </div>
</div>

