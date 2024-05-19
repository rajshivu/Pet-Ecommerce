/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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




@WebServlet(name = "addproduct", urlPatterns = {"/addproduct"})
public class addproduct extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        /* TODO output your page here. You may use following sample code. */
        Registration1 reg = new Registration1(session);

        try {
            if (request.getParameter("submit") != null) {
                String image = request.getParameter("image");
                String name = request.getParameter("name");
                String cost = request.getParameter("cost");
                String detail = request.getParameter("detail");
                String catagory = request.getParameter("catagory");

                String status = reg.addproducts(image, name, cost, detail, catagory);

                if (status.equals("success")) {
                     request.setAttribute("status", "Added Successfully");
                    RequestDispatcher rd1 = request.getRequestDispatcher("adminadditem.jsp");
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
    }// </editor-fold>
}
