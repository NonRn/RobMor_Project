/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.servlet;

import Project.int303.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ratchanon
 */
public class RegisterUserServlet extends HttpServlet {

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
        String message = "";
        User u = new User();
        u.setFname(request.getParameter("fname"));
        u.setLname(request.getParameter("lname"));
        if (u.checkEmail(request.getParameter("email"))){
            u.setEmail(request.getParameter("email"));
        } else {
            message = "This email has been use for an account";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);   
            return;
        }
        u.setGender(request.getParameter("gender"));
        u.setTelno(request.getParameter("tel"));
        if ((Integer.parseInt(request.getParameter("year")))%4 == 0 && (Integer.parseInt(request.getParameter("year")))%4 != 0) {
            if (Integer.parseInt(request.getParameter("month"))==2){
                if (Integer.parseInt(request.getParameter("day"))<=29){
                    Date d = new Date((Integer.parseInt(request.getParameter("year"))),Integer.parseInt(request.getParameter("month")),Integer.parseInt(request.getParameter("day")));
                    u.setDob(d);
                } else {
                    message = "Your date of birth is incorrect" ;
                    request.setAttribute("message", message);
                    getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);   
                    return;
                }
            }
        } else if (Integer.parseInt(request.getParameter("month"))==2){
            if ((Integer.parseInt(request.getParameter("year")))%4 == 0 && (Integer.parseInt(request.getParameter("year")))%4 != 0){
                if (Integer.parseInt(request.getParameter("day"))<=29){
                    Date d = new Date((Integer.parseInt(request.getParameter("year"))),Integer.parseInt(request.getParameter("month")),Integer.parseInt(request.getParameter("day")));
                    u.setDob(d);
                } else {
                    message = "Your date of birth is incorrect" ;
                    request.setAttribute("message", message);
                    getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);   
                    return;
                }
            } else if (Integer.parseInt(request.getParameter("day"))<=28){
                Date d = new Date((Integer.parseInt(request.getParameter("year"))),Integer.parseInt(request.getParameter("month")),Integer.parseInt(request.getParameter("day")));
                u.setDob(d);
            } else {
                message = "Your date of birth is incorrect" ;
                request.setAttribute("message", message);
                getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);   
                return;
            }
        } else if (Integer.parseInt(request.getParameter("month"))==4 || Integer.parseInt(request.getParameter("month"))==6 || Integer.parseInt(request.getParameter("month"))==9 ||
                Integer.parseInt(request.getParameter("month"))==11 ){
            if (Integer.parseInt(request.getParameter("day"))<=30){
                Date d = new Date((Integer.parseInt(request.getParameter("year"))),Integer.parseInt(request.getParameter("month")),Integer.parseInt(request.getParameter("day")));
                u.setDob(d);
            } else {
                message = "Your date of birth is incorrect" ;
                request.setAttribute("message", message);
                getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);   
                return;
            }            
        } else {
            Date d = new Date((Integer.parseInt(request.getParameter("year"))),Integer.parseInt(request.getParameter("month")),Integer.parseInt(request.getParameter("day")));
            u.setDob(d);
        }
        if (u.checkUsername(request.getParameter("username"))){
            u.setUsername(request.getParameter("username"));            
        } else {
            message = "Username is duplicate with other person";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);   
            return;
        }
        String password = request.getParameter("pass");
        String confirmPass = request.getParameter("passcon");
        if (password.equals(confirmPass)){
            u.register(u, password);
        } else {
            message = "Confirm password is not same password";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
            return;
        }
        message = "Register success";
        request.setAttribute("message", message);
        getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
            
//          getServletContext().getRequestDispatcher("/SearchFood.jsp").forward(request, response);
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
