<%-- 
    Document   : Admin_Login
    Created on : 6 Jul 2026, 7:44:39 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>

    <style>
        body{
            margin:0;
            padding:0;
            font-family:Arial,sans-serif;
            background:#f2f6fc;
        }

        .container{
            width:400px;
            margin:80px auto;
            background:white;
            padding:30px;
            border-radius:10px;
            box-shadow:0 0 12px rgba(0,0,0,0.2);
        }

        h2{
            text-align:center;
            color:#660000;
            margin-bottom:25px;
        }

        label{
            font-weight:bold;
            color:#333;
        }

        input{
            width:100%;
            padding:10px;
            margin-top:6px;
            margin-bottom:18px;
            border:1px solid #ccc;
            border-radius:5px;
            font-size:15px;
            box-sizing:border-box;
        }

        input:focus{
            outline:none;
            border:1px solid #cc0000;
        }

        .btn{
            width:100%;
            padding:12px;
            background:#990000;
            color:white;
            border:none;
            border-radius:5px;
            font-size:16px;
            cursor:pointer;
        }

        .btn:hover{
            background:#660000;
        }

        p{
            color:red;
            font-size:14px;
            margin-top:-12px;
            margin-bottom:15px;
        }
    </style>

    <script>
        function validate() {
            document.getElementById("admin_u").innerHTML="";
            document.getElementById("admin_p").innerHTML="";
            
            var isValid=true;

            var un = document.getElementById("admin_u").value;
            if (un.trim()==="") {
                document.getElementById("admin_u").style.border="2px solid red";
                document.getElementById("admin_u_a").innerHTML="Username is required";
                isValid = false;
            } else {
                document.getElementById("admin_u").style.border="1px solid #ccc";
            }
            if (un.length<3) {
                alert("Username must be at least 3 characters");
                isValid = false;
            }

            var p = document.getElementById("admin_p").value;
            if (p.trim()==="") {
                document.getElementById("admin_p").style.border="2px solid red";
                document.getElementById("admin_p_a").innerHTML="Password is required";
                isValid = false;
            } else {
                document.getElementById("admin_p").style.border="1px solid #ccc";
            }
            if (p.length<8) {
                alert("Password must be at least 8 characters");
                isValid = false;
            }

            return isValid;
        }
    </script>
</head>
<body>

<div class="container">

    <h2>Admin Login</h2>

    <form action="Admin_Login" method="post" onsubmit="return validate()">

        <label>Username</label>
        <input type="text"
               id="admin_u"
               name="admin_username"
               placeholder="Enter Admin Username">

        <p id="admin_u_a"></p>

        <label>Password</label>
        <input type="password"
               id="admin_p"
               name="password"
               placeholder="Enter Password">

        <p id="admin_p_a"></p>

        <button type="submit" class="btn">
            Login
        </button>

    </form>

    

</div>

</body>
</html>