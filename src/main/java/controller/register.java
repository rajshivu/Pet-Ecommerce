/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import model.Registration1;

/**
 *
 * @author BSIL
 */
@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         HttpSession session = request.getSession();
        /* TODO output your page here. You may use following sample code. */
        Registration1 reg = new Registration1(session);

        try {
            if (request.getParameter("submit") != null) {
                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String pw = request.getParameter("pw");
                String cp = request.getParameter("cp");

                if (pw.equals(cp)) {
                    String status = reg.Registration(name, phone, email, pw);

                    if (status.equals("existed")) {
                        RequestDispatcher rd1 = request.getRequestDispatcher("existed.jsp");
                       
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('User Exist...!!! Pleas Login');");
                        out.println("location='login.html';");
                        out.println("</script>");

                    } else if (status.equals("success")) {
                        RequestDispatcher rd1 = request.getRequestDispatcher("success.jsp");

                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Registerd Succesfully...!!!');");
                        out.println("location='login.html';");
                        out.println("</script>");

                       
                    } else if (status.equals("failure")) {
                        RequestDispatcher rd1 = request.getRequestDispatcher("failure.jsp");
                        rd1.forward(request, response);
                    }

                } else {

                    out.println("<html>");
                    out.println("<center>");
                    out.println("<br><br>");
                    out.println("<body bgcolor='lightgreen'>");
                    out.println("<font color='red' size='6'>");
                    out.println(" password does not match");

                    out.println("</font></center></body></html)");
                }
            }else if (request.getParameter("logout") != null) {
                session.invalidate();
                RequestDispatcher rd1= request.getRequestDispatcher("userhome.jsp");
                rd1.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
