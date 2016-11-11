/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.servlet;

import Project.int303.model.Comment;
import Project.int303.model.Favorite;
import Project.int303.model.Food;
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
public class CommentServlet extends HttpServlet {

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
        if (session.getAttribute("user")!=null){
            Comment com = null ;
            Cookie[] cks = request.getCookies() ;
            int i =0 ;
            int id = 0 ;
            int food = 0 ;
            for(Cookie cr : cks) {
                if (cr.getName().equals("Rate"+request.getParameter("foodId")+User.getUser((String)session.getAttribute("user")).getUserId())) {
                   i = Integer.parseInt(cr.getValue().substring(0, 1));
                   food = Integer.parseInt(cr.getValue().substring(2, cr.getValue().length()));
                } else if (cr.getName().equals("Id")) {
                   id = Integer.parseInt(cr.getValue());
                }
            }
            if(id!=User.getUser((String)session.getAttribute("user")).getUserId()){
                i = 0 ;
            }
            if (request.getParameter("rate")==null){
                if (request.getParameter("comment").equals("")){
                    message = "คุณไม่ได้ใส่อะไร จะ submit มาทำเหี้ยอะไรครับ";
                }else {
                    User u = User.getUser((String)session.getAttribute("user"));
                    int userId = u.getUserId();
                    com = new Comment();
                    com.setDetail(request.getParameter("comment"));
                    com.setUserId(userId);
                    com.setFoodId(Integer.parseInt((String)request.getParameter("foodId")));
                    com.adComment(com);
                    message = "Add Comment Success";
                }
            } else if (food!= Integer.parseInt(request.getParameter("foodId"))||(i == 0 || Integer.parseInt(request.getParameter("rate"))!=i)) {
                if (request.getParameter("comment").equals("")){
                    Food.addRate(Integer.parseInt(request.getParameter("rate")), Integer.parseInt(request.getParameter("foodId")));
                    Food.ChangeRate(i, Integer.parseInt(request.getParameter("foodId")));
                    Food.CalRate(Integer.parseInt(request.getParameter("foodId")));
                    Cookie ck =new Cookie("Rate"+request.getParameter("foodId")+(User.getUser((String)session.getAttribute("user")).getUserId()), request.getParameter("rate")+"-"+request.getParameter("foodId")) ;
                    ck.setMaxAge(100*12*30*24*60*60);
                    response.addCookie(ck);
                    if (Favorite.getFavoriteByUserId((User.getUser((String)session.getAttribute("user")).getUserId()))!=null){
                        Favorite.changeRate(Integer.parseInt(request.getParameter("rate")),(User.getUser((String)session.getAttribute("user")).getUserId()) , Integer.parseInt(request.getParameter("foodId")));
                    }
//                    System.out.println(i);
                    message = "Add Rate Success";
                } else {
                    User u = User.getUser((String)session.getAttribute("user"));
                    int userId = u.getUserId();
                    com = new Comment();
                    com.setDetail(request.getParameter("comment"));
                    com.setUserId(userId);
                    com.setFoodId(Integer.parseInt((String)request.getParameter("foodId")));
                    com.adComment(com);
                    Food.addRate(Integer.parseInt(request.getParameter("rate")), Integer.parseInt(request.getParameter("foodId")));
                    Food.ChangeRate(i, Integer.parseInt(request.getParameter("foodId")));
                    Food.CalRate(Integer.parseInt(request.getParameter("foodId")));
                    Cookie ck =new Cookie("Rate"+request.getParameter("foodId")+(User.getUser((String)session.getAttribute("user")).getUserId()), request.getParameter("rate")+"-"+request.getParameter("foodId")) ;
                    ck.setMaxAge(100*12*30*24*60*60);
                    response.addCookie(ck);
                    if (Favorite.getFavoriteByUserId((User.getUser((String)session.getAttribute("user")).getUserId()))!=null){
                        Favorite.changeRate(Integer.parseInt(request.getParameter("rate")),(User.getUser((String)session.getAttribute("user")).getUserId()) , Integer.parseInt(request.getParameter("foodId")));
                    }
                    message = "Add Comment Success";
                } 
            } else {
//                System.out.println(food);
//                System.out.println(request.getParameter("foodId"));
//                System.out.println(i);
//                System.out.println(request.getParameter("rate"));
                message = "old rate // not add comment";
            }
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/Food?id="+Integer.parseInt(request.getParameter("foodId"))).forward(request, response);
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
