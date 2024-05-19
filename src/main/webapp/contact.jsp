<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>Pet Hub</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<style>
* {
	margine: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'poppins', sans-serif;
}

body {
	background-image: url("image/bg1.jpeg");
	background-size: cover;
}

.contact {
	position: relative;
	min-height: 100vh;
	padding: 50px 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.contact .content {
	max-width: 800px;
	text-align: center;
}

.contact .content h2 {
	font-size: 36px;
	font-weight: 500;
	color: #fff;
	padding-bottom: 100px;
}

.contact .content p {
	font-weight: 300;
	color: #fff;
}

.container1 {
	width: 100%;
	display: flex;
	justify-content: center;
	align-content: center;
	margin-top: 30px;
}

.container1 .contactInfo {
	width: 50%;
	display: flex;
	flex-direction: column;
}

.container1 .contactInfo .box {
	position: relative;
	padding: 10px 0;
	display: flex;
}

.container1 .contactInfo .box .icon {
	min-width: 60px;
	height: 60px;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	font-size: 22px;
}

.container1 .contactInfo .box .text {
	display: flex;
	margin-left: 20px;
	font-size: 16px;
	color: #fff;
	flex-direction: column;
	font-weight: 300;
}

.container1 .contactInfo .box .text pre {
	display: flex;
	margin-left: 20px;
	font-size: 16px;
	color: #fff;
	flex-direction: column;
	font-weight: 300;
}

.container1 .contactInfo .box .text h3 {
	font-weight: 500;
	color: #00bcd4;
}

.contactFrom {
	width: 500px;
	height: 400px;
	border-radius: 20px;
	padding: 40px;
	background: #fff;
}

.contactFrom h2 {
	font-size: 30px;
	color: #333;
	font-weight: 500;
}

.contactFrom .inputBox {
	position: relative;
	width: 100%;
	margin-top: 10px;
}

.contactFrom .inputBox input, .contactFrom .inputBox textarea {
	width: 100%;
	padding: 5px 0;
	font-size: 16px;
	margin: 10px 0;
	border: none;
	border-bottom: 2px solid #333;
	outline: none;
	resize: none;
}

.contactFrom .inputBox span {
	position: absolute;
	left: 0;
	padding: 5px 0;
	font-size: 16px;
	margin: 10px 0;
	pointer-events: none;
	transition: 0.5s;
	color: #666;
}
/*        .contactFrom .inputBox input:focus ~ span,
                    .contactFrom .inputBox input:valid ~ span,
                    .contactFrom .inputBox textarea:focus ~ span
                    .contactFrom .inputBox textarea:focus ~ span
                    {
                        color: #e91e63;
                        font-size: 12px;
                        transform: translateY(-20px);
                    }*/
.contactFrom .inputBox input[type="submit"] {
	widows: 100px;
	background: #00bcd4;
	color: #fff;
	border: none;
	cursor: pointer;
	padding: 10px;
	font-size: 18px;
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
	color: #fff;
}

nav ul li p {
	color: #555;
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
/*            .categories{
                margin: 40px 0;
            }
            .categories .col-3{
                flex-basis: 30%;
                min-width: 250px;
                margin-bottom: 0px;

                text-align: center;
                padding: 40px 10px;
                    box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);
                cursor: pointer;
                transition: transform 0.5s;

            }
            .categories .col-3 img{

                width: 150px;
                height: 150px;
                margin-top: 20px;
                border-radius: 50%;
            }
            .categories .col-3:hover{
                transform: translateY(-10px);
            }
            .small-container{
                max-width: 1080px;
                margin: auto;
                padding-left: 25px;
                padding-right: 25px;
            }
            .col-4{
                flex-basis: 25%;
                padding: 10px;
                min-width: 200px;
                margin-bottom: 50px;
                transition: transform 0.5s;
            }
            .col-4 img{
                width: 100%;
            }
            .title{
                text-align: center;
                margin: 0 auto 80px;
                position: relative;
                line-height: 60px;
                color: #555;
            }
            .title::after{
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
            h4{
                color: #555;
                font-weight: normal;
            }    
            .col-4 p{
                font-size: 14px;
            }
            .rating .fa{
                color: #ff523b;

            }
            .col-4:hover{
                transform: translateY(-5px);
            }*/

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
</style>
</head>


<body>

	<div class="header">

		<div class="container">
			<div class="navbar">
				<div class="logo">
					<img src="images/pethubwhite.png" width="125px">
				</div>
				<%
				if (session.getAttribute("id") != null) {
				%>
				<b> <%=session.getAttribute("name")%></b>
				<%}%>
				<nav>
					<ul>
						<li><a href="userhome.jsp">Home</a></li>



						<li><a href="dog_product.jsp">Dog</a></li>
						<li><a href="catcol.jsp">Cat</a></li>
						<li><a href="birdcol.jsp">Bird</a></li>
						<%
						if (session.getAttribute("id") != null) {
						%>

						<li><a href="myorder.jsp">My Orders</a></li>
						<li><a href="login.html">Logout</a></li>
						<li><a href="cart.jsp"><img src="images/cart.png"
								width="30px" height="30px"></a></li>

						<%}%>
					</ul>
				</nav>

			</div>


		</div>
	</div>
	<section class="contact">
		<div class="content">
			<h2>Contact Us</h2>
		</div>
		<div class="container1">
			<div class="contactInfo">
				<div class="box">
					<div class="icon">
						<i class="fa fa-map-marker" aria-hidden="true"></i>
					</div>
					<div class="text">
						<h3>Address</h3>
						<pre>#53
Vijaynagar
Karnataka.</pre>
					</div>
				</div>
				<div class="box">
					<div class="icon">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
					<div class="text">
						<h3>phone</h3>
						<!-- <p>+91 8292345579</p> -->
						<p>180-565656</p>
					</div>
				</div>
				<div class="box">
					<div class="icon">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</div>
					<div class="text">
						<h3>Email</h3>
						<p>pethub@gmail.com</p>
					</div>
				</div>
			</div>
			<form action="contact" method="POST">
				<div class="contactFrom">
					<div class="inputBox">
						<input type="text" name="name" placeholder="Name"
							required="required">
						<!--                        <span>NAME</span>-->
					</div>
					<div class="inputBox">
						<input type="text" name="email" placeholder="Email"
							required="required">
						<!--                        <span>Email</span>-->
					</div>
					<div class="inputBox">
						<input type="text" name="msg" placeholder="your message">
						<!--                        <span>Type your maessage</span>-->
					</div>
					<div class="inputBox">
						<input onclick="myfunction()" type="submit" name="submit"
							value="send">
					</div>
				</div>
			</form>
		</div>
	</section>
	<script>
		function myFunction() {
			alert("Hello! I am an alert box!");
		}
	</script>


	<!--        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>-->

	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col-1">
					<h3>Download Our App</h3>
					<p>Download App For Android and ios mobile phone.</p>
					<div class="app-logo">
						<img src="images/gplay.jpeg"> <img src="images/astore.jpeg">
					</div>
				</div>
				<div class="footer-col-2">
					<img src="images/pethubwhite.png" width="150px">
					<p>Download App For Android and ios mobile phone jhasgdjhsad
						amsjdfakjfsd asdsag.</p>
				</div>
				<div class="footer-col-3">
					<h3>Useful Links</h3>
					<ul>
						<li>Coupons</li>
						<li>Blog Post</li>
						<li>Return Policy</li>
						<li>Join Affiliate</li>
					</ul>
				</div>
				<div class="footer-col-4">
					<h3>Follow Us</h3>
					<ul>
						<li><i class="fa fa-facebook-square"></i>Facebook</li>
						<li><i class="fa fa-instagram"></i>Instagramt</li>
						<li><i class="fa fa-twitter"></i>Twitter</li>
						<li><i class="fa fa-youtube"></i>YouTube</li>
					</ul>
				</div>
			</div>
			<hr>
			<p class="copyright">&copy; Copyright 2024-PetHUB</p>
		</div>
	</div>



</body>
</html>
