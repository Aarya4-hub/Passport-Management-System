<%-- 
    Document   : Officer_Login
    Created on : 5 Jul 2026, 7:20:54 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Officer Login</title>

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
            color:#003366;
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
            border:1px solid #007bff;
        }

        .btn{
            width:100%;
            padding:12px;
            background:#0066cc;
            color:white;
            border:none;
            border-radius:5px;
            font-size:16px;
            cursor:pointer;
        }

        .btn:hover{
            background:#004d99;
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
                document.getElementById("off_u").innerHTML="";
                document.getElementById("off_p").innerHTML="";
                
                var isValid=true;

                var un = document.getElementById("off_u").value;
                if (un.trim()==="") {
                    document.getElementById("off_u").style.border="2px solid red";
                    document.getElementById("off_u_a").innerHTML="Username is required";
                    isValid = false;
                } else {
                    document.getElementById("off_u").style.border="1px solid #ccc";

                }
                if (un.length<3) {
                    alert("Username must be of atleast 3 characters");
                    isValid = false;
                }
                var p = document.getElementById("off_p").value;
                if (p.trim()=== "") {
                    document.getElementById("off_p").style.border="2px solid red";
                    document.getElementById("off_p_a").innerHTML="Password is required";
                    isValid = false;
                } else {
                    document.getElementById("off_p").style.border="1px solid #ccc";

                }
                
                if (p.length<8) {
                    alert("Password must be of atleast 8 characters");
                    isValid = false;
                }
                
                return isValid;
            }
    
    </script>
</head>
<body>

<div class="container">

    <h2>Officer Login</h2>

    <form action="Officer_Login" method="post" onsubmit="return validate()">

        <label>Officer Username</label>
        <input type="text"
               id="off_u"
               name="officer_username"
               placeholder="Enter Officer Username">

        <p id="off_u_a"></p>

        <label>Password</label>
        <input type="password"
               id="off_p"
               name="password"
               placeholder="Enter Password">

        <p id="off_p_a"></p>

        <button type="submit" class="btn">
            Login
        </button>

    </form>

    <div style="text-align:center; margin-top:20px;">
        New Officer?
        <a href="Officer_Registration.jsp"
           style="text-decoration:none; color:#0066cc; font-weight:bold;">
            Register Here
        </a>
    </div>

</div>

</body>
</html>