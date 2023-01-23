<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Page</title>
<link href="/pos/static/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/pos/static/css/stylesheet/edituser.css" rel="stylesheet" type="text/css">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Navbar</title>
	<link rel="stylesheet" href="/pos/static/css/stylesheet/edituser.css">
</head>
<body>
<div class="hello">
				<a href="#"><img src="/pos/static/images/logo.png"></a>
		</div>
	<nav>
		<ul class="nav-list">
			<li class="nav-items"><a href="/"></a></li>
			<li class="nav-items"><a href="login.html">Login</a></li>
			<li class="nav-items"><a href="front.html">Home</a></li>
			<li class="nav-items"><a href="about.html">About</a></li>
			<li class="nav-items"><a href="contact.html">Contact</a></li>

		</ul>
	</nav>
</body>
<body>
<body class="bg-image" style="background-image: url('/pos/static/images/about.jpg');background-size: 130%; background-repeat: no-repeat;">
<div class="banner-text">
	<h1 class="text-center" style="font-size: 4em; color: white;" >User Page</h1>
<form:form action="editUser.html" method="post">
<div class="user">
		<label style="font-size: 1.50em; color: white;">Id</label>
		<form:input path="id" readonly ="true" />
		<br />
		<label style="font-size: 1.50em; color: white;">FirstName</label>
		<form:input path="firstName" />
		<br />
		<label style="font-size: 1.50em; color: white;">LastName</label>
		<form:input path="lastName" />
		<br />
		
  		<label style="font-size: 1.50em; color: white;">DOB</label>
		<form:input type="date" path="dateOfBirth" readonly="true" />
		<br>
		<label style="font-size: 1.50em; color: white;">Gender</label>
		<select name="gender" id="gender" readonly ="true">
			<option>Male</option>
			<option>Female</option>
			<option>Other</option>
		</select>
		<br />
		<label style="font-size: 1.50em; color: white;">Street</label>
		<form:input path="street" />
		<br />
		<label style="font-size: 1.50em; color: white;">Location</label>
		<form:input path="location"  />
		<br />
		<label style="font-size: 1.50em; color: white;">City</label>
		<form:input path="city"  />
		<br />
		<label style="font-size: 1.50em; color: white;">State</label>
		<form:input path="state" />
		<br />
		<label style="font-size: 1.50em; color: white;">Pincode</label>
		<form:input path="pincode" />
		<br />
		<label style="font-size: 1.50em; color: white;">MobileNo</label>
		<form:input path="mobileNo" />
		<br />
		<label style="font-size: 1.50em; color: white;">emailID</label>
		<form:input path="emailID" />
		<br><br>

<%-- 	<label style="font-size: 1.50em; color: white;">Password</label>
		<form:input type="password" path="password" />
		<br /><br>
 --%>	<input class="create" type="submit" value="update" />
 
 		 <a style="font-size: 1.5em; color: white;">Existing User :</a> <a class="btn btn-primary" href="login.html" role="button" style="font-size: 1.5em">Login</a>
 
 </div>
 </div>
	</form:form>
	</div>
	</div>


</body>
</html>