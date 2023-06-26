/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.updateProfile;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User.Users;
import model.User.UsersDB;
import model.child.Child;
import model.child.ChildDB;

/**
 *
 * @author PC
 */
public class ProfileChildById extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   public static final String SUCCESS ="profileChild.jsp"; 
    public static final String ERORR ="profileParent.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idChild = request.getParameter("idChild");
        String idUser = request.getParameter("idUser");
        
        
        Users userRequest = null;
        Child childRequest = null;
        
        childRequest = ChildDB.getChildbyIdChild(idChild);
        userRequest = UsersDB.getUserById(childRequest.getIdUser());
        
        if(userRequest != null && childRequest != null){
            request.setAttribute("userRequest", userRequest);
            request.setAttribute("childRequest", childRequest);
            request.getRequestDispatcher(response.encodeURL(SUCCESS)).forward(request, response);
        }else{
            request.setAttribute("smq", "Not found User");
            request.getRequestDispatcher(response.encodeURL(ERORR)).forward(request, response);
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
