<%-- 
    Document   : Officer_Successfull
    Created on : 9 Jul 2026, 7:42:48 pm
    Author     : AARYA
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Status Updated</title>

    <style>
        body{
            margin:0;
            padding:0;
            font-family:Arial, sans-serif;
            background:#f4f7fc;
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
        }

        .container{
            width:420px;
            background:#fff;
            padding:35px;
            border-radius:10px;
            text-align:center;
            box-shadow:0px 0px 12px rgba(0,0,0,0.2);
        }

        h2{
            color:green;
            margin-bottom:15px;
        }

        p{
            font-size:18px;
            color:#333;
            margin-bottom:30px;
        }

        .btn{
            display:inline-block;
            padding:12px 30px;
            background:#003366;
            color:white;
            text-decoration:none;
            border-radius:5px;
            font-size:16px;
            font-weight:bold;
        }

        .btn:hover{
            background:#0055aa;
        }
    </style>
</head>
<body>

    <div class="container">

        <h2>✓ Status Updated Successfully!</h2>

        <p>The application status has been updated successfully.</p>

        <a href="Officer_View_App.jsp" class="btn">Back</a>

    </div>

</body>
</html>