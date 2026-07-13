<%-- 
    Document   : Officer_Dashboard
    Created on : 5 Jul 2026, 7:55:06 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Officer Dashboard</title>

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
            width:900px;
            margin:50px auto;
            text-align:center;
        }

        h2{
            color:#003366;
            margin-bottom:40px;
        }

        .cards{
            display:flex;
            justify-content:center;
            gap:40px;
        }

        .card{
            width:300px;
            background:white;
            border-radius:10px;
            box-shadow:0 0 10px rgba(0,0,0,0.2);
            padding:30px;
        }

        .icon{
            font-size:60px;
            margin-bottom:15px;
        }

        .card h3{
            color:#003366;
        }

        .card p{
            color:#555;
            line-height:1.6;
        }

        .btn{
            margin-top:20px;
            padding:12px 25px;
            background:#0066cc;
            color:white;
            border:none;
            border-radius:5px;
            cursor:pointer;
            font-size:15px;
        }

        .btn:hover{
            background:#004d99;
        }

    </style>

</head>

<body>

<div class="header">
    Passport Seva Management System
</div>

<div class="container">

    <h2>Officer Dashboard</h2>

    <div class="cards">

        <div class="card">

            <div class="icon">📄</div>

            <h3>View Applications</h3>

            

            <button class="btn"
                    onclick="location.href='Officer_View_App.jsp'">
                View Applications
            </button>

        </div>

        

</div>

</body>
</html>