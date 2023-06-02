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
import model.User.Child;
import model.UsersDB.ChildDB;
import model.UsersDB.UsersDB;
import validation.Validator;

/**
 *
 * @author PC
 */
public class AddNewChild extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static final String ERROR = "newChild.jsp";
    public static final String SUCCESS = "profileParent.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String fullname = Validator.upCassName(request.getParameter("fullName"));
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String idUser = request.getParameter("idUser");
        String idChild = UsersDB.createID();
        
//         this.idChild = idChild;
//        this.childName = childName;
//        this.idUser = idUser;
//        this.dob = dob;
//        this.gender = gender;
//        this.progress = progress;
//        this.weight = weight;
//        this.height = height;
//        this.health = health;
//        this.imgAvt = imgAvt;

        Child child = new Child(idChild, fullname, idUser, dob, gender, "NULL", 0, 0, "NULL", "NULL");
        
        if(ChildDB.newChild(child)){
            request.setAttribute("msq", "Registration success !!!");
            request.getRequestDispatcher(response.encodeURL(SUCCESS)).forward(request, response);
        }else{
            request.setAttribute("msq", "Registration Fail !!!");
            request.getRequestDispatcher(response.encodeURL(ERROR)).forward(request, response);
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