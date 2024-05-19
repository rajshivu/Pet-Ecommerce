
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
}

.navbar {
	display: flex;
	align-items: center;
	padding: 2px;
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
	color: #ffffff;
	font-size: 20px;
}

nav ul li p {
	color: #555;
}

.header {
	background-color: #35475e;
	height: 100px;
}

.admin-wrapper {
	height: calc(100% - 100px);
	display: flex;
}

.admin-wrapper .left-sidebar {
	flex: 2;
	height: 100%;
	background-color: #5c6c82;
}

.admin-wrapper .admin-content {
	flex: 8;
	height: 100%;
	padding: 40px 100px 100px;
	overflow-y: scroll;
}

.admin-wrapper .left-sidebar ul {
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.admin-wrapper .left-sidebar ul li a {
	color: whitesmoke;
	text-decoration: none;
	padding: 18px;
	display: block;
	border-bottom: 1px solid darkslategray;
}

.admin-wrapper .left-sidebar ul li a:hover {
	background-color: gray;
}

.admin-content .page-title {
	text-align: center;
	margin-bottom: 1.5rem;
}

.edit {
	color: greenyellow;
	text-decoration: none;
}

.delete {
	color: red;
	text-decoration: none;
}

.post {
	color: blue;
	text-decoration: none;
}

.edit:hover, .delete:hover, .post:hover {
	text-decoration: underline;
}

.btn-group .button {
	color: #35475e;
	padding: 5px 20px;
	border: solid black;
	text-decoration: none;
	font-family: sans-serif;
	transition: 0.6s ease;
}

nav a {
	font-size: 25px;
	padding-top: 5px;
	color: #ffffff;
}

body {
	margin: 0;
	padding: 0;
	font-family: 'Poppins', sans-serif;
}

.Login_box {
	width: 600px;
	position: absolute;
	top: 50%;
	left: 60%;
	transform: translate(-50%, -50%);
	color: white;
	max-width: 400px;
	border-radius: 20px;
	background: rgba(0, 0, 0, 0.1);
	box-sizing: border-box;
	padding: 40px;
	margin-top: 100px;
}

.Login_box h1 {
	float: left;
	font-size: 20px;
	border-bottom: 6px solid #35475e;
	margin-bottom: 50px;
	padding: 13px 0;
	color: black;
}

.textbox {
	width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid #35475e;
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
	color: #35475e;
	font-size: 18px;
	width: 80%;
	float: left;
	margin: 0 10px;
}

.btn {
	width: 100%;
	background: #35475e;
	border: 2px solid #35475e;
	border-radius: 10px 10px 5px;
	color: white;
	padding: 5px;
	font-size: 18px;
	cursor: pointer;
	margin: 12px 0;
}

.print {
	color: green;
	text-decoration: none;
	text-align: center;
}
</style>
</head>

<body>


	<div class="header">

		<div class="container">
			<div class="navbar">
				<div class="logo">
					<img src="image/pethubwhite.png" width="125px">
				</div>
				<nav>
					<center>
						<a>Admin Dashboard</a>
					</center>

				</nav>
			</div>

		</div>
	</div>
	<div class="admin-wrapper">
		<!--            leftsidebar-->
		<div class="left-sidebar">
			<ul>

				<li><a href="adminuserindex.jsp">Manage users</a></li>
				<li><a href="adminadditem.jsp">Manage Items</a></li>
				<li><a href="adminorder.jsp">Manage Order Details </a></li>
				<li><a href="DeleteProduct.jsp">Delete Product</a></li>
				<li><a href="adminlog.html">Logout</a></li>
			</ul>
		</div>
		<!--            leftsidebar-->



		<!--admin content-->

		<div class="admin-content">
			<div class="print">
				<%
				if (request.getAttribute("status") != null) {
				%>
				<b> <%=request.getAttribute("status")%>
				</b>
				<%}%>
			</div>

			<div class="Login_box">
				<h1>ADD PRODUCT</h1>

				<form action="addproduct" class="frm" method="POST">
					<div class="textbox">

						<input type="text" placeholder="Enter name of the product"
							name="name" value="" required>
					</div>
					<div class="textbox">

						<input type="text" placeholder=" Enter image file" name="image"
							value="" required>
					</div>
					<div class="textbox">

						<input type="number" placeholder=" Enter cost" name="cost"
							value="" required>
					</div>
					<div class="textbox">

						<input type="text" placeholder="Enter details of product"
							name="detail" value="" required>
					</div>

					<div class="textbox">

						<input type="text" placeholder="Enter catagory of product"
							name="catagory" value="" required>
					</div>

					<input class="btn" type="submit" name="submit" value="Add">



				</form>
			</div>





		</div>
	</div>
</body>
</html>
