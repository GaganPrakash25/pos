<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food Page</title>
<link href="/pos/static/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/pos/static/css/stylesheet/food.css" rel="stylesheet" type="text/css">
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

<h1 style="color: white;text-align: center;">Food Page</h1>


<form:form action="food.html" method="post">

		<label style="color: white;">Food Id</label>
		<form:input path="foodID"/>
		<br /> <br /> 
		
		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -3.8cm;">Quantity </label> 
		<form:input type="number" id="foodQuantity"
		path="foodQuantity" min="1" max="5" />
		<br /><br /> 
				
		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -3.8cm;">type</label>
		<select name="foodtype" id="foodtype">
			<option>Veg</option>
			<option>Non Veg</option>
		</select> <br /> <br />
		
		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -3.9cm;"">size</label>
		<select name="foodSize" id="foodSize">
			<option>Regular</option>
			<option>Medium</option>
			<option>Large</option>
		</select> <br /> <br /> 
		
		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -0.20em;">Food Name</label>
		<form:input path="name" />
		<br /><br /> 

		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -1cm;"">Price</label>
		<form:input path="price" />
		<br /><br /> 
		
		<input class="btn" type="submit" value="Create" />

	</form:form>

	<h1 style="color: white;">Food List</h1>

	<table border="1">

		<thead>
			<tr>
				<td style="color: white;">id </td>
				<td style="color: white;">Food id </td>
				<td style="color: white;">Quantity</td>
				<td style="color: white;">Food Type</td>
				<td style="color: white;">Food Size</td>
				<td style="color: white;">Food Name</td>
				<td style="color: white;">Price</td>
			</tr>
		</thead>

		<tbody>

			<c:forEach items="${FOODLIST}" var="f">

				<tr>
				<td><c:out value="${f.f_id}"></c:out></td>
					<td><c:out value="${f.foodID}"></c:out></td>
					<td><c:out value="${f.foodQuantity}"></c:out></td>
					<td><c:out value="${f.foodSize}"></c:out></td>
					<td><c:out value="${f.foodtype}"></c:out></td>
					<td><c:out value="${f.name}"></c:out></td>
					<td><c:out value="${f.price}"></c:out></td>
					
					<td><a href="<c:url value='/food-del-${f.f_id}'/>"><button>Remove</button></a></td>
					<td><a href="<c:url value='/food-edit-${f.foodID}'/>"><button>Modify</button></a></td>					
				</tr>
				
			</c:forEach>

		</tbody>
	</table>


</body>
</html>