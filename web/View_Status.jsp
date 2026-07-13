<%-- 
    Document   : View_Status
    Created on : 4 Jul 2026, 7:54:09 pm
    Author     : AARYA
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Application Status</title>
     <% HttpSession hs = request.getSession();%>
    <style>

        body{
            margin:0;
            font-family:Arial,sans-serif;
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
            width:90%;
            max-width:850px;
            margin:40px auto;
            background:white;
            padding:35px;
            border-radius:10px;
            box-shadow:0 0 10px rgba(0,0,0,0.2);
        }

        h2{
            text-align:center;
            color:#003366;
            margin-bottom:30px;
        }

        .grid{
            display:grid;
            grid-template-columns:1fr 1fr;
            gap:20px;
        }

        .field{
            display:flex;
            flex-direction:column;
        }

        label{
            font-weight:bold;
            margin-bottom:6px;
            color:#003366;
        }

        input{
            padding:10px;
            border:1px solid #ccc;
            border-radius:5px;
            background:#f8f9fa;
        }

        .status{
            margin-top:30px;
            background:#e8f5e9;
            border-left:6px solid #28a745;
            padding:20px;
            border-radius:8px;
            text-align:center;
        }

        .status h3{
            color:#28a745;
            margin:0;
        }

        .buttons{
            margin-top:35px;
            display:flex;
            justify-content:space-between;
        }

        button{
            padding:12px 25px;
            border:none;
            border-radius:5px;
            cursor:pointer;
            color:white;
            font-size:15px;
        }

        .back{
            background:#6c757d;
        }

        .logout{
            background:#003366;
        }

    </style>

</head>

<body>

<div class="header">
    Passport Seva Management System
</div>

<div class="container">

    <h2>Application Status</h2>

    <div class="grid">

        

    </div>

    <div class="status">

        <h3>
            Current Status :<%= hs.getAttribute("status")%>
           
        </h3>

    </div>

    <div class="buttons">

        <button class="back"
                onclick="location.href='Home_Page.jsp'">
            ◀ Back
        </button>

        <button class="logout"
                onclick="location.href='User_Login2.jsp'">
            Logout
        </button>

    </div>

</div>

</body>
</html>