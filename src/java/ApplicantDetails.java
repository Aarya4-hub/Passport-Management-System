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
public class ApplicantDetails extends HttpServlet {

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
            String fn = request.getParameter("fullName");
            String db = request.getParameter("dob");
            String pb = request.getParameter("placeOfBirth");
            String n = request.getParameter("nationality");
            String oc = request.getParameter("occupation");
            String gen = request.getParameter("gender");
            if (fn == null) {
                out.println("FullName is required");
                return;
            }
            if (db == null) {
                out.println(" Date of Birth is required");
                return;
            }
            if (pb == null) {
                out.println("Place of Birth is required");
                return;
            }
            if (n == null) {
                out.println("Nationality is required");
                return;
            }
            if (oc == null) {
                out.println("Occupation is required");
                return;
            }
            if (gen == null) {
                out.println("Gender is required");
                return;
            }
            
            HttpSession hs = request.getSession();
            hs.setAttribute("fullname", fn);
            hs.setAttribute("dob", db);
            hs.setAttribute("pob", pb);
            hs.setAttribute("nat", n);
            hs.setAttribute("occ", oc);
            hs.setAttribute("gen", gen);
            response.sendRedirect("FamilyDetails.jsp");
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
