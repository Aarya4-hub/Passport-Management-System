<%-- 
    Document   : User_Registration
    Created on : 23 Jun 2026, 2:47:24 pm
    Author     : AARYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
        <style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: Arial, sans-serif;
}

body{
    background:#f4f6f9;
}

.container{
    width:700px;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 2px 10px rgba(0,0,0,0.1);
}

h1{
    text-align:center;
    color:#0d47a1;
    margin-bottom:5px;
}

.subtitle{
    text-align:center;
    color:#555;
    margin-bottom:25px;
}

.form-group{
    margin-bottom:15px;
}

label{
    display:block;
    margin-bottom:5px;
    font-weight:bold;
}

input, textarea{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:5px;
}

textarea{
    height:80px;
    resize:none;
}

.btn{
    width:100%;
    padding:12px;
    background:#1565c0;
    color:white;
    border:none;
    border-radius:5px;
    font-size:16px;
    cursor:pointer;
}

.btn:hover{
    background:#0d47a1;
}

.login-link{
    text-align:center;
    margin-top:15px;
}

.login-link a{
    text-decoration:none;
    color:#1565c0;
}

.required{
    color:red;
}

</style>
<script>
    function ValidateUInfo(){
        document.getElementById("em").innerHTML="";
        document.getElementById("um").innerHTML="";
        document.getElementById("ud").innerHTML="";
        document.getElementById("usn").innerHTML="";
        document.getElementById("up").innerHTML="";
        document.getElementById("cp").innerHTML="";
        var isValid=true;
        var fullname=document.forms[0].elements[0].value;
        if(fullname.trim()===""){
            alert("Full Name must be filled !");
            isValid=false;
        }
        if(fullname.length<5){
            alert("Fullname must be of atleast 5 characters");
            isValid=false;
        }
        var email=document.getElementById("uemail").value;
        if(email.trim()===""){
            document.getElementById("uemail").style.border="2px solid red";
            document.getElementById("em").innerHTML="Email is required ";
             isValid=false;
        }
        else{
            document.getElementById("uemail").style.border="1px solid #ccc";
        }
        var MobNo=document.getElementById("umob").value;
        if(MobNo.trim()===""){
            document.getElementById("umob").style.border="2px solid red";
            document.getElementById("um").innerHTML="Mobile Number is required ";
             isValid=false;
        }
        else{
            document.getElementById("umob").style.border="1px solid #ccc";
        }
        if(MobNo.length<10){
            alert("Enter valid mobile number");
            isValid=false;
        }
        var udob=document.getElementById("udob").value;
        if(udob.trim()===""){
            document.getElementById("udob").style.border="2px solid red";
            document.getElementById("ud").innerHTML="Date of birth is required ";
             isValid=false;
        }
        else{
            document.getElementById("udob").style.border="1px solid #ccc";
        }
        var un=document.getElementById("un").value;
        if(un.trim()===""){
            document.getElementById("un").style.border="2px solid red";
            document.getElementById("usn").innerHTML="Username is required ";
             isValid=false;
        }
        else{
            document.getElementById("un").style.border="1px solid #ccc";
        }
        if(un.length<3){
            alert("Username must be of minimum 2 characters");
            isValid=false;
        }
        var upass=document.getElementById("upass").value;
        if(upass.trim()===""){
            document.getElementById("upass").style.border="2px solid red";
            document.getElementById("up").innerHTML="Password is required ";
             isValid=false;
        }
       else{
            document.getElementById("upass").style.border="1px solid #ccc";
        }
        if(upass.length<8){
            alert("Password must be 8 characters long");
            isValid=false;
        }
        var cnfp=document.getElementById("cnfp").value;
        if(cnfp.trim()===""){
            document.getElementById("cnfp").style.border="2px solid red";
            document.getElementById("cp").innerHTML=" Confirm Password is required ";
             isValid=false;
        }
        else{
            document.getElementById("cnfp").style.border="1px solid #ccc";
        }
        if(cnfp!==upass){
          alert("Password should match");
            isValid=false;  
        }
        return isValid;
    }
    
    
    
</script>
    </head>
    <body>
        


</head>
<body>

<div class="container">

    <h1>Passport Management System</h1>
    <p class="subtitle">User Registration</p>

    <form action="User_Registration" method="post" onsubmit="return ValidateUInfo()" >

        <div class="form-group">
            <label>Full Name <span class="required">*</span></label>
            <input type="text" name="fullname"><br>
        </div>

        <div class="form-group">
            <label>Email ID <span class="required">*</span></label>
            <input type="email" id="uemail" name="email">
            <br><!-- comment -->
            <p id="em"></p>
        </div>

        <div class="form-group">
            <label>Mobile Number <span class="required">*</span></label>
            <input type="text" name="mobile" id="umob">
            <br><!-- comment -->
            <p id="um"></p>
        </div>

        <div class="form-group">
            <label>Date of Birth</label>
            <input type="date" name="dob" id="udob"><br>
            <p id="ud"></p><!-- comment -->
        </div>

        <div class="form-group">
            <label>Address</label>
            <textarea name="address"></textarea>
        </div>

        <div class="form-group">
            <label>Username <span class="required">*</span></label>
            <input type="text" name="username" id="un"><br><!-- comment -->
            <p id="usn"></p>
        </div>

        <div class="form-group">
            <label>Password <span class="required">*</span></label>
            <input type="password" name="password" id="upass"><br>
            <p id="up"></p>
        </div>

        <div class="form-group">
            <label>Confirm Password <span class="required">*</span></label>
            <input type="password" name="confirmPassword" id="cnfp"><br><!-- comment -->
            <p id="cp"></p>
        </div>

        <button type="submit" class="btn">
            Register
        </button>

    </form>

    <div class="login-link">
        Already have an account?
        <a href="User_Login.jsp">Login</a>
    </div>

</div>

</body>
</html>
    </body>
</html>
