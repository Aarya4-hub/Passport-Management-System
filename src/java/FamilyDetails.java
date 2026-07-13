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
public class FamilyDetails extends HttpServlet {

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
            String ffn = request.getParameter("fatherName");
            String mfn = request.getParameter("motherName");
            String spn = request.getParameter("spouseName");
            String gn = request.getParameter("guardianName");
            String fn = request.getParameter("fatherNationality");
            String mn = request.getParameter("motherNationality");
            if (ffn == null) {
                out.println("Father's fullname is required");
                return;
            }
            if (mfn == null) {
                out.println("Mother's fullname is required");
                return;
            }
            if (fn == null) {
                out.println("Father's nationality is required");
                return;
            }
            if (mn == null) {
                out.println(" Mother's nationality is required");
                return;
            }
            
            HttpSession hs = request.getSession();
            hs.setAttribute("ffn", ffn);
            hs.setAttribute("mfn", mfn);
            hs.setAttribute("fn", fn);
            hs.setAttribute("mn", mn);
            hs.setAttribute("spn", spn);
            hs.setAttribute("gn", gn);
            response.sendRedirect("AddressDetails.jsp");
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
