<%@page import="model.Dproduct"%>
<%@page import="model.Registration1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>PET HUB jsp</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Poppins', sans-serif;
	background-image: url("image/catl.jpeg");
	background-size: 100%;
	background-repeat: no-repeat;
}

.Login_box {
	width: 380px;
	position: absolute;
	top: 35%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: white;
	max-width: 350px;
	border-radius: 20px;
	background: rgba(0, 0, 0, 0.8);
	box-sizing: border-box;
	padding: 40px;
	margin-top: 100px;
}

.Login_box h1 {
	float: left;
	font-size: 40px;
	border-bottom: 6px solid #4caf50;
	margin-bottom: 50px;
	padding: 13px 0;
}

.textbox {
	width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid #4caf50;
}

.textbox i {
	width: 26px;
	float: left;
	text-align: center;
}

.textbox input {
	border: none;
	outline: none;
	background: none;
	color: white;
	font-size: 18px;
	width: 80%;
	float: left;
	margin: 0 10px;
}

.btn {
	width: 100%;
	background: none;
	border: 2px solid #4caf50;
	color: white;
	padding: 5px;
	font-size: 18px;
	cursor: pointer;
	margin: 12px 0;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.navbar {
	display: flex;
	align-items: center;
	padding: 20px;
}

nav {
	flex: 1;
	text-align: right;
}

nav ul {
	display: inline-block;
	list-style-type: none;
}

nav ul li {
	display: inline-block;
	margin-right: 20px;
}

nav ul li a {
	text-decoration: none;
	color: white;
}

nav ul li p {
	color: white;
}

.container {
	max-width: 1300px;
	margin: auto;
	padding-left: 25px;
	padding-right: 25px;
}

.row {
	display: flex;
	align-items: center;
	flex-wrap: wrap;
	justify-content: space-around;
}

.col-2 {
	flex-basis: 50%;
	min-width: 300px;
}

.col-2 img {
	max-width: 100%;
	padding: 50px 0;
}

.col-2 h1 {
	font-size: 40px;
	line-height: 60px;
	margin: 25px 0;
}

.btn {
	display: inline-block;
	background: none;
	color: #fff;
	padding: 8px 30px;
	margin: 30px 0;
	border-radius: 30px;
	text-decoration: none;
}

.header {
	/*background: radial-gradient(#fff,#ffd2d2);*/
	
}

.header .row {
	margin-top: 60px;
}

.categories {
	margin: 40px 0;
}

.categories .col-3 {
	flex-basis: 30%;
	min-width: 250px;
	margin-bottom: 0px;
	text-align: center;
	padding: 40px 10px;
	/*    box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);*/
	cursor: pointer;
	transition: transform 0.5s;
}

.categories .col-3 img {
	width: 150px;
	height: 150px;
	margin-top: 20px;
	border-radius: 50%;
}

.categories .col-3:hover {
	transform: translateY(-10px);
}

.small-container {
	max-width: 1080px;
	margin: auto;
	padding-left: 25px;
	padding-right: 25px;
}

.col-4 {
	flex-basis: 25%;
	padding: 10px;
	min-width: 200px;
	margin-bottom: 50px;
	transition: transform 0.5s;
}

.col-4 img {
	width: 100%;
}

.title {
	text-align: center;
	margin: 0 auto 80px;
	position: relative;
	line-height: 60px;
	color: #555;
}

.title::after {
	content: '';
	background: orangered;
	width: 80px;
	height: 5px;
	border-radius: 5px;
	position: absolute;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
}

h4 {
	color: #555;
	font-weight: normal;
}

.col-4 p {
	font-size: 14px;
}

.rating .fa {
	/*color: #ff523b;*/
	
}

.col-4:hover {
	transform: translateY(-5px);
}

/*footer*/
.footer {
	background: #000;
	color: #8a8a8a;
	font-size: 14px;
	padding: 60px 0 20px;
}

.footer p {
	color: #8a8a8a;
}

.footer h3 {
	color: #fff;
	margin-bottom: 20px;
}

.footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4 {
	min-width: 250px;
	margin-bottom: 20px;
}

.footer-col-1 {
	flex-basis: 30%;
}

.footer-col-2 {
	flex: 1;
	text-align: center;
}

.footer-col-2 {
	width: 160px;
	margin-bottom: 30px;
}

.footer-col-3, .footer-col-4 {
	flex-basis: 12%;
	text-align: center;
}

ul {
	list-style-type: none;
}

.app-logo {
	margin-top: 20px;
}

.app-logo img {
	width: 140px;
}

.footer hr {
	border: none;
	background: #b5b5b5;
	height: 1px;
	margin: 20px 0;
}

.copyright {
	text-align: center;
}
.hide{
font-size:15px;
}
</style>
</head>
<body>

	<div class="header">
		<div class="container">
			<div class="navbar">
				<div class="logo">
					<img src="image/pethub1.png" width="125px">
				</div>
				<nav>
					<ul>
						<li><a href="userhome.jsp">Home</a></li>
						<li><a href="register.html">Register</a></li>
					</ul>
				</nav>
			</div>


		</div>
	</div>
	

	<div class="Login_box">
		<h1>LOG IN</h1>
		
		<form action="login" class="frm" method="POST">
			<div class="textbox">
				<i class="fa fa-user" aria-hidden="true"></i> <input type="text"
					placeholder="email" name="email" value="" required>
			</div>
			<div class="textbox">
				<i class="fa fa-unlock-alt" aria-hidden="true"></i> <input
					type="password" placeholder="password" name="pw" value="" id="myInput" required><br>
					
					
			</div>
			<input type="checkbox" onclick="myFunction()">
			<span class="hide">Show Password</span><br>

			<input class="btn" type="submit" name="login" value="Login">
			<% String error=(String)request.getAttribute("error");%>
		    <%if(error!=null){ %><div class="head"><%= error %></div><%} %><br><br>



		</form>
		<script>
		function myFunction() {
			var x = document.getElementById("myInput");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
	</script>
	</div>
</body>
</html>
