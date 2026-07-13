<%-- 
    Document   : Officer_View_App
    Created on : 6 Jul 2026, 3:48:50 pm
    Author     : AARYA
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Applications</title>
     <% HttpSession hs=request.getSession();%>
    <style>

        body{
            margin:0;
            font-family:Arial, sans-serif;
            background:#f4f6f9;
        }

        .header{
            background:#003366;
            color:white;
            text-align:center;
            padding:18px;
            font-size:28px;
            font-weight:bold;
        }

        .container{
            width:95%;
            margin:30px auto;
            background:white;
            padding:25px;
            border-radius:10px;
            box-shadow:0 0 10px rgba(0,0,0,0.2);
        }

        h2{
            text-align:center;
            color:#003366;
            margin-bottom:25px;
        }

        table{
            width:100%;
            border-collapse:collapse;
        }

        th{
            background:#003366;
            color:white;
            padding:12px;
            border:1px solid #ddd;
        }

        td{
            padding:10px;
            border:1px solid #ddd;
            text-align:center;
        }

        tr:nth-child(even){
            background:#f9f9f9;
        }

        tr:hover{
            background:#eef5ff;
        }

        .btn{
            padding:8px 15px;
            background:#0066cc;
            color:white;
            border:none;
            border-radius:5px;
            cursor:pointer;
        }

        .btn:hover{
            background:#004d99;
        }

        .approve{
            background:green;
            color:white;
            padding:8px 15px;
            text-decoration:none;
            border-radius:5px;
            margin-right:5px;
        }

        .reject{
            background:red;
            color:white;
            padding:8px 15px;
            text-decoration:none;
            border-radius:5px;
        }

        .approve:hover{
            background:#006400;
        }

        .reject:hover{
            background:#b30000;
        }
    </style>

</head>

<body>

<div class="header">
    Passport Seva Management System
</div>

<div class="container">

    <h2>View Passport Applications</h2>
    
    <table>

        <tr>
            <th>Application ID</th>
            <th>User ID</th>
            <th>Applicant Name</th>
            <th>Passport Type</th>
            <th>Application Type</th>
            <th>Status</th>
            <th>Approve / Reject</th>
           
        </tr>

        <% 
            try{
            Class.forName("org.sqlite.JDBC");
            Connection conn = DriverManager.getConnection("jdbc:sqlite:C:/db23/pmsdb.db?busy_timeout=5000");
            String show="SELECT * FROM application";
            PreparedStatement ps=conn.prepareStatement(show);
            ResultSet rs=ps.executeQuery();
           while(rs.next()){
        %>
        <tr>
            
            
            <td>
                <%=rs.getInt("app_id")%>
            </td>
            <td>
                <%=rs.getInt("user_id")%>
            </td>
            <td>
                <%=rs.getString("full_n")%>
            </td>
            <td>
                <%=rs.getString("pass_type")%>
            </td>
            <td>
                <%=rs.getString("app_type")%>
            </td>
            
            <td>
                <%=rs.getString("status")%>
            </td>
            <td>
                <a class="approve"
                   href="Officer_Approve_reject?status=Approved&app_id=<%= rs.getInt("app_id")%>"> 
                    Approve
                </a>

                <a class="reject"
                   href="Officer_Approve_reject?status=Rejected&app_id=<%= rs.getInt("app_id")%>"
                   >
                    Reject
                </a>
            </td>
        
        </tr>
<%
}
            ps.close();
            conn.close();
             }
           catch(Exception e){
                e.getMessage();
            }
            

%>
    </table>
  
</div>

</body>
</html>
