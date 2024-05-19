
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


@WebServlet(name = "addtocart", urlPatterns = {"/addtocart"})
public class addtocart extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Registration1 reg = new Registration1(session);
        try {
            if (request.getParameter("addtocart") != null) {
                String p_id = request.getParameter("p_id");
                String status = reg.addtocart(p_id);
                if (status.equals("success")) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Item Added Tto Cart...!!!');");
                    out.println("</script>");
                    RequestDispatcher rd1 = request.getRequestDispatcher("cart.jsp");
                    rd1.forward(request, response);
                }
            } else if (request.getParameter("delete") != null) {
                int c_id = Integer.parseInt(request.getParameter("cid"));
                int status = reg.deletecart(c_id);
                if (status > 0) {
                    RequestDispatcher rd1 = request.getRequestDispatcher("cart.jsp");
                    rd1.forward(request, response);
                }
            }
            
            else if (request.getParameter("cid") != null) {
                int c_id = Integer.parseInt(request.getParameter("cid"));
                int status = reg.deleteproduct(c_id);
                if (status > 0) {
                    RequestDispatcher rd1 = request.getRequestDispatcher("DeleteProduct.jsp");
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
