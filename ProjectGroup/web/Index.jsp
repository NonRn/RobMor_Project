<%-- 
    Document   : Index
    Created on : Oct 16, 2016, 2:30:23 AM
    Author     : Ratchanon
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/myStyle.css">
    <link rel="stylesheet" type="text/css" href="css/myStyle1.css">
    <link rel="stylesheet" type="text/css" href="css/myStyle2.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
</head>
    <body>
        <jsp:include page="Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
	</div>
        <div style="margin-bottom: 5%"></div>
       
        <center><h2>List Food</h2></center>
        
        
        <jsp:include page="ListFood.jsp"></jsp:include>
        <hr>
        <jsp:include page="Footer.jsp"></jsp:include>
        
    </body>
</html>
