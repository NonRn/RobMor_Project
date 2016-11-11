/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.servlet;

import Project.int303.model.Food;
import Project.int303.model.Restaurant;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Ratchanon
 */
public class AddFoodServlet extends HttpServlet {

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
        if (request.getParameter("fromrest") != null) {
            Restaurant r = new Restaurant();
            r.setName(request.getParameter("name"));
            r.setAddress(request.getParameter("address"));
            r.setSeat(Integer.parseInt(request.getParameter("seat")));
            r.addRest(r);
            message = "Add Restaurant Complete";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/AddRest.jsp").forward(request, response);
            return;
        }
        if (session.getAttribute("user") != null) {
            if (request.getParameter("name") != null) {
                Food f = new Food();
                f.setFoodName(request.getParameter("name"));
                f.setPrice(request.getParameter("price"));
                f.setType(request.getParameter("type"));
                f.setRestuarant(request.getParameter("restaurant"));
                f.setDetail(request.getParameter("detail"));
                f.setWriter((String) session.getAttribute("user"));
                int id = f.addFood(f);
                Part picturePart = request.getPart("picture");
                picturePart.write(id + ".png");
                message = "Add Food Complete";
                request.setAttribute("message", message);
                ArrayList<Restaurant> ar = Restaurant.findRest();
                request.setAttribute("rest", ar);
                getServletContext().getRequestDispatcher("/AddFood.jsp").forward(request, response);
                return;
            } else {
                ArrayList<Restaurant> ar = Restaurant.findRest();
                request.setAttribute("rest", ar);
                request.setAttribute("message", message);
                getServletContext().getRequestDispatcher("/AddFood.jsp").forward(request, response);
                return;
            }
        } else {
            getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
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
