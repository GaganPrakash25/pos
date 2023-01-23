<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Store Page</title>
<link href="/pos/static/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/pos/static/css/stylesheet/adminstore.css" rel="stylesheet" type="text/css">
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

<div class="pizza">
		<a href="#"><img src="/pos/static/images/hahahaha.png"></a>
</div>


<body class="bg-image" style="background-image: url('/pos/static/images/bg_4.jpg'); background-size: 100%; background-repeat: no-repeat;background-attachment: fixed;">
<div class="text" align="center" style="margin-top: 100px;">


<body>

	<h1 style="color: white;">Store Page</h1>

	<form:form action="adminstore.html" method="post">


		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -1cm;">StoreId</label>
		<form:input path="storeID" />
		<br />
		<br />

		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -0.20cm;">Store Name</label>
		<form:input path="name" />
		<br />
		<br />

		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -1cm;">Street</label>
		<form:input path="street" />
		<br />
		<br />

		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: 0.65cm;">Mobile Number</label>
		<form:input path="mobileNo" />
		<br />
		<br />

		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -1.20cm;">City</label>
		<form:input path="city" />
		<br />
		<br />

		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -0.95cm;">State</label>
		<form:input path="state" />
		<br />
		<br />

		<label style="color: white;text-indent: 1cm; text-align: center; margin-left: -0.38cm;">Pincode</label>
		<form:input path="pincode" />
		<br />
		<br />

		<input class="btn" type="submit" value="Create" />

	</form:form>

	<h1 style="color: white;">Store List</h1>

	<table border="1" style="color: white;">

		<thead>
			<tr>
				<td>id</td>
				<td>Store id</td>
				<td>Store Name</td>
				<td>Street</td>
				<td>Mobile Number</td>
				<td>City</td>
				<td>State</td>
				<td>Pincode</td>
			</tr>
		</thead>

		<tbody>

			<c:forEach items="${STORELIST}" var="s">

				<tr>
					<td><c:out value="${s.id}"></c:out></td>
					<td><c:out value="${s.storeID}"></c:out></td>
					<td><c:out value="${s.name}"></c:out></td>
					<td><c:out value="${s.street}"></c:out></td>
					<td><c:out value="${s.mobileNo}"></c:out></td>
					<td><c:out value="${s.city}"></c:out></td>
					<td><c:out value="${s.state}"></c:out></td>
					<td><c:out value="${s.pincode}"></c:out></td>
					<td><a href="<c:url value='/store-del-${s.id}'/>"><button>Remove</button></a></td>
					<td><a href="<c:url value='/store-edit-${s.storeID}'/>"><button>Modify</button></a></td>
					<%-- <td><a href="<c:url value='/store-view-${s.storeID}'/>"><button>View</button></a></td> --%>

				</tr>

			</c:forEach>

		</tbody>
	</table>


</body>
</html>