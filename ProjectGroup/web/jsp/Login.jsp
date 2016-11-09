<%-- 
    Document   : Login
    Created on : Nov 9, 2016, 2:33:46 PM
    Author     : ยีนส์
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>LOGIN</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/grayscale.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="../http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <jsp:include page="../jsp/Header.jsp"/>
    <!-- Navigation -->
    
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container" >
           
            <div class="navbar-header">
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                
                <a class="navbar-brand page-scroll" href="#page-top">
                    

                </a>
            </div>
        </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <center><img class="brand-heading" src="../img/logo3.png" width="700px" height="300px" style="margin-left: -25px;padding-top:20px"></center>
                        <center><a href="#about" class="btn btn-circle page-scroll" style="margin-bottom: 30px">
                            <i class="fa fa-angle-double-down animated"></i>
                            </a></center>
                    </div>
                </div>
            </div>
            <br>
            <br>
            <h1>WELCOME TO ROB-MOR</h1>
        </div>
    </header>

    <!-- About Section -->
    <section class="container content-section text-center" style="background: #16222A;
background: -webkit-linear-gradient(to left, #16222A , #3A6073);
background: linear-gradient(white,black); width: 100%;height: auto">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
            <div class="panel-body loginbody">
                        <form role="form" action="Login" method="post">
                            <fieldset>
                                <img src="../img/logo2.png" width="650px" height="200px" style="margin-bottom: 30px; margin-left: 40px">
                                <div class="form-group">
                                    <center><input class="form-control" placeholder="ID USER" value="${param.username}" name="username" type="username" style="width: 230px; margin-bottom: 10px; "></center>
                                </div>
                                <div class="form-group">
                                    <center><input class="form-control" placeholder="Password" name="password" type="password" value="" style="width: 230px; margin-bottom: 10px"></center>
                                </div>
               
                                <center><input class="form-control" type="submit" class="btn btn-lg btn-success btn-block" value="Login" style="width: 150px; background-color:#1bb97c ; color: white"></center> 
                            </fieldset>
                        </form>
                                ${message}<br>
                                <a href="/Forgotpass.jsp"> Forgot Password </a>
                    </div>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                
            </div>
        </div>
    </section>

   
                                <section id="about"></section> 
    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../js/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->

    <!-- Custom Theme JavaScript -->
    <script src="../js/grayscale.js"></script>

</body>

</html>
