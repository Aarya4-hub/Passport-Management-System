<%-- 
    Document   : Home_Page
    Created on : 4 Jul 2026, 7:43:38 pm
    Author     : AARYA
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Passport Seva Management System</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial,sans-serif;
        }

        body{
            background:#f4f6f9;
        }

        .header{
            background:#003366;
            color:white;
            padding:18px;
            text-align:center;
            font-size:30px;
            font-weight:bold;
        }

        .navbar{
            background:#00509E;
            overflow:hidden;
        }

        .navbar a{
            float:left;
            color:white;
            text-decoration:none;
            padding:15px 22px;
            font-size:16px;
        }

        .navbar a:hover{
            background:#003366;
        }

        .container{
            width:90%;
            max-width:900px;
            margin:60px auto;
            background:white;
            padding:40px;
            border-radius:10px;
            text-align:center;
            box-shadow:0 0 10px rgba(0,0,0,0.2);
        }

        h2{
            color:#003366;
            margin-bottom:20px;
        }

        p{
            font-size:18px;
            line-height:1.8;
            color:#444;
        }

        .buttons{
            margin-top:35px;
        }

        .buttons button{
            padding:12px 25px;
            margin:10px;
            border:none;
            border-radius:5px;
            background:#003366;
            color:white;
            font-size:16px;
            cursor:pointer;
        }

        .buttons button:hover{
            background:#00509E;
        }

        .footer{
            background:#003366;
            color:white;
            text-align:center;
            padding:15px;
            margin-top:60px;
        }

    </style>

</head>

<body>

    <div class="header">
        Passport Seva Management System
    </div>

    <div class="navbar">
        <a href="User_Registration.jsp">User Registration</a>
        <a href="User_Login2.jsp">View Status</a>
        <a href="Admin_Login.jsp">Admin Login</a>
        <a href="Officer_Registration.jsp">Officer Registration</a>
    </div>

    <div class="container">

        <h2>Welcome to Passport Seva Management System</h2>

        <p>
            Apply for a passport, track your application status,
            and access passport-related services through a secure
            online portal.
        </p>

        <div class="buttons">

            <button onclick="location.href='User_Registration.jsp'">
                Apply For Passport
            </button>

            <button onclick="location.href='User_Login2.jsp'">
                View Status
            </button>

        </div>

    </div>

    <div class="footer">
        © 2026 Passport Seva Management System
    </div>

</body>
</html>