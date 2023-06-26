/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.course;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Class.ClassList;
import model.Class.ClassListDB;
import validation.Validator;

/**
 *
 * @author DELL-G3
 */
public class addCourse extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
       public static final String ERROR = "addClass.jsp";
    public static final String SUCCESS = "addClass.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idClass =Validator.createID();
        String className = request.getParameter("className");
        String idTeacher = request.getParameter("idTeacher");
        int totalSeat = Integer.valueOf(request.getParameter("totalSeat"));
        String timeStartSemester = request.getParameter("timeStartSemester");
        String timeEndSemester = request.getParameter("timeEndSemester");
        String timeFrom = request.getParameter("timeFrom");
        String timeTo = request.getParameter("timeTo");
        int tuition = Integer.valueOf(request.getParameter("tuition"));
        String status = "NULL";
        String condition = request.getParameter("condition");
        
       ClassList classList = new ClassList(idClass, className, idTeacher, totalSeat,  LocalDateTime.parse(timeStartSemester),  LocalDateTime.parse(timeEndSemester),  LocalDateTime.parse(timeFrom),  LocalDateTime.parse(timeTo), tuition, status, condition);
        if(ClassListDB.addClassList(classList)){
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
