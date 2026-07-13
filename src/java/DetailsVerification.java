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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

/**
 *
 * @author AARYA
 */
public class DetailsVerification extends HttpServlet {

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
            String checkbox_value = request.getParameter("agree");
            out.println("1");
            if (checkbox_value != null) {
                HttpSession hs = request.getSession();
                out.println("2");
                Integer user_id = (Integer) hs.getAttribute("user_id");
                String pass_type = (String) hs.getAttribute("passtype");
                String app_type = (String) hs.getAttribute("apptype");
                String book_type = (String) hs.getAttribute("booktype");
                String full_n = (String) hs.getAttribute("fullname");
                String dob = (String) hs.getAttribute("dob");
                String pob = (String) hs.getAttribute("pob");
                String nat = (String) hs.getAttribute("nat");
                String occ = (String) hs.getAttribute("occ");
                String gen = (String) hs.getAttribute("gen");
                String father_n = (String) hs.getAttribute("ffn");
                String mother_n = (String) hs.getAttribute("mfn");
                String hn = (String) hs.getAttribute("hn");
                String sn = (String) hs.getAttribute("sn");
                String c = (String) hs.getAttribute("c");
                String s = (String) hs.getAttribute("s");
                String p = (String) hs.getAttribute("p");
                String a = (String) hs.getAttribute("a");
                String d = (String) hs.getAttribute("d");
                String ename = (String) hs.getAttribute("ename");
                String er = (String) hs.getAttribute("er");
                String em = (String) hs.getAttribute("em");
                String eml = (String) hs.getAttribute("eml");
                String eadd = (String) hs.getAttribute("eadd");
                String held = (String) hs.getAttribute("held");
                String ppn = (String) hs.getAttribute("ppn");
                String ped = (String) hs.getAttribute("ped");
                String pid = (String) hs.getAttribute("pid");
                String ppi = (String) hs.getAttribute("ppi");
                String crime = (String) hs.getAttribute("crime");
                String ge = (String) hs.getAttribute("ge");
                String ed = (String) hs.getAttribute("ed");
                LocalDate curd = LocalDate.now();
                String appdate = curd.toString();
                out.println("3");
                try {
                    Class.forName("org.sqlite.JDBC");
                    Connection conn = DriverManager.getConnection("jdbc:sqlite:C:/db23/pmsdb.db?busy_timeout=5000");
                    conn.setAutoCommit(true);
                    out.println("4");
                    String query = "INSERT INTO application(user_id,status,app_date,pass_type,app_type,book_type,full_n,dob,gen,pob,nat,occ,father_n,mother_n,house_n,street,area,city,district,state,pincode,ename,er,em,eml,eadd,pheld,ppn,pid,ped,ppi,crime,ge,ed)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
                    PreparedStatement ps = conn.prepareStatement(query);
                    ps.setInt(1, user_id);
                    ps.setString(8, dob);
                    ps.setInt(15, Integer.parseInt(hn));
                    ps.setInt(21, Integer.parseInt(p));
                    ps.setInt(24, Integer.parseInt(em));
                    //ps.setInt(28, Integer.parseInt(ppn));
                    //ps.setString(29, pid);
                    //ps.setString(30, ped);
                    ps.setString(2, "Pending");
                    ps.setString(3, appdate);
                    ps.setString(4, pass_type);
                    ps.setString(5, app_type);
                    ps.setString(6, book_type);
                    ps.setString(7, full_n);
                    ps.setString(9, gen);
                    ps.setString(10, pob);
                    ps.setString(11, nat);
                    ps.setString(12, occ);
                    ps.setString(13, father_n);
                    ps.setString(14, mother_n);
                    ps.setString(16, sn);
                    ps.setString(17, a);
                    ps.setString(18, c);
                    ps.setString(19, d);
                    ps.setString(20, s);
                    ps.setString(22, ename);
                    ps.setString(23, er);
                    ps.setString(25, eml);
                    ps.setString(26, eadd);
                    ps.setString(27, held);
                    ps.setString(31, ppi);
                    ps.setString(32, crime);
                    ps.setString(33, ge);
                    ps.setString(34, ed);
                    if (ppn == null || ppn.trim().isEmpty()) {
                        ps.setNull(28, java.sql.Types.INTEGER);
                    } else {
                        ps.setInt(28, Integer.parseInt(ppn));
                    }

                    if (pid == null || pid.trim().isEmpty()) {
                        ps.setNull(29, java.sql.Types.VARCHAR);
                    } else {
                        ps.setString(29, pid);
                    }

                    if (ped == null || ped.trim().isEmpty()) {
                        ps.setNull(30, java.sql.Types.VARCHAR);
                    } else {
                        ps.setString(30, ped);
                    }
                    int re = ps.executeUpdate();
                    ps.close();
                    conn.close();
                    out.println("5");
                    hs.invalidate();
                    if (re > 0) {

                        request.getRequestDispatcher("User_Success.jsp").forward(request, response);
                    } else {
                        out.println("Application is not submitted successfully ,try again!!!");
                    }

                    

                } catch (Exception e) {
                    e.printStackTrace();
                    out.println(e.getMessage());
                }

            } else {
                response.sendRedirect("DetailsVerification.jsp");
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
