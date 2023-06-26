/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control.file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.User.Users;
import model.User.UsersDB;
import validation.Validator;

/**
 *
 * @author ASUS-PRO
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class FileUploadServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static final String ERROR = "profileParent_Edit.jsp";
    public static final String SUCCESS = "ProfileById";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        Users s = (Users) (request.getSession().getAttribute("USER"));
        String id = request.getParameter("idUser");
        String img = request.getParameter("file");
        Users user = new Users(id, s.getFullName(), s.getAddress(), s.getEmail(), s.getPassword(), s.getIdChild(), s.getCerticate(), fileName, s.getRole(), s.getGender(), s.getDateOB(), s.getPhoneNumber());
        Users userRequest = null;
        if (fileName.isEmpty() && !(fileName.endsWith(".jpg") || fileName.endsWith(".png"))) {
            request.setAttribute("msq", "No photos or wrong type!");
            request.getRequestDispatcher(ERROR).forward(request, response);
        } else {

            for (Part part : request.getParts()) {
                part.write("C:\\Users\\ASUS-PRO\\OneDrive\\Documents\\NetBeansProjects\\SWP391\\A01_RT03\\web\\img\\" + fileName);

            }
            Path source = Paths.get("C:\\Users\\ASUS-PRO\\OneDrive\\Documents\\NetBeansProjects\\SWP391\\A01_RT03\\web\\img\\" + fileName);

            String name = Validator.createNameImg() + "." + Validator.getExtension(fileName);
            Files.move(source, source.resolveSibling(name));
            UsersDB.updateImg(id, name);
            user.setImgAvt(name.trim());
            userRequest = UsersDB.getUserById(id);
            request.getSession().setAttribute("userRequest", userRequest);
            request.getSession().setAttribute("USER", userRequest);
            request.setAttribute("msq", "Update Success!!!");
                request.getRequestDispatcher(response.encodeURL(SUCCESS)).forward(request, response);
//            response.sendRedirect(SUCCESS);

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