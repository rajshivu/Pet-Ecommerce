
	<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="navbar">
		<div class="logo">
			<img src="image/pethublogo.png" width="125px">
		</div>
		<%
		if (session.getAttribute("name") != null) {
		%>
		<%=session.getAttribute("name")%>

		<%
		}
		%>
		<nav>
			<ul>
				<li><a href="userhome.jsp">Home</a></li>
				<li><a href="register.html">Register</a></li>
				<li><a href="login.jsp">Login</a></li>
				<%
				if (session.getAttribute("name") != null) {
				%>

				<li><a href="myorder.jsp">My Orders</a></li>
				<li><a href="login.jsp">Logout</a></li>
				<li><a href="cart.jsp"><img src="image/cart.png"
						width="30px" height="30px"></a></li>

				<%
				}
				%>

			</ul>
		</nav>
	</div>

</body>
</html>