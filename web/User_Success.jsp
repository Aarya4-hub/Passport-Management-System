<%-- 
    Document   : User_Success
    Created on : 2 Jul 2026, 7:01:21 pm
    Author     : AARYA
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Application Submitted</title>

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
                width:600px;
                margin:60px auto;
                background:white;
                border-radius:10px;
                padding:40px;
                text-align:center;
                box-shadow:0 0 10px rgba(0,0,0,0.2);
            }

            .success{
                font-size:70px;
                color:#28a745;
            }

            h2{
                color:#28a745;
                margin-top:10px;
            }

            .info{
                font-size:17px;
                margin-top:20px;
                line-height:1.8;
            }

            .appid{
                background:#f4f6f9;
                padding:15px;
                border-radius:5px;
                margin:25px 0;
                font-size:20px;
                font-weight:bold;
                color:#003366;
            }

            .btn{
                padding:12px 25px;
                background:#003366;
                color:white;
                border:none;
                border-radius:5px;
                cursor:pointer;
                font-size:16px;
            }
        </style>

    </head>

    <body>

        <div class="header">
            Passport Seva Management System
        </div>

        <div class="container">

            <div class="success">✔</div>

            <h2>Application Submitted Successfully!</h2>

            <div class="info">
                Thank you for submitting your passport application.<br>
                Your application has been received successfully and is under processing.
            </div>

            

            <div class="info">
                Current Status : <b>Pending</b><br><br>
                
            </div>

            <br>

            <button class="btn"
                    onclick="location.href = 'User_Login.jsp'">
                Back to Login
            </button>

        </div>

    </body>
</html>