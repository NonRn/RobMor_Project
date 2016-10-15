/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.servlet;

import Project.int303.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ratchanon
 */
public class EditUserServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
//        String cid = request.getParameter("id");
        HttpSession session = request.getSession(false);
        String message = "";
        User u = null;
        if(session!=null && session.getAttribute("user")!=null){
            if (request.getParameter("username")==null){
                u = User.getUser((String)session.getAttribute("user"));
            } else { 
                System.out.println("1111"); 
                User us = new User();
                us.setTelno(request.getParameter("telno"));
                us.setUserId(Integer.parseInt(request.getParameter("id")));
                us.setFname(request.getParameter("fname"));
                us.setLname(request.getParameter("lname"));
                us.setGender(request.getParameter("gender"));
                User.editProfile(us);
                u = User.getUser((String)session.getAttribute("user"));
                message = "Edit Success";
            }
            request.setAttribute("user", u);
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/EditProfile.jsp").forward(request, response);
            return;
        } else{
            getServletContext().getRequestDispatcher("/Login.jsp").forward(request,response);
            return;
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
