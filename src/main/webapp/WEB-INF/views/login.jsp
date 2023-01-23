<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link href="/pos/static/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/pos/static/css/stylesheet/navbar.css" rel="stylesheet" type="text/css">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Navbar</title>
	<link rel="stylesheet" href="/pos/static/css/stylesheet/navbar.css">
</head>
<body>
		<div class="hello">
				<a href="#"><img src="/pos/static/images/logo.png"></a>
		</div>
	<nav>
		<ul class="nav-list">
			<li class="nav-items"><a href="/"></a></li>
			<li class="nav-items"><a href="front.html">Home</a></li>
			<li class="nav-items"><a href="about.html">About</a></li>
			<!-- <li class="nav-items"><a href="/">Services</a></li>
			<li class="nav-items"><a href="/">Career</a></li> -->
			<li class="nav-items"><a href="contact.html">Contact</a></li>
		</ul>
	</nav>
</body>
		      
<body class="bg-image" style="background-image: url('/pos/static/images/image7-800x600.jpg'); background-size: 100%; background-repeat: no-repeat;">
	<form action="login.html" method="post">
	
<div class="text" align="center" style="margin-top: 40px;">
<h2><p style="color: white;font-style:fantasy ; font-family:copperplate;font-size: 2em ";>ALBERTO'S</p></h2>
<h1><p style="color: white;font-style:fantasy; font-family: copperplate; font-size: 0.6em; margin-top: -1%">Best Pizza In Town ! !</p></h1>

</div>
<div class="container" style="margin-top: 10px; background-color: rgba(0,0,0,0.3); color: #fff; position: center; top: 10%; left: 10%%; z-index: 05;width: 40%;padding: 20px 0;text-align: center;border-top-left-radius: 60px;border-bottom-right-radius: 40%;border: 10px inset #fff;">
 			<div class=" d-flex justify-content-center
             align-items-center">
 			<div class="row">
 			<div class="col-md-4"></div>
 			<div class="col-md-5 col-xs-5">
 			
 			
 			<h1 class="text-center" style="font-size: 3.5em">User Login</h1>
 			
 			<img alt="avatar" src="/pos/static/images/img_avatar.png"; align="middle" ; style="width: 30px; height: 30px; border-radius: 50%; margin-left: -8px">
 			<img alt="avatar" src="/pos/static/images/avatar2.png"; align="middle" ; style="width: 30px; height: 30px; border-radius: 50%; margin-left: -8px">
 			 <img alt="avatar" src="/pos/static/images/avatar5.png"; align="middle" ; style="width: 30px; height: 30px; border-radius: 50%; margin-left: -8px">
 			  <img alt="avatar" src="/pos/static/images/img_avatar2.png"; align="middle" ; style="width: 30px; height: 30px; border-radius: 50%; margin-left: -8px">
 			 <img alt="avatar" src="/pos/static/images/avatar6.png"; align="middle" ; style="width: 30px; height: 30px; border-radius: 50%; margin-left: -8px">
 			 <!-- <div class="avatar" style="width: 25px; height: 25px; border-radius: 50%; background-color:#2c303a;color:#fff;display:flex;; margin-right: -8px;">+10</div> --> 		
 			<br><br>
 			
 			<div class="form-group">
 			         <label class="control-lable" for="userID" style="font-size: 2em">User Id</label>
 			         <input type="text" name="userID" class="form-control" placeholder="userID">
 			         </div>
 			
 			         <div class="form-group">
 			         <label class="control-lable" for="password" style="font-size: 2em">Password</label>
 			         <input type="password" name="password" class="form-control" placeholder="password">
 			         </div>
 			         
 			         <!-- <div class="pull-right"> -->
 			         <button type="submit" class="btn btn-primary btn-sm" style="font-size: 1.25em">Login</button>
 			         <br><br>
 			         <a style="font-size: 1.5em; color: white;">New User :</a> <a class="btn btn-primary" href="user.html" role="button" style="font-size: 1.5em">Click Here</a>
 			         </div>
 			         </div>
 			       </div>  
</div>
			<div class="col-md-3"></div>
			</div>
</form>

<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery"></script>
	
</body>
</html>



<%-- <title>Login page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>


	<h1 align="center">Login page</h1>

	<c:if test="${param.ERROR != null }">
		<c:out value="${param.ERROR }" />
	</c:if>

	<form action="login.html" method="post">
	<div align="center">
	<div class="jumbotron">
	<div class="container">
	<div class="row">
	
	
	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
	
	<div class="col-lg-9 col-md-9 col-sm-9 col-xs-20"></div>
	
		<label>User Id</label> <input type="text" name="userID"><br />
		
		
		
		<label>Password</label> <input type="password" name="password"><br />
		<input type="submit" value="login">
    </div>
	</div>
	</div>
	</div>
	</form>
	
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery"></script>
	
<h3 align="center"> New User<a href = "user.html   "> Click Here</a></h3> 

 <!-- <h3> New User<a href = "credentials.html   "> Click Here</a></h3> --> 
</body>
</html> --%>