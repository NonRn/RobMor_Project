<%-- 
    Document   : Team
    Created on : Nov 17, 2016, 2:46:43 PM
    Author     : Ratchanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<mata name="viewport" content="width=device-width , initial-scale=1.0">
	<title>Robmor</title>
	<link rel="stylesheet" type="text/css" href="myStyle.css">
	<link rel="stylesheet" type="text/css" href="myStyle1.css">
	
</head>
<body>
	<jsp:include page="Header.jsp"/>

	<!-- header -->
	<div id="header">
		<img class="poster" src="pic/poster/poster4.jpg">
	</div>

	<!-- body -->
        <div class="container">
            <div class="row">

                <div class="col-md-3" style="margin-top: 7% ; margin-bottom: 7%">
			<img src="pic/pic/team/team1.png" alt="non">
			<h3>Ratchanon Bunchamroon</h3>
			<h5>Model & Servlet Dev.</h5>
			<h5>58130500062</h5>
                        
		</div>
		<div class="col-md-3" style="margin-top: 7% ; margin-bottom: 7%">
			<img src="pic/pic/team/team7.png" alt="yeen">
			<h3>Suparerk Phueangudom </h3>
			<h5>Font-End Dev.</h5>
                        <h5>58130500073</h5>
		</div>
		<div class="col-md-3" style="margin-top: 7% ; margin-bottom: 7%">
			<img src="pic/pic/team/team3.png" alt="meen">
			<h3>Panupong Choragam</h3>
			<h5>Font-End & Servlet Dev.</h5>
                        <h5>58130500058</h5>
		</div>
		<div class="col-md-3" style="margin-top: 7% ; margin-bottom: 7%">
			<img src="pic/pic/team/team4.png" alt="you">
			<h3>Patchareeporn Sricharoen</h3>
			<h5>Font-End Dev.</h5>
                        <h5>58130500055</h5>
		</div>
            </div>
	</div>






	<!-- footer -->
	<jsp:include page="Footer.jsp"></jsp:include>
	
</body>
</html>
