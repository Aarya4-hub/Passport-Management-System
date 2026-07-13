<%-- 
    Document   : Officer_Approve_reject
    Created on : 6 Jul 2026, 4:54:18 pm
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
    <title>Approve / Reject Applications</title>

    <style>
        body{
            margin:0;
            font-family:Arial, sans-serif;
            background:#f4f7fc;
        }

        .container{
            width:90%;
            margin:40px auto;
        }

        h2{
            text-align:center;
            color:#003366;
            margin-bottom:25px;
        }

        table{
            width:100%;
            border-collapse:collapse;
            background:white;
            box-shadow:0px 0px 10px rgba(0,0,0,0.2);
        }

        th{
            background:#003366;
            color:white;
            padding:12px;
        }

        td{
            text-align:center;
            padding:12px;
            border-bottom:1px solid #ddd;
        }

        tr:hover{
            background:#f5f5f5;
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

<div class="container">

    <h2>Approve / Reject Passport Applications</h2>

    <table>

        <tr>
            <th>Application ID</th>
            <th>Applicant Name</th>
            <th>Passport Type</th>
            <th>Action</th>
        </tr>
    <% 
            try{
            Class.forName("org.sqlite.JDBC");
            Connection conn = DriverManager.getConnection("jdbc:sqlite:C:/db23/pmsdb.db?busy_timeout=5000");
            conn.setAutoCommit(true);
            String show="SELECT * FROM application";
            PreparedStatement ps=conn.prepareStatement(show);
            ResultSet rs=ps.executeQuery();
           while(rs.next()){
        %>
      

        <tr>
            <td><%= rs.getInt("app_id") %></td>
            <td><%= rs.getString("full_n") %></td>
            <td><%= rs.getString("pass_type") %></td>
            <%
}          
            rs.close();
            ps.close();
            conn.close();
             }
           catch(Exception e){
                e.getMessage();
            }
            

%>

            <td>
                <a class="approve"
                   href="Officer_Approve_reject?status=Approved&app_id=<%=rs.getInt("app_id")%>"> 
                    Approve
                </a>

                <a class="reject"
                   href="Officer_Approve_reject?status=Rejected&app_id=<%=rs.getInt("app_id")%>"
                   >
                    Reject
                </a>
            </td>
        </tr>

        

    </table>

</div>

</body>
</html>