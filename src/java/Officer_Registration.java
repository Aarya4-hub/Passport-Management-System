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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author AARYA
 */
public class Officer_Registration extends HttpServlet {

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
            String o_n=request.getParameter("officer_name");
            String d_n=request.getParameter("designation");
            String o_u=request.getParameter("officer_username");
            String o_p=request.getParameter("password");
            if(o_n==null||o_n.length()<5){
                out.println("Fullname is required and it must be of atleast 5 characters");
                
            }
            if(d_n==null){
                out.println("Designantion is required");
            }
            if(o_u==null||o_u.length()<3){
                out.println("Username is required and must be of atleast 3 characters");
            }
            if(o_p==null||o_p.length()<8){
                out.println("Password is required and must be of atleast  8 characters");
            }
            try{
             Class.forName("org.sqlite.JDBC");
            Connection conn = DriverManager.getConnection("jdbc:sqlite:C:/db23/pmsdb.db");
            String ins="INSERT INTO officer(fulln,un,pass,d)VALUES(?,?,?,?)";
            PreparedStatement ps=conn.prepareStatement(ins);
            ps.setString(1, o_n);
            ps.setString(2, o_u);
            ps.setString(3, o_p);
            ps.setString(4, d_n);
            int res=ps.executeUpdate();
            if(res==1){
               response.sendRedirect("Officer_Login.jsp");
            }
            else{out.println("Registration Failed!!!");
            }
           
            ps.close();
            conn.close();
            }
            catch(Exception e){
                e.getMessage();
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
