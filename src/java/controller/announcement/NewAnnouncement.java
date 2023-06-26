/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.announcement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User.UsersDB;
import model.announcement.Announcement;
import model.announcement.AnnouncementDB;

/**
 *
 * @author PC
 */
public class NewAnnouncement extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static final String ERROR = "newAnnouncement.jsp";
    public static final String SUCCESS = "AnnouncementList";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        response.setContentType("text/html;charset=UTF-8");

        String idAnn = UsersDB.createID();
        String idUser = request.getParameter("idUser");
        String titleAnn = request.getParameter("title");
        String contentAnn = request.getParameter("contentAnn");

        LocalDateTime datePost = LocalDateTime.now();
       
        Announcement ann = new Announcement(idAnn, idUser, datePost, titleAnn, contentAnn, "");


        if (AnnouncementDB.newAnnouncement(ann)) {
            List<Announcement> listAnn = null;
            listAnn = AnnouncementDB.getAnnouncementAll();
            request.getSession().setAttribute("listAnn", listAnn);

//            request.setAttribute("msq", "Registration success !!!");
            request.getRequestDispatcher(response.encodeURL(SUCCESS)).forward(request, response);
        } else {
//            request.setAttribute("msq", "Registration Fail !!!");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(NewAnnouncement.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(NewAnnouncement.class.getName()).log(Level.SEVERE, null, ex);
        }
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
