/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.servlet;

import Project.int303.model.Favorite;
import Project.int303.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ratchanon
 */
public class FavoriteServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        String message = "";
        int userId = User.getUser((String) session.getAttribute("user")).getUserId();
        if (session.getAttribute("user") != null) {
            if (Favorite.check((User.getUser((String) session.getAttribute("user")).getUserId()), Integer.parseInt(request.getParameter("foodId")))) {
                Cookie[] cks = request.getCookies();
                int myRate = 0;
                int food = 0;
                for (Cookie cr : cks) {
                    if (cr.getName().equals("Rate" + request.getParameter("foodId") + User.getUser((String) session.getAttribute("user")).getUserId())) {
                        myRate = Integer.parseInt(cr.getValue().substring(0, 1));
                        food = Integer.parseInt(cr.getValue().substring(2, cr.getValue().length()));
                    }
                }
                if (myRate != 0) {
                    Favorite f = new Favorite(food, userId, myRate);
                } else {
                    Favorite f = new Favorite(Integer.parseInt((String) request.getParameter("foodId")), userId);
                }
                getServletContext().getRequestDispatcher("/Food?id=" + Integer.parseInt(request.getParameter("foodId"))).forward(request, response);
            }
            getServletContext().getRequestDispatcher("/Food?id=" + Integer.parseInt(request.getParameter("foodId"))).forward(request, response);
        } else {
            getServletContext().getRequestDispatcher("/Login").forward(request, response);
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
