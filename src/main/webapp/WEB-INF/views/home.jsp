<%@page import="java.util.List"%>
<%@page import="com.cruds.pos.bean.ProfileBean"%>
<%@page import="com.cruds.pos.bean.FoodBean"%>
<%@page import="com.cruds.pos.bean.CredentialsBean"%>
<%@page import="com.cruds.pos.form.CartFormBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/pos/static/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/pos/static/css/stylesheet/home.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="hello">
		<a href="#"><img src="/pos/static/images/logo.png"></a>
	</div>
	<nav>
	<ul class="nav-list">
		<li class="nav-items"><a href="/"></a></li>
		<li class="nav-items"><a href="logout.html">Logout</a></li>
		<li class="nav-items"><a href="abouthome.html">About</a></li>
		<!-- <li class="nav-items"><a href="/">Services</a></li>
		<li class="nav-items"><a href="/">Career</a></li> -->
		<li class="nav-items"><a href="contacthome.html">Contact</a></li>
	</ul>
	</nav>
</body>

<body class="bg-image"
	style="background-image: url('/pos/static/images/bg_4.jpg'); background-size: 100%; background-repeat: no-repeat; background-attachment: fixed;">
	<div class="text" align="center" style="margin-top: 100px;">

		<div class="logo">
			<a href="#"><img src="/pos/static/images/logo.png"></a>
			<br /><br /><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			
		</div>
	</div>
	

	
	

	<!--	<div class="col-md-10 well-fix">

 		<div class="container well">
			<span>
				Hello  , Welcome to XYZ Pizza
			</span>
		</div>
 
	</div>
-->


	<br />
	<%
			//	CartFormBean cb = (CartFormBean) session.getAttribute("foodID");	
			//	CartFormBean c = (CartFormBean) session.getAttribute("id");

			//	Long f_id = (Long) session.getAttribute("foodID");	
			//	Long customer = (Long) session.getAttribute("ID");

			CredentialsBean user = (CredentialsBean) session.getAttribute("USER");
			FoodBean fb = (FoodBean) session.getAttribute("FOOD");

			List<FoodBean> cart = (List<FoodBean>) session.getAttribute("CART");
		%>

	<!--  	<a
		href="cart.html?quantity=2&type=veg&cost=250&orderDate=2022-11-26">
		<button>Add to Cart</button>
	</a>
 -->
	<!-- &quantity=1&foodSize=regular&type=medium&name=vegpizza&price=250 -->

	<%-- 	<p>
		Customer ID
		<%=cb.getC_id()%></p>
	<br />

	<p>
		Food ID
		<%=fb.getF_id()%></p>
	<br />
	
 --%>
	<style>
.haha1 {
position:absolute;
	border:solid;
	border-color:white;
	margin:4px 2px;
	cursor:pointer;
	padding: 15px 32px;
	text-decoration: none;
	margin-top:-10.25cm;
	left: 0.5%;
	font-size:20px;
	color: white;
	background-color: #4CAF50;
	display: inline-block;
}
.haha2 {
position:absolute;
	border:solid;
	border-color:white;
	margin:4px 2px;
	cursor:pointer;
	padding: 15px 32px;
	text-decoration: none;
	margin-top:-9.25cm;
	left: 0.5%;
	font-size:20px;
	color: white;
	background-color: #4CAF50;
	display: inline-block;
}
.haha3 {
position:absolute;
	border:solid;
	border-color:white;
	margin:4px 2px;
	cursor:pointer;
	padding: 13.5px 25px;
	text-decoration: none;
	margin-top:-7.75cm;
	left: 0.5%;
	font-size:20px;
	color: white;
	background-color: #4CAF50;
	display: inline-block;
}
.haha4 {
position:absolute;
	border:solid;
	border-color:white;
	margin:4px 2px;
	cursor:pointer;
	padding: 13.5px 25px;
	text-decoration: none;
	margin-top:-6.75cm;
	left: 0.5%;
	font-size:20px;
	color: white;
	background-color: #4CAF50;
	display: inline-block;
}
.haha5 {
position:absolute;
	border:solid;
	border-color:white;
	margin:4px 2px;
	cursor:pointer;
	padding: 13.5px 25px;
	text-decoration: none;
	margin-top:-5.75cm;
	left: 0.5%;
	font-size:20px;
	color: white;
	background-color: #4CAF50;
	display: inline-block;
}
p{
border:1px solid white;
padding: 10px;
width: 200px;
height: 180px;
text-align: justify;  
}
</style>
</head>
<br><br><br><br><br><br><br>
<body>
<li><a href="userlist.html" class="haha1">Profile</a></li>
	<br />
	<li><a href="store.html" class="haha2">Store</a></li>
	</ul>

	<%
			if (user.getUserType().equals("A")) {
		%>
<ul>
	<li><a href="food.html" class="haha3">Food</a></li>
	<br />
	<li><a href="adminstore.html" class="haha4">Add Store</a></li>
	<br />
	<li><a href="search.html" class="haha5">Search User</a></li>
	<br />

	<%
			}
		%>
	
	<br /><br /><br /><br /><br /><br /><br /><br /><br />
	

<%--  	<form action="cart.html" method="post">
		<label>Quantity </label> 
		<input type="number" id="cartQuantity" name="cartQuantity" min="1" max="5" />
		<br /> 
		<br /> 
		
		<label>type</label> <select name="cartType" id="cartType">
			<option>Veg</option>
			<option>Non Veg</option>
		</select> 
		<br />
		<br />
		  
		<label>cost</label> 
		<input type="text" name="cost" /> 
		<br />
		<br />
		<label>orderDate</label> 
		<input type="date" name="orderDate" /> 
		<br />
		<br />

		<label>Customer ID</label>
		<input type="text" name="id" />
		<br />
		<br />
		
		<label>foodID</label>
		<input type="text" name="f_id" />
		<br />
 		<br />
		<input type="submit" value="add to cart" />
		<br /><br />
	</form>
 
  --%>
	<br />
	<br />
	<%
			if (user.getUserType().equals("C")) {
		%>
	<div class="photo">
				<img src="/pos/static/images/new_veg_extravaganza.webp" style="width: 250px;height:170px ;position: absolute;left: 10cm; margin-top: -10.75cm;">
		</div>
	
	

	
	<div class="photo">
				<img src="/pos/static/images/new_margherita_2502.webp" style="width: 250px;height:170px ;position: absolute;left: 20cm; margin-top: -10.75cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/pizza-5.jpg" style="width: 175px;position: absolute;left: 30cm; margin-top: -10.75cm;">
				
		</div>
					
		<div class="photo">
				<img src="/pos/static/images/pizza-2.jpg" style="width: 180px;position: absolute;left: 40cm; margin-top: -10.75cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/pizza-3.jpg" style="width: 210px;position: absolute;left: 10cm; margin-top: 1cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/pizza-pizza-filled-with-tomatoes-salami-olives.jpg" style="width: 170px;position: absolute;left: 20.5cm; margin-top: 0.50cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/tasty-chicken-pizza-with-mushrooms-spices.jpg" style="width: 220px;position: absolute;left: 30cm; margin-top: 1cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/top-view-chicken-pizza-with-green-bell-pepper-mushroom-cheese-tomato-sauce.jpg" style="width: 220px;position: absolute;left: 39.75cm; margin-top: 0.75cm;">
				
		</div>
					
						
		<div class="photo">
				<img src="/pos/static/images/chad-montano-MqT0asuoIcU-unsplash.jpg" style="width: 210px;height:200px ;position: absolute;left: 10.25cm; margin-top: 14.50cm;">
				
		</div>
	<br />
					
	<div class="photo">
				<img src="/pos/static/images/pranjall-kumar-sejqj6Eaqe8-unsplash.jpg" style="width: 210px;position: absolute;left: 20cm; margin-top: 14.50cm;">
				
		</div>
	<br />
	
	<div class="photo">
				<img src="/pos/static/images/james-butterly-BjSakjrXOY4-unsplash.jpg" style="width: 230px;position: absolute;left: 30cm; margin-top: 14.50cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/ivan-torres-MQUqbmszGGM-unsplash.jpg" style="width: 230px;position: absolute;left: 40cm; margin-top: 14.50cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/veg-kebab-surprise.abab1dff179ab8cf95a59f30d6352297.1.jpg" style="width: 230px;position: absolute;left: 10cm; margin-top: 25.50cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/mexican-garlic-breadstix-single.eab1259910d7d29cdba8ceb2e1b36355.1.jpg" style="width: 230px;position: absolute;left: 10cm; margin-top: 40cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/cheese-garlic-bread.58019ad8ec813e53cbf2b7d7f1b7cacc.1.jpg" style="width: 230px;position: absolute;left: 20cm; margin-top: 40cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/so-cheesy-baked-momos-veg-single.1c1aca2fefccf3f4fc4067ce33571718.1.jpg" style="width: 230px;position: absolute;left: 30cm; margin-top: 40cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/schezwan-dip-single.212b7b4f080b2c18a19f8de79ab4ce3a.1.jpg" style="width: 230px;position: absolute;left: 40cm; margin-top: 40cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/veg-mayonnaise-dip-single.36f1422f2e7f102a7c57f923c02fec94.1.jpg" style="width: 230px;position: absolute;left: 10cm; margin-top: 51cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/cheesy-dip-single.9f069337fcf64460782c74850d1c3ba6.1.jpg" style="width: 230px;position: absolute;left: 20cm; margin-top: 51cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/ketchup-single.fe64cec7bfd9cb2e150772fc550d8174.1.jpg" style="width: 230px;position: absolute;left: 30cm; margin-top: 51cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/pepsi.ebd77460b7e104a70753241ad502abca.1.jpg" style="width: 230px;position: absolute;left: 10cm; margin-top: 66cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/pepsi-black.05bd5ce9c59d6fea34befe77a4c5bdee.1.jpg" style="width: 230px;position: absolute;left: 20cm; margin-top: 66cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/mirinda.b67f0e29703e70fd5dfe91f900dc0046.1.jpg" style="width: 230px;position: absolute;left: 30cm; margin-top: 66cm;">
				
		</div>
		
		<div class="photo">
				<img src="/pos/static/images/7-up.15b00a4f5a8acd746ca6ae6f6e2d0330.1.jpg" style="width: 230px;position: absolute;left: 40cm; margin-top: 66cm;">
				
		</div>
		
		
	<br /><br /><br /><br /><br /><br /><br /><br />	
	<br />
	<br />
	<br />
	<br />
		<h1 style="color: white;text-align: center;margin-top: -20.5cm">Veg Pizza's</h1>
	
	
	<p style="margin-top:6.50cm ;color: white;text-align: center;margin-left: 20.5%">FOOD ID:1
	<br>
	Name: Veg Extravaganza
	<br> 
	Cost: <b style="font: bold;">390.00</b>
	<br> 
	<b style="font: bold;">MEDIUM</b>
	</p>
	<a class="btn" href="cart.html" style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 22.5%;border: 2px solid white;"> add to cart</a>
	
 	
 	<p style="margin-top:-5cm ;color: white;text-align: center;margin-left: 20.5cm">FOOD ID:2
	<br>
	Name: Veg Margherita
	<br> 
	Cost: <b style="font: bold;">219.00</b>
	<br> 
	<b style="font: bold;">SMALL</b>
	
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 43%;border: 2px solid white"> add to cart</a>
	
	
	<p style="margin-top:-5cm ;color: white;text-align: center;margin-left: 29.75cm">FOOD ID:3
	<br>
	Name: Veg Cheese Pizza
	<br> 
	Cost: <b style="font: bold;">240.00</b>
	<br> 
	<b style="font: bold;">SMALL</b>
	
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 61.5%;border: 2px solid white;"> add to cart</a>
	
	
	<p style="margin-top:-5cm ;color: white;text-align: center;margin-left: 39.75cm">FOOD ID:4
	<br>
	Name: Veggie Paradise
	<br> 
	Cost: <b style="font: bold;">520.00</b>
	<br> 
	<b style="font: bold;">LARGE</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 81.5%;border: 2px solid white;"> add to cart</a>
		
		
	<p style="margin-top:6cm ;color: white;text-align: center;margin-left: 20.25%">FOOD ID:5
	<br>
	Name: Mexican Green Wave
	<br> 
	Cost: <b style="font: bold;">409.00</b>
	<br> 
	<b style="font: bold;">MEDIUM</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 22.5%;border: 2px solid white;"> add to cart</a>
	
	<p style="margin-top:-5cm ;color: white;text-align: center;margin-left: 40.25%">FOOD ID:6
	<br>
	Name: Peppy Paneer
	<br> 
	Cost: <b style="font: bold;">580.00</b>
	<br> 
	<b style="font: bold;">LARGE</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 42.35%;border: 2px solid white;"> add to cart</a>
	
	
	<p style="margin-top:-5cm ;color: white;text-align: center;margin-left: 60.25%">FOOD ID:7
	<br>
	Name: Farmhouse
	<br> 
	Cost: <b style="font: bold;">430.00</b>
	<br> 
	<b style="font: bold;">MEDIUM</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 62.35%;border: 2px solid white;"> add to cart</a>
	
	
	<p style="margin-top:-5cm ;color: white;text-align: center;margin-left: 80.25%">FOOD ID:8
	<br>
	Name: Corn n Cheese Pizza
	<br> 
	Cost: <b style="font: bold;">199.00</b>
	<br> 
	<b style="font: bold;">SMALL</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 82.35%;border: 2px solid white;"> add to cart</a>
	
	
	<h1 style="color: white;text-align: center;margin-top: 2cm">Non-Veg Pizza's</h1>
	
	
	<p style="margin-top:7cm ;color: white;text-align: center;margin-left: 20.25%">FOOD ID:9
	<br>
	Name: Pepper Barbecue Chicken
	<br> 
	Cost: <b style="font: bold;">400.00</b>
	<br> 
	<b style="font: bold;">MEDIUM</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 22.35%;border: 2px solid white;"> add to cart</a>


	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 40.25%">FOOD ID:10
	<br>
	Name: Chicken Tikka Supreme
	<br> 
	Cost: <b style="font: bold;">270.00</b>
	<br> 
	<b style="font: bold;">SMALL</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 42.35%;border: 2px solid white;"> add to cart</a>
	
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 60.25%">FOOD ID:11
	<br>
	Name: Chicken Sausage
	<br> 
	Cost: <b style="font: bold;">420.00</b>
	<br> 
	<b style="font: bold;">MEDIUM</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 62.35%;border: 2px solid white;"> add to cart</a>
	
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 80.25%">FOOD ID:12
	<br>
	Name: Triple Chicken Feast
	<br> 
	Cost: <b style="font: bold;">680.00</b>
	<br> 
	<b style="font: bold;">LARGE</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -2cm; left: 82.35%;border: 2px solid white;"> add to cart</a>
	
	
	<p style="margin-top:6.25cm ;color: white;text-align: center;margin-left: 20.25%">FOOD ID:13
	<br>
	Name: Chicken Kebab Surprise
	<br> 
	Cost: <b style="font: bold;">710.00</b>
	<br> 
	<b style="font: bold;">LARGE</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 22.35%;border: 2px solid white;"> add to cart</a>
	
	
		<h1 style="color: white;text-align: center;margin-top: 2cm">Sides</h1>
		
	<p style="margin-top:7cm ;color: white;text-align: center;margin-left: 20.25%">FOOD ID:14
	<br>
	Name: Mexican Garlic Breadstix
	<br> 
	Cost: <b style="font: bold;">139.00</b>
	<br> 
	<b style="font: bold;">8 Breadstix</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 22.35%;border: 2px solid white;"> add to cart</a>
		
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 40.25%">FOOD ID:15
	<br>
	Name: Cheese Garlic Bread
	<br> 
	Cost: <b style="font: bold;">150.00</b>
	<br> 
	<b style="font: bold;">4 Pieces</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 42.35%;border: 2px solid white;"> add to cart</a>
			
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 60.25%">FOOD ID:16
	<br>
	Name: So Cheesy Baked Momos Veg
	<br> 
	Cost: <b style="font: bold;">220.00</b>
	<br> 
	<b style="font: bold;">Medium Box</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 62.35%;border: 2px solid white;"> add to cart</a>
					
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 80.25%">FOOD ID:17
	<br>
	Name: Momo Dip
	<br> 
	Cost: <b style="font: bold;">25.00</b>
	<br> 
	<b style="font: bold;">Quantity: 1</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 82.35%;border: 2px solid white;"> add to cart</a>
					
	<p style="margin-top: 6cm ;color: white;text-align: center;margin-left: 20.25%">FOOD ID:18
	<br>
	Name: Veg Mayonnaise Dip
	<br> 
	Cost: <b style="font: bold;">30.00</b>
	<br> 
	<b style="font: bold;">Quantity: 1</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 22.35%;border: 2px solid white;"> add to cart</a>
						
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 40.25%">FOOD ID:19
	<br>
	Name: Cheesy Dip
	<br> 
	Cost: <b style="font: bold;">30.00</b>
	<br> 
	<b style="font: bold;">Quantity: 1</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 42.35%;border: 2px solid white;"> add to cart</a>
														
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 60.25%">FOOD ID:21
	<br>
	Name: Ketchup
	<br> 
	Cost: <b style="font: bold;">1.00</b>
	<br> 
	<b style="font: bold;">Quantity: 1</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 62.35%;border: 2px solid white;"> add to cart</a>
	
	<h1 style="color: white;text-align: center;margin-top: 2cm">Drinks</h1>
	
	<p style="margin-top: 7cm ;color: white;text-align: center;margin-left: 20.25%">FOOD ID:22
	<br>
	Name: Pepsi
	<br> 
	Cost: <b style="font: bold;">60.00</b>
	<br> 
	<b style="font: bold;">350 ml</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 22.35%;border: 2px solid white;"> add to cart</a>
	
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 40.25%">FOOD ID:23
	<br>
	Name: Pepsi Black
	<br> 
	Cost: <b style="font: bold;">60.00</b>
	<br> 
	<b style="font: bold;">1 tin</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 42.35%;border: 2px solid white;"> add to cart</a>
	
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 60.25%">FOOD ID:24
	<br>
	Name: Mirinda
	<br> 
	Cost: <b style="font: bold;">60.00</b>
	<br> 
	<b style="font: bold;">350 ml</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 62.35%;border: 2px solid white;"> add to cart</a>
	
	<p style="margin-top: -5cm ;color: white;text-align: center;margin-left: 80.25%">FOOD ID:25
	<br>
	Name: 7-UP
	<br> 
	Cost: <b style="font: bold;">60.00</b>
	<br> 
	<b style="font: bold;">350 ml</b>
	</p>
	<a class="btn" href="cart.html"style="padding:8px 24px;position:absolute ;margin-top: -1.75cm; left: 82.35%;border: 2px solid white;"> add to cart</a>
	
									
	
	<%
			}
		%>
		
	<%-- <form action="cart.html" method="post">
		<p style="color: white;">
			ID :
			<c:out value="${sessionScope.CARTFORM.f_id}" />
		<p style="color: white;">
			Food ID:
			<c:out value="${sessionScope.CARTFORM.foodID}" />
		<p style="color: white;">
			Food Quantity:
			<c:out value="${sessionScope.CARTFORM.foodQuantity}" />
		<p style="color: white;">
			Food Size:
			<c:out value="${sessionScope.CARTFORM.foodSize}" />
		<p style="color: white;">
			Food type:
			<c:out value="${sessionScope.CARTFORM.foodtype}" />
		<p style="color: white;">
			Name:
			<c:out value="${sessionScope.CARTFORM.name}" />
		<p style="color: white;">
			Price:
			<c:out value="${sessionScope.CARTFORM.price}" />
		<p style="color: white;">
			User ID:
			<c:out value="${sessionScope.CARTFORM.id}" />
			<br /> <a href="cart.html" class="button">add to cart</a>
			<br />
			<br />
	</form> --%>
	<%-- 	
	<form action="cart.html" method="post">
		<table>
			<tr>
				<td>Id:</td>
				<td><c:out value="${sessionScope.CARTFORM.f_id}" /></td>
				<td>Food ID:</td>
				<td><c:out value="${sessionScope.CARTFORM.foodID}" /></td>
				<td>Food Quantity:</td>
				<td><c:out value="${sessionScope.CARTFORM.foodQuantity}" /></td>
				<td>Food Size:</td>
				<td><c:out value="${sessionScope.CARTFORM.foodSize}" /></td>
				<td>Food type:</td>
				<td><c:out value="${sessionScope.CARTFORM.foodtype}" /></td>
				<td>Name:</td>
				<td><c:out value="${sessionScope.CARTFORM.name}" /></td>
				<td>Price:</td>
				<td><c:out value="${sessionScope.CARTFORM.price}" /></td>
				<td>User ID:</td>
				<td><c:out value="${sessionScope.CARTFORM.id}" /></td>
				<td><a href="cart.html"><button>Add to cart</button></a></td>

			</tr>
		</table>
	</form>

 --%>

	<%-- <form action="cart.html" method="post">
		<table border="1">
			<thead>
				<tr>
					<td style="color: white;">id</td>
					<td style="color: white;">Food id</td>
					<td style="color: white;">Food Name</td>
					<td style="color: white;">Food Type</td>
					<td style="color: white;">Food Size</td>
					<td style="color: white;">Quantity</td>
					<td style="color: white;">Price</td>
					<td style="color: white;"></td>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${CARTFORM}" var="f">
					<tr>
						<td><c:out value="${f.f_id}"></c:out></td>
						<td><c:out value="${f.foodID}"></c:out></td>
						<td><c:out value="${f.foodQuantity}"></c:out></td>
						<td><c:out value="${f.foodSize}"></c:out></td>
						<td><c:out value="${f.foodtype}"></c:out></td>
						<td><c:out value="${f.name}"></c:out></td>
						<td><c:out value="${f.price}"></c:out></td>
						<td><c:out value="${f.id}"></c:out></td>
						<td><a href="cart.html" class="button">Add to cart</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form> --%>
</body>
</html>