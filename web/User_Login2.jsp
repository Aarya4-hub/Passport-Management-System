<%-- 
    Document   : User_Login2
    Created on : 4 Jul 2026, 7:46:43 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<style>
    body {
        font-family: Arial;
        background-color: #f2f2f2;
    }

    .container {
        width: 350px;
        margin: 100px auto;
        background: white;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px #ccc;
    }

    h2 {
        text-align: center;
    }

    input[type=text], input[type=password] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type=submit] {
        width: 100%;
        padding: 10px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #218838;
    }

    .register-link {
        text-align: center;
        margin-top: 15px;
    }

    .register-link a {
        color: blue;
        text-decoration: none;
    }

    .register-link a:hover {
        text-decoration: underline;
    }

    .error {
        color: red;
        text-align: center;
        margin-bottom: 10px;
    }
    
</style>
<script>
    
    function ValidateULInfo(){
        document.getElementById("usn").innerHTML="";
        document.getElementById("usp").innerHTML="";
        var isValid=true;
        var usn=document.getElementById("usn").value;
        if(usn.trim()===""){
            document.getElementById("usn").style.border="2px solid red";
            document.getElementById("usrn").innerHTML="Username is required ";
             isValid=false;
        }
        else{
            document.getElementById("usn").style.border="1px solid #ccc";
        }
        if(usn.length<3){
            alert("Username must be of minimum 2 characters");
            isValid=false;
        }
        var upass=document.getElementById("usp").value;
        if(upass.trim()===""){
            document.getElementById("upass").style.border="2px solid red";
            document.getElementById("usp").innerHTML="Password is required ";
             isValid=false;
        }
       else{
            document.getElementById("upass").style.border="1px solid #ccc";
        }
        if(upass.length<8){
            alert("Password must be 8 characters long");
            isValid=false;
        }
    }
        
</script>
</head>
<body>

<div class="container">

    <h1>Login</h1>

    <!-- Error message from servlet (optional) -->
    <div class="error">
        <%= request.getParameter("error") != null ? request.getParameter("error") : "" %>
    </div>

    <form action="User_Login2" method="post" onsubmit="return ValidateULInfo()">

        <label>Username</label>
        <input type="text" id="usn" name="username" placeholder="Enter Username">
        <br><!-- comment -->
        <p id="usrn"></p><br>

        <label>Password</label>
        <input type="password" id="usp" name="password" placeholder="Enter Password"s>
        <br><!-- comment -->
        <p id="usp"></p><br>
        <input type="submit" value="Login">

    </form>

    <!---<div class="register-link">
        <p>New user? <a href="User_Registration.jsp">Register here</a></p>
    </div>--->

</div>

</body>
</html>
