package servletPool;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Remove" ,urlPatterns = {"/Remove"})
public class Remove extends HttpServlet {
private static final long serialVersionUID = 1L;
  Connection con;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
  

    String email = request.getParameter("email");

    try {
        Class.forName("com.mysql.jdbc.Driver"); // load the drivers
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pethub", "root", "Tiger");
            // connection with data base
        PreparedStatement ps = con.prepareStatement("delete from userdata where email=?");
        ps.setString(1, email);

        int i = ps.executeUpdate();

        if(i > 0) {
           response.sendRedirect("remove.jsp");
        }

    } catch (Exception e) {
        System.out.println(e);
    }
}

}