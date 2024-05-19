<%@ page import="java.sql.*" %>
<% 
    Connection con;
    String dlt = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pethub","root","spoo");

    Statement st = con.createStatement();;  

   int i = st.executeUpdate("update orders set status='Canceled'  where order_id='"+dlt+"';");
   int j = st.executeUpdate("update cart set status='Canceled'  where order_id='"+dlt+"';");
    if (i != 0 && j!=0) {
        response.sendRedirect("myorder.jsp");
    } else {
        response.sendRedirect("myorder.jsp");
    }
%>