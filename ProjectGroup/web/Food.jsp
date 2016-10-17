<%-- 
    Document   : Food
    Created on : Oct 17, 2016, 6:47:55 PM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Page</title>
    </head>
    <body>
        <h1>${food.foodName}</h1><hr>
        ${food.price}<br>
        ${food.type}<br>
        ${food.detail}<br>
        ${food.rating}<br>
        
    </body>
</html>
