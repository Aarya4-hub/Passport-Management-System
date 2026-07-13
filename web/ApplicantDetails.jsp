<%-- 
    Document   : ApplicantDetails
    Created on : 26 Jun 2026, 2:53:46 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Passport Application - Step 2</title>
        <style>
            body{
                margin:0;
                padding:0;
                font-family:Arial,Helvetica,sans-serif;
                background:#f4f6f9;
            }

            .header{
                background:#003366;
                color:#fff;
                text-align:center;
                padding:18px;
                font-size:28px;
                font-weight:bold;
            }
            .container{
                width:90%;
                max-width:1000px;
                margin:30px auto;
                background:#fff;
                padding:30px;
                border-radius:10px;
                box-shadow:0 0 10px rgba(0,0,0,.2);
            }
            .wizard{
                display:flex;
                justify-content:space-between;
                flex-wrap:wrap;
                margin-bottom:30px;
            }
            .step{
                width:100px;
                text-align:center;
                font-size:12px;
                color:#666;
            }
            .circle{
                width:35px;
                height:35px;
                line-height:35px;
                border-radius:50%;
                background:#d9d9d9;
                margin:auto;
                font-weight:bold;
            }
            .done{
                background:#28a745;
                color:#fff;
            }
            .active{
                background:#007bff;
                color:#fff;
            }
            h2{
                color:#003366;
                border-bottom:2px solid #003366;
                padding-bottom:8px;
            }
            .form-grid{
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
            }
            input[type=text],input[type=date],select{
                padding:10px;
                border:1px solid #ccc;
                border-radius:5px;
                font-size:15px;
            }
            .gender{
                display:flex;
                gap:18px;
                padding-top:8px;
            }
            .buttons{
                display:flex;
                justify-content:space-between;
                margin-top:35px;
            }
            button{
                padding:10px 24px;
                border:none;
                border-radius:5px;
                color:#fff;
                font-size:15px;
                cursor:pointer;
            }
            .prev{
                background:#6c757d;
            }
            .next{
                background:#007bff;
            }
            .next:hover{
                background:#0056b3;
            }
            
        </style>
        <script>
            function validate() {
                document.getElementById("fullN").innerHTML = "";
                document.getElementById("dob").innerHTML = "";
                document.getElementById("pob").innerHTML = "";
                document.getElementById("nat").innerHTML = "";
                document.getElementById("occ").innerHTML = "";
                document.getElementById("m").innerHTML = "";

                var isValid = true;

                var fulln = document.getElementById("fn").value;
                if (fulln.trim() === "") {
                    document.getElementById("fn").style.border = "2px solid red";
                    document.getElementById("fullN").innerHTML = "Fullname is required ";
                    isValid = false;
                } else {
                    document.getElementById("fn").style.border = "1px solid #ccc";
                }
                var dob = document.getElementById("db").value;
                if (dob.trim() === "") {
                    document.getElementById("db").style.border = "2px solid red";
                    document.getElementById("dob").innerHTML = "Date of birth is required ";
                    isValid = false;
                } else {
                    document.getElementById("db").style.border = "1px solid #ccc";
                }
                var pob = document.getElementById("pb").value;
                if (pob.trim() === "") {
                    document.getElementById("pb").style.border = "2px solid red";
                    document.getElementById("pob").innerHTML = "Place of birth is required ";
                    isValid = false;
                } else {
                    document.getElementById("pb").style.border = "1px solid #ccc";
                }
                
                var oc = document.getElementById("o").value;
                if (oc.trim() === "") {
                    document.getElementById("o").style.border = "2px solid red";
                    document.getElementById("occ").innerHTML = "Occupation is required ";
                    isValid = false;
                } else {
                    document.getElementById("o").style.border = "1px solid #ccc";
                }
                var gen = document.getElementsByName("gender");
                var selected = false;
                for (var i = 0; i < gen.length; i++) {
                    if (gen[i].checked) {
                        selected = true;
                        break;
                    }
                }
                if (!selected) {
                    alert("Select appropriate gender ");
                    return false;
                }
                var mstat = document.getElementsById("ms").value;
                if (mstat.trim()=== "") {
                    document.getElementById("ms").style.border = "2px solid red";
                    document.getElementById("m").innerHTML = "Marital status is required ";
                    isValid = false;
                } else {
                    document.getElementById("ms").style.border = "1px solid #ccc";
                }
                return isValid;
            }

        </script>
    </head>
    <body>
        <div class="header">Passport Seva Management System</div>

        <div class="container">
            <div class="wizard">
                <div class="step"><div class="circle done">1</div>Passport Type</div>
                <div class="step"><div class="circle active">2</div>Applicant Details</div>
                <div class="step"><div class="circle">3</div>Family Details</div>
                <div class="step"><div class="circle">4</div>Address Information</div>
                <div class="step"><div class="circle">5</div>Emergency Contact</div>
                <div class="step"><div class="circle">6</div>Previous Passport</div>
                <div class="step"><div class="circle">7</div>Other Details</div>
                <div class="step"><div class="circle">8</div>Passport Preview</div>
                <div class="step"><div class="circle">9</div>Verification Deatils</div>
            </div>

            <h2>Step 02 : Applicant Details</h2>

            <form  action="ApplicantDetails" method="post" onsubmit="return validate()">

                <div class="form-grid">

                    <div class="field">
                        <label>Full Name *</label>
                        <input type="text" name="fullName" id="fn">
                        <br><!-- comment -->
                        <p id="fullN"></p>
                    </div>

                    <div class="field">
                        <label>Date of Birth *</label>
                        <input type="date" name="dob" id="db">
                        <br><!-- comment -->
                        <p id="dob"></p>
                    </div>

                    <div class="field">
                        <label>Gender *</label>
                        <div class="gender">
                            <label><input type="radio" name="gender" value="Male"> Male</label>
                            <label><input type="radio" name="gender" value="Female"> Female</label>
                            <label><input type="radio" name="gender" value="Other"> Other</label>
                        </div>
                    </div>

                    <div class="field">
                        <label>Place of Birth *</label>
                        <input type="text" name="placeOfBirth" id="pb">
                        <br><!-- comment -->
                        <p id="pob"></p>
                    </div>

                    <div class="field">
                        <label>Nationality *</label>
                        <select name="nationality" id="n">
                            <option value="Indian">Indian</option>
                        </select>
                        <br><!-- comment -->
                        <p id="nat"></p>
                    </div>

                    <div class="field">
                        <label>Marital Status *</label>
                        <select name="maritalStatus" id="ms" required="Marital Status is Required">
                            <option value="">--Select--</option>
                            <option>Single</option>
                            <option>Married</option>
                            <option>Divorced</option>
                            <option>Widowed</option>
                        </select>
                        <br><!-- comment -->
                        <p id="m"></p>
                    </div>

                    <div class="field" style="grid-column:1/3;">
                        <label>Occupation *</label>
                        <input type="text" name="occupation" id="o">
                        <br><!-- comment -->
                        <p id="occ"></p>
                    </div>

                </div>

                <div class="buttons">
                    <button type="button" class="prev" onclick="location.href = 'User_ApplyFPassport.jsp'">◀ Previous</button>
                    <button type="submit" class="next">Next ▶</button>
                </div>

            </form>
        </div>
    </body>
</html>