/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package cotroller.list;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Class.ClassListDB;
import model.User.Users;

/**
 *
 * @author ASUS-PRO
 */
public class ClassList extends HttpServlet {

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
        String id = request.getParameter("id");
        Users users = (Users) request.getSession().getAttribute("USER");
        if(users ==null ){
             request.getRequestDispatcher("login.jsp").forward(request, response);
        }else{
            if( users.getRole().equals("Parent")){
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }else{
                 String indexPage = request.getParameter("pageA");
        if(indexPage == null){
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
         ClassListDB c = new ClassListDB();
        int count = c.getTotal();
        int endPage = count/2;
        if(count % 2 !=0 ){
            endPage++;
        }
        ArrayList<model.Class.ClassList> user = c.getAllClassByIdTeacher(id,index);
        request.setAttribute("listA",  user);
        request.setAttribute("id",  id);
        request.setAttribute("endPageA", endPage);
         request.setAttribute("tagA", index);
         request.getRequestDispatcher("team.jsp").forward(request, response);
            }
           
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