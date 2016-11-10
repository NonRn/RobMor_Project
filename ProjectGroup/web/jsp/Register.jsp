<%-- 
    Document   : Register
    Created on : Oct 15, 2016, 4:19:53 PM
    Author     : Ratchanon
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <jsp:include page="../jsp/Header1.jsp"/>        
        <div id="header">
            <img class="poster">
        </div>
        <div style="margin-bottom: 5%"></div>
        <div>
                <form action="../RegisterUser" method="GET" class="form-horizontal">
                    <h1 style="text-align: center">Register</h1><hr>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="fname">First name</label>  
                        <div class="col-md-4">
                            <input id="fname" name="fname" type="text" placeholder="Enter your Firstname" class="form-control input-md">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="lname">Last name</label>  
                        <div class="col-md-4">
                            <input id="lname" name="lname" type="text" placeholder="Enter your Lastname" class="form-control input-md" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label " for="email">Email</label>  
                        <div class="col-md-4">
                            <input id="email" name="email" type="email" placeholder="Enter your Email Address" class="form-control input-md" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="gender">Gender</label>
                        <div class="col-md-4"> 
                            <label class="radio-inline" for="gender-0">
                                <input type="radio" name="gender" id="gender-0" value="female">
                                Female
                            </label> 
                            <label class="radio-inline" for="gender-0">
                                <input type="radio" name="gender" id="gender-1" value="male">
                                Male
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="tel">Tel.</label>  
                        <div class="col-md-4">
                            <input id="tel" name="tel" type="tel" placeholder="Enter your Telephone Number" class="form-control input-md" required="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Date" >Date</label>  
                            <div class="col-md-4">
                                <div style="margin-right: 220px">
                                    <select name="year">
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                    </select>
                                    <select name="month">
                                        <option value="1">Jan</option>
                                        <option value="2">Feb</option>
                                        <option value="3">Mar</option>
                                        <option value="4">Apr</option>
                                        <option value="5">May</option>
                                        <option value="6">Jun</option>
                                        <option value="7">Jul</option>
                                        <option value="8">Aug</option>
                                        <option value="9">Sep</option>
                                        <option value="10">Oct</option>
                                        <option value="11">Nov</option>
                                        <option value="12">Dec</option>
                                    </select>
                                    <select name="day">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="username">Username</label>  
                            <div class="col-md-4">
                                <input id="username" name="username" type="text" placeholder="Enter your Username" class="form-control input-md" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="password">Password</label>  
                            <div class="col-md-4">
                                <input id="password" name="pass" type="password" placeholder="Enter your Password" class="form-control input-md" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="password">Confirm Password</label>  
                            <div class="col-md-4">
                                <input id="passcon" name="passcon" type="password" placeholder="Enter your Confirm Password" class="form-control input-md" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label"> </label>  
                            <div class="col-md-4">
                                <input type="submit" value="Register" class="form-control input-md">
                            </div>
                        </div>
                </form>
            </div>
                <%
                    if (request.getAttribute("message") != null) { %>
                <script>
                    window.alert("${requestScope.message}");
                </script>
                <%}%>
                <jsp:include page="../jsp/ListFood.jsp"></jsp:include>
                    <hr>
                <jsp:include page="../jsp/Footer.jsp"></jsp:include>
                </body>
                </html>
