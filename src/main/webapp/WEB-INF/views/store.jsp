<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/pos/static/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/pos/static/css/stylesheet/store.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Store Page</title>
<link rel="stylesheet" href="/pos/static/css/stylesheet/store.css">
</head>
<body>
		<div class="hello">
				<a href="#"><img src="/pos/static/images/logo.png"></a>
		</div>
	<nav>
		<ul class="nav-list">
			<li class="nav-items"><a href="/"></a></li>
			<li class="nav-items"><a href="home.html">Home</a></li>
			<li class="nav-items"><a href="abouthome.html">About</a></li>
			<!-- <li class="nav-items"><a href="/">Services</a></li>
			<li class="nav-items"><a href="/">Career</a></li> -->
			<li class="nav-items"><a href="contacthome.html">Contact</a></li>
		</ul>
	</nav>
</body>

<body class="bg-image" style="background-image: url('/pos/static/images/bg_4.jpg'); background-size: 100%; background-repeat: no-repeat;background-attachment: fixed;">
<div class="text" align="center" style="margin-top: 100px;">

	<h1 style="color: white;">Store</h1>

	<form action="store.html" method="post">
		<label style="color: white;font-size: 18px;">City</label> 
		<input type="text" name="city"><br/> <br/>
		<input class="btn" type="submit" value="search">
	</form>
	<br/><br/>
	
	<div class="hello">
	<h3>Store List</h3>

	<table border="1">
		<thead>
			<tr>
				<td>s_id</td>
				<td>city</td>
				<td>mobileNo</td>
				<td>name</td>
				<td>pincode</td>
				<td>state</td>
				<td>storeID</td>
				<td>street</td>
				
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${STORE}" var="s">
				<tr>
					<td><c:out value="${s.id}" /></td>
					<td><c:out value="${s.city}" /></td>
					<td><c:out value="${s.mobileNo}" /></td>
					<td><c:out value="${s.name}" /></td>
					<td><c:out value="${s.pincode}" /></td>
					<td><c:out value="${s.state}" /></td>
					<td><c:out value="${s.storeID}" /></td>
					<td><c:out value="${s.street}" /></td>
					<%-- <td><a href="<c:url value='/select-store'/>">select</a></td> --%>
					</div>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</body>
</html>