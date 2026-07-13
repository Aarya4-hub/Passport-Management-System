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
import java.sql.Statement;
import java.sql.PreparedStatement;

/**
 *
 * @author AARYA
 */
public class User_Registration extends HttpServlet {

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
            String Fullname=request.getParameter("fullname");
            String email=request.getParameter("email");
            String mob=request.getParameter("mobile");
            String usern=request.getParameter("username");
            String dob=request.getParameter("dob");
            String add=request.getParameter("address");
            String pass=request.getParameter("password");
            String cpass=request.getParameter("confirmPassword");
            
            if(Fullname==null || Fullname.trim().isEmpty()){
                out.println("FullName is required!!!!!!!");
                return;
            }
            if(email.matches("[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")==false||email.trim().isEmpty()){
                out.println("Enter Valid Email!!!!!!!");
                return;
            }
            if(mob==null||mob.length()!=10||mob.trim().isEmpty()){
                out.println("Mobile number is required and must be of 10 digits");
                return;
            }
            if(usern==null ||usern.trim().isEmpty()){
                out.println("Username is required and must have atleast 2 characters");
                return;
            }
            if(dob==null || dob.trim().isEmpty()){
                out.println("Date of birth is required !!!!!!!");
                return;
            }
            if(pass==null || pass.length()<8||pass.trim().isEmpty()){
                out.println("Password is required and must have atleast 8 characters");
                return;
            }
            if(cpass==null || cpass.length()<8||cpass.trim().isEmpty()){
                out.println("Confirm Password is required and must have atleast 2 characters");
                return;
            }
            
            try{
                Class.forName("org.sqlite.JDBC");
            Connection conn = DriverManager.getConnection("jdbc:sqlite:C:/db23/pmsdb.db/");
           
            String query="INSERT INTO user(fullname,email,mobile,dob,address,username,password,cpass)VALUES(?,?,?,?,?,?,?,?)";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1, Fullname);
            ps.setString(2, email);
            ps.setString(3, mob);
            ps.setString(4, dob);
            ps.setString(5, add);
            ps.setString(6, usern);
            ps.setString(7,pass );
            ps.setString(8,cpass );
            int re=ps.executeUpdate();
            if(re==1){
                response.sendRedirect("User_Login.jsp");
            }
            else{
                out.println("Registration Failed!!!");
            }
           
            ps.close();
            conn.close();
            }
            catch(Exception e){
                out.println("Database Error: "+e.getMessage());
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
