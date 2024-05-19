<%@ page import="java.sql.*" %>
<% 
    Connection con;
    int dlt = Integer.parseInt(request.getParameter("id"));
    Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pethub","root","spoo");

    Statement st = con.createStatement();;  

    int i = st.executeUpdate(" update cart set status='deleted'  where c_id="+dlt);
    if (i != 0) {
        response.sendRedirect("cart.jsp");
    } else {
        out.print("Data not deleted successfully");
    }
%>