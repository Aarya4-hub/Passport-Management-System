/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author AARYA
 */
public class EmergencyContact extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String en = request.getParameter("ename");
            String er = request.getParameter("relation");
            String em = request.getParameter("mobile");
            String eam = request.getParameter("alt");
            String eml = request.getParameter("email");
            String eadd = request.getParameter("address");
            if (en == null) {
                out.println("Emergency contact name is required");
                return;
            }
            if (er == null) {
                out.println(" Relation is required");
                return;
            }
            if (em == null) {
                out.println("Mobile Number is required");
                return;
            }
            if (eam == null) {
                out.println("Alternate Mobile Number is required");
                return;
            }
            if (eml == null) {
                out.println("Mail is required");
                return;
            }
            if (eadd == null) {
                out.println("Address is required");
                return;
            }
            
            HttpSession hs = request.getSession();
            hs.setAttribute("ename", en);
            hs.setAttribute("er", er);
            hs.setAttribute("em", em);
            hs.setAttribute("eml", eml);
            hs.setAttribute("eam", eam);
            hs.setAttribute("eadd", eadd);
            response.sendRedirect("PreviousPassport.jsp");
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
