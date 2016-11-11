<%-- 
    Document   : EditProfile
    Created on : Oct 16, 2016, 1:38:34 AM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EditProfile Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"/>
        <div id="header">
            <img class="poster" id="poster" src="pic/poster/poster.jpg">
        </div>
        <div style="margin-bottom: 5%"></div>
        <h1 style="text-align: center">Edit Profile</h1> <hr>
            <form action="EditUser" Method="GET" class="form-horizontal">
                    <fieldset>
                <table>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="id">Customer ID :</label>  
                            <div class="col-md-4">
                                <input id="id" name="id" type="text" class="form-control input-md" value="${requestScope.user.userId}" readonly="">
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="col-md-4 control-label" for="fname">First Name :</label>  
                            <div class="col-md-4">
                                <input id="fname" name="fname" type="text" class="form-control input-md" value="${requestScope.user.fname}" required="">
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="col-md-4 control-label" for="lname">Last Name :</label>  
                            <div class="col-md-4">
                                <input id="lname" name="lname" type="text" class="form-control input-md" value="${requestScope.user.lname}" required="">
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="col-md-4 control-label" for="fname">Gender :</label>  
                            <div class="col-md-4">
                                <input id="gender-0" name="gender" type="radio"  value="Female" required=""/> Female
                                <input id="gender-1" name="gender" type="radio"  value="male" required=""/> Male
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-md-4 control-label" for="dob">Date Of Birth :</label>  
                            <div class="col-md-4">
                                <input type="text" class="form-control input-md" value="${requestScope.user.dob}" readonly="">
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="col-md-4 control-label" for="telno">Phone :</label>  
                            <div class="col-md-4">
                                <input id="telno" name="telno" type="text" class="form-control input-md" value="${requestScope.user.telno}" required="">
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="col-md-4 control-label" for="username">Username :</label>  
                            <div class="col-md-4">
                                <input id="username" name="username" type="text" class="form-control input-md" value="${requestScope.user.username}" readonly="">
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="col-md-4 control-label" for="email">Email :</label>  
                            <div class="col-md-4">
                                <input id="email" name="email" type="text" class="form-control input-md" value="${requestScope.user.email}" readonly="">
                            </div>
                        </div>
                </table>
                            <br>
                            <div class="form-group">
                            <label class="col-md-4 control-label" for="edit"></label>  
                            <div class="col-md-4">
                                <input type="submit" class="form-control input-md" value="EDIT" style="color: white; background-color: skyblue">
                            </div>
                        </div>
                </fieldset>
            </form>
                            <br>
                            <div class="form-group" style="width: 400px ; height: 10px ;">
                            <div class="col-md-4">
                                <input type="button" class="form-control input-md" value="Back" style="color: white; background-color: skyblue" onclick="history.back()">
                            </div>
                        </div>
            <hr>
            <jsp:include page="Footer.jsp"></jsp:include>
            </body>
            </html>
