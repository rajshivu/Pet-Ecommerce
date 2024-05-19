

<%@page import="model.Dproduct"%>
<%@page import="model.Registration1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Birds cart</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bcd.css">
</head>
<body>

	<div class="header">

		<div class="container">
		
			<%@include file="homeHeader.jsp"%>
			
			<h2 class="h2">Order Your Requirements</h2>
			<%
			Registration1 s1 = new Registration1(session);
			ArrayList<Dproduct> ar = s1.getb_productinfo();

			//                            ArrayList<User> mydata = (ArrayList) ar;
			Iterator<Dproduct> itr = ar.iterator();
			while (itr.hasNext()) {
				Dproduct s = itr.next();
			%>

			<form action="addtocart" method="POST">
				<div class="container1">
					<div class="row">
						<div class="col-md-5">
							<img src="image/<%=s.getp_image()%>" class="d-block w-100">
						</div>
						<div class="col-md-7">
							<!--<p class="newdish text-center"></p>-->
							<h2><%=s.getp_name()%></h2>
							<input type="hidden" name="p_id" value="<%=s.getp_id()%>">
							<!-- <img src="" class="stars">-->
							<p class="price">
								&#8377
								<%=s.getp_cost()%></p>
							<p><%=s.getp_details()%></p>
							<input type="hidden" name="jspName" value="bird">
							<%
							if (session.getAttribute("name") != null) {
							%>
							<button type="submit" name="addtocart" class="but">Add
								to Cart</button>
							<%
							} else {
							%>
							<a href="login.jsp">Add To Cart</a>
							<%}%>
						</div>
					</div>

				</div>
			</form>
			<%}%>

		</div>
	</div>

<%@include file="homeFooter.jsp"%>

</body>
</html>
