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
public class AddressDeatils extends HttpServlet {

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
            String hn = request.getParameter("houseNo");
            String sn = request.getParameter("street");
            String c = request.getParameter("city");
            String a = request.getParameter("area");
            String d = request.getParameter("district");
            String s = request.getParameter("state");
            String p = request.getParameter("pincode");
            if (hn==null) {
                out.println("House number is required");
                return;
            }
            if (sn==null) {
                out.println("Street is required");
                return;
            }
            if (a==null) {
                out.println("Area is required");
                return;
            }
            if (c==null) {
                out.println(" City is required");
                return;
            }
            if (d==null) {
                out.println(" District is required");
                return;
            }
            if (s==null) {
                out.println(" State is required");
                return;
            }
            if (p==null) {
                out.println("Pincode is required");
                return;
            }
            if(p.length()>6){
                    out.print("Enter Valid Pincode");
                }
            
            HttpSession hs = request.getSession();
            hs.setAttribute("hn", hn);
            hs.setAttribute("sn", sn);
            hs.setAttribute("c", c);
            hs.setAttribute("s", s);
            hs.setAttribute("p", p);
            hs.setAttribute("a", a);
            hs.setAttribute("d", d);
            response.sendRedirect("EmergencyContact.jsp");

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
