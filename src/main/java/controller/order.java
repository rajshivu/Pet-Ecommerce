
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Registration1;

@WebServlet(name = "order", urlPatterns = {"/order"})
public class order extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession se1 = request.getSession();
        Registration1 reg = new Registration1(se1);
        try {
            if (request.getParameter("submit") != null) {
                String order_address = request.getParameter("address");
                String order_city = request.getParameter("city");
                String order_state = request.getParameter("state");
                String tcost = request.getParameter("tcost");
                String status = reg.orderdetails(order_address, order_city, order_state,tcost);
                if (status.equals("success")) {
                    RequestDispatcher rd1 = request.getRequestDispatcher("myorder.jsp");
                    rd1.forward(request, response);
                }
            } else if (request.getParameter("deleteorder") != null) {
                int oid = Integer.parseInt(request.getParameter("orderid"));
                int status = reg.deleteorder(oid);
                if (status > 0) {
                    RequestDispatcher rd1 = request.getRequestDispatcher("myorder.jsp");
                    rd1.forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
