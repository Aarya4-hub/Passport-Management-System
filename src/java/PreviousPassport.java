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
public class PreviousPassport extends HttpServlet {

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
            String held = request.getParameter("held");
            String ppn = request.getParameter("ppno");
            String pid = request.getParameter("issue");
            String ped = request.getParameter("expiry");
            String ppi = request.getParameter("place");
            
            if (held == null) {
                out.println("This is required to fill ");
                return;
            }
            /*if (db == null) {
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
            */
            HttpSession hs = request.getSession();
            hs.setAttribute("held", held);
            hs.setAttribute("ppn", ppn);
            hs.setAttribute("ped", ped);
            hs.setAttribute("pid", pid);
            hs.setAttribute("ppi", ppi);
            
            response.sendRedirect("OtherDetails.jsp");
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
