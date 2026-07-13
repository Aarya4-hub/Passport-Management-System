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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author AARYA
 */
public class Admin_Login extends HttpServlet {

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
            
    String u = request.getParameter("admin_username");
    String p = request.getParameter("password");

    if (u == null || u.trim().length() < 3) {
        out.print("Username is required and must be at least 3 characters");
    }
    if (p == null || p.trim().length() < 8) {
        out.print("Password is required and must be at least 8 characters");
    }

    try {
        Class.forName("org.sqlite.JDBC");
        Connection conn = DriverManager.getConnection("jdbc:sqlite:C:/db23/pmsdb.db");
        conn.setAutoCommit(true);

        String search = "SELECT * FROM admin WHERE username=? AND password=?";
        PreparedStatement ps = conn.prepareStatement(search);
        ps.setString(1, u);
        ps.setString(2, p);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            //int id = rs.getInt("admin_id");
            //HttpSession hs = request.getSession();
            //hs.setAttribute("admin_id", id);
            response.sendRedirect("Admin_Dashboard.jsp");
        } else {
            out.print("Login Failed");
           // response.sendRedirect("Admin_Registration.jsp");
        }

        rs.close();
        ps.close();
        conn.close();
    } catch (Exception e) {
        out.print("Error: " + e.getMessage());
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
