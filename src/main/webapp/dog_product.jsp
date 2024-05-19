<%-- 
    Document   : dog_product
    Created on : Aug 29, 2020, 7:45:17 PM
    Author     : BSIL
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Image Show</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pethub", "root", "Tiger");
		Statement st = con.createStatement();
		String sql = "SELECT * FROM dog_products";
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			int id = rs.getInt("dp_id");
			String image = rs.getString("dp_image");
			String name = rs.getString("dp_name");
			String cost = rs.getString("dp_cost");
	%>

	<table style="width: 100%" border="2">
		<tr>
			<th>Id</th>
			<th>Image</th>
			<th>Last Name</th>
			<th>Image</th>

		</tr>
		<tr>
			<td><%=id%></td>
			<td><image src="image/<%=image%>" width="150" height="200" /></td>

			<td><%=name%></td>
			<td><%=cost%></td>

		</tr>
	</table>
	<table>

		<tr>

			<td><img src="image/<%=image%>" width="200" height="200" /><br><%=name%><br><%=cost%></td>
			
		</tr>
	</table>
	<%
	}
	} catch (Exception e) {
	out.println(e);
	}
	%>

	
</body>
</html>

