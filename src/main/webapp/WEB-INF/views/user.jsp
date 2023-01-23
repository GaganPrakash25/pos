<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Page</title>
<link href="/pos/static/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/pos/static/css/stylesheet/userpage.css" rel="stylesheet" type="text/css">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Navbar</title>
	<link rel="stylesheet" href="/pos/static/css/stylesheet/userpage.css">
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
<body class="bg-image" style="background-image: url('/pos/static/images/image16-1920x1080.jpg'); background-size: 100%; background-repeat: no-repeat;background-attachment: fixed;">
<div class="container" style="margin-top: 10px; background-color: rgba(0,0,0,0.3); color: #fff; position: center; top: 50%; left: 50%%; z-index: 50;width: %;padding: 20px;text-align: center;border-top-left-radius: 30px;border-bottom-right-radius: 40%;border: 10px inset #fff;">
<div class="banner-text">
<h1 class="text-center" style="font-size: 4em">User Details</h1>

	<img alt="avatar" src="/pos/static/images/img_avatar.png"; align="middle" ; style="width: 25px; height: 25px; border-radius: 50%; margin-left: -8px">
	<img alt="avatar" src="/pos/static/images/avatar2.png"; align="middle" ; style="width: 25px; height: 25px; border-radius: 50%; margin-left: -8px">
 	<img alt="avatar" src="/pos/static/images/avatar5.png"; align="middle" ; style="width: 25px; height: 25px; border-radius: 50%; margin-left: -8px">
 	<img alt="avatar" src="/pos/static/images/img_avatar2.png"; align="middle" ; style="width: 25px; height: 25px; border-radius: 50%; margin-left: -8px">
 	<img alt="avatar" src="/pos/static/images/avatar6.png"; align="middle" ; style="width: 25px; height: 25px; border-radius: 50%; margin-left: -8px">
 	<br><br>

<form:form action="user.html" method="post">
<div class="user">
 		<label style="font-size: 1.50em; color: white;">User ID :</label>
		<form:input path="userID" />
		<br><br>
		<label style="font-size: 1.50em; color: white;">Password :</label> 
		<form:input path="password" type="password" />     
        <br><br>		
		<label style="font-size: 1.50em; color: white;">FirstName :</label>
		<form:input path="firstName" />
		<br><br>
		<label style="font-size: 1.50em;color: white;">LastName :</label>
		<form:input path="lastName" />
		<br><br>
		<label style="font-size: 1.50em; color: white">DOB :</label>
		<form:input type="date" path="dateOfBirth" />
		<br><br>
		<label style="font-size: 1.50em; color: white;">Gender :</label>
		<select name="gender" id="gender">
			<option style="color: black;">Male</option>
			<option style="color: black;">Female</option>
			<option style="color: black;">Other</option>
		</select>
		<br><br>
		<label style="font-size: 1.50em; color: white;">Street :</label>
		<form:input path="street" />
		<br><br>
		<label style="font-size: 1.50em; color: white;">Location :</label>
		<form:input path="location" />
		<br><br>
		<label style="font-size: 1.50em; color: white;">City :</label>
		<form:input path="city" />
		<br><br>
		<label style="font-size: 1.50em; color: white;">State :</label>
		<form:input path="state" />
		<br><br>
		<label style="font-size: 1.50em; color: white;">Pincode :</label>
		<form:input path="pincode" />
		<br><br>
		<label style="font-size: 1.50em; color: white;">MobileNo :</label>
		<form:input path="mobileNo" />
		<br><br>
		<label style="font-size: 1.50em; color: white;">emailID :</label>
		<form:input path="emailID" />
		<br><br>
		<input class="create" type="submit" value="Create">
		<br><br>
		</div>
		 <a style="font-size: 1.5em; color: white;">Existing User :</a> <a class="btn btn-primary" href="login.html" role="button" style="font-size: 1.5em">Login</a>
		
		</div>
		</div>
		</div>
 	</form:form>
	
	<%-- <h3><p align="center" style="color:white;font-style:fantasy; font-family:copperplate; font-size: 1.5em;">User Profile</p></h3>

	<table border="3" bordercolor="white">
		<thead>
			<tr>
				<td>id</td>
				<td>FirstName</td>
				<td>LastName</td>
				<td>DateOfBirth</td>
				<td>Gender</td>
				<td>Street</td>
				<td>Location</td>
				<td>City</td>
				<td>State</td>
				<td>Pincode</td>
				<td>MobileNo</td>
				<td>emailID</td>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${PROFILE}" var="u">

				<tr>
					<td><c:out value="${u.id}"></c:out></td>
					<td><c:out value="${u.firstName}"></c:out></td>
					<td><c:out value="${u.lastName}"></c:out></td>
					<td><c:out value="${u.dateOfBirth}"></c:out></td>
					<td><c:out value="${u.gender}"></c:out></td>
					<td><c:out value="${u.street}"></c:out></td>
					<td><c:out value="${u.location}"></c:out></td>
					<td><c:out value="${u.city}"></c:out></td>
					<td><c:out value="${u.state}"></c:out></td>
					<td><c:out value="${u.pincode}"></c:out></td>
					<td><c:out value="${u.mobileNo}"></c:out></td>
					<td><c:out value="${u.emailID}"></c:out></td>
					<td><a href="<c:url value='/user-edit-${u.id}'/>">edit</a></td>
				</tr>
			</c:forEach>
		
		</tbody>
	</table>
	<br/>
	<h1></h1>
	
	<h3>User Credentials</h3>

	<table border="1">
		<thead>
			<tr>
			    <td>id</td>
				<td>userID</td>
				<td>loginStatus</td>
				<td>userType</td>
				<!-- <td>profile id</td> -->
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${CREDENTIALS}" var="u">

				<tr>
					<td><c:out value="${u.id}"></c:out></td>
					<td><c:out value="${u.userID}"></c:out></td>
					<td><c:out value="${u.loginStatus}"></c:out></td>
					
					<td><c:out value="${u.userType}"></c:out></td>
					<td><c:out value="${u.profile_id}"></c:out></td>
					<td><a href="<c:url value='/user-del-${u.id}'/>">Delete</a></td>
				</tr>

			</c:forEach>

		</tbody>
	</table>
 --%>



</body>
</html>



