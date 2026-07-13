<%-- 
    Document   : Officer_Registration
    Created on : 5 Jul 2026, 5:39:58 pm
    Author     : AARYA
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Officer Registration</title>

        <style>
            body{
                margin:0;
                padding:0;
                font-family:Arial, sans-serif;
                background:#f2f6fc;
            }

            .container{
                width:420px;
                margin:50px auto;
                background:white;
                padding:30px;
                border-radius:10px;
                box-shadow:0px 0px 12px rgba(0,0,0,0.2);
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
                document.getElementById("off_fn_a").innerHTML="";
                document.getElementById("off_d_a").innerHTML="";
                document.getElementById("off_u_a").innerHTML="";
                document.getElementById("off_p_a").innerHTML="";
                var isValid=true;

                var officer_name = document.getElementById("off_fn").value;
                if (officer_name.trim()==="") {
                    document.getElementById("off_fn").style.border="2px solid red";
                            document.getElementById("off_fn_a").innerHTML="Full name is required";
                    isValid = false;
                } else {
                    document.getElementById("off_fn").style.border="1px solid #ccc";

                }
                if (officer_name.length < 5) {
                    alert("FullName must be of atleast 3 characters");
                    isValid = false;
                }
                var off_d = document.getElementById("off_d").value;
                if (off_d.trim() === "") {
                    document.getElementById("off_d").style.border="2px solid red";
                    document.getElementById("off_d_a").innerHTML="Designation is required";
                    isValid = false;
                } else {
                    document.getElementById("off_d").style.border="1px solid #ccc";

                }
                var off_u = document.getElementById("off_u").value;
                if (off_u.trim()==="") {
                    document.getElementById("off_u").style.border="2px solid red";
                    document.getElementById("off_u_a").innerHTML="Username is required";
                    isValid = false;
                } else {
                    document.getElementById("off_u").style.border="1px solid #ccc";

                }
                if (off_u.length < 3) {
                    alert("Fullname must be of atleast 3 characters");
                    isValid = false;
                }
                var off_p = document.getElementById("off_p").value;
                if (off_p.trim()==="") {
                    document.getElementById("off_p").style.border="2px solid red";
                    document.getElementById("off_p_a").innerHTML="Password is required";
                    isValid = false;
                } else {
                    document.getElementById("off_p").style.border="1px solid #ccc";

                }
                if (off_p.length < 8) {
                    alert("Password must be of atleast 8 characters");
                    isValid = false;
                }
                return isValid;
            }
        </script>
    </head>
    <body>

        <div class="container">

            <h2>Officer Registration</h2>

            <form action="Officer_Registration" method="post" onsubmit="return validate()">

                <label>Officer Full Name</label>
                <input type="text" id="off_fn" name="officer_name" placeholder="Enter Full Name" >
                <p id="off_fn_a"></p>

                <label>Officer Designation</label>
                <input type="text" id="off_d" name="designation" placeholder="Enter Designation" >
                <p id="off_d_a"></p>

                <label>Username</label>
                <input type="text"  id="off_u" name="officer_username" placeholder="Enter Username" >
                <p id="off_u_a"></p>

                <label>Password</label>
                <input type="password"  id="off_p" name="password" placeholder="Enter Password" >
                <p id="off_p_a"></p>

                <button type="submit" class="btn">
                    Register Officer
                </button>

            </form>
            <div style="text-align:center; margin-top:20px;">
                Already registered?
                <a href="Officer_Login.jsp"
                   style="text-decoration:none; color:#0066cc; font-weight:bold;">
                    Officer Login
                </a>
            </div>

        </div>

    </body>
</html>