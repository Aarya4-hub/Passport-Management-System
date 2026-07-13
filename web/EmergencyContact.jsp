<%-- 
    Document   : EmergencyContact
    Created on : 26 Jun 2026, 3:11:16 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Step 05 : Emergency Contact</title>
        <style>
            body {
                margin: 0;
                font-family: Arial;
                background: #f4f6f9
            }

            .header {
                background: #003366;
                color: #fff;
                text-align: center;
                padding: 18px;
                font-size: 28px;
                font-weight: bold
            }

            .container {
                width: 90%;
                max-width: 1000px;
                margin: 30px auto;
                background: #fff;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, .2)
            }

            .wizard {
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                margin-bottom: 30px
            }

            .step {
                width: 100px;
                text-align: center;
                font-size: 12px
            }

            .circle {
                width: 35px;
                height: 35px;
                line-height: 35px;
                border-radius: 50%;
                background: #d9d9d9;
                margin: auto
            }

            .done {
                background: #28a745;
                color: #fff
            }

            .active {
                background: #007bff;
                color: #fff
            }

            .grid {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 18px
            }

            .field {
                display: flex;
                flex-direction: column
            }

            label {
                font-weight: bold;
                margin-bottom: 6px
            }

            input {
                padding: 10px
            }

            .buttons {
                display: flex;
                justify-content: space-between;
                margin-top: 30px
            }

            button {
                padding: 10px 22px;
                border: none;
                border-radius: 5px;
                color: #fff;
                cursor:pointer
            }

            .prev {
                background: #6c757d
            }

            .next {
                background: #007bff
            }
            
        </style>
        <script>
            function validate2() {
                document.getElementById("ena").innerHTML="";
                document.getElementById("era").innerHTML="";
                document.getElementById("ema").innerHTML="";
                document.getElementById("eama").innerHTML="";
                document.getElementById("eea").innerHTML="";
                document.getElementById("eaa").innerHTML="";
                /* document.getElementById("mfna").innerHTML = "";
                 document.getElementById("spna").innerHTML = "";
                 document.getElementById("gna").innerHTML = "";*/


                var isValid = true;

                var en = document.getElementById("en").value;
                if (en.trim()==="") {
                    
                    document.getElementById("en").style.border="2px solid red";
                    document.getElementById("ena").innerHTML="Emergency contact name is required";
                    isValid = false;
                } else {
                    document.getElementById("en").style.border="1px solid #ccc";
                }
                var er = document.getElementById("er").value;
                if (er.trim()==="") {
                    
                    document.getElementById("er").style.border="2px solid red";
                    document.getElementById("era").innerHTML=" Relationship is required ";
                    isValid = false;
                } else {
                    document.getElementById("eaa").style.border="1px solid #ccc";
                }
                var em = document.getElementById("em").value;
                if (em.trim()==="") {
                    
                    document.getElementById("em").style.border="2px solid red";
                    document.getElementById("ema").innerHTML="Emergency mobile number is required";
                    isValid = false;
                } else {
                    document.getElementById("ema").style.border="1px solid #ccc";
                }
                var eam = document.getElementById("eam").value;
                if (eam.trim()==="") {
                    
                    document.getElementById("eam").style.border="2px solid red";
                    document.getElementById("eama").innerHTML="Emergency alternate mobile number is required";
                    isValid = false;
                } else {
                    document.getElementById("eam").style.border="1px solid #ccc";
                }
                var ee = document.getElementById("ee").value;
                if (ee.trim()==="") {
                    
                    document.getElementById("ee").style.border="2px solid red";
                    document.getElementById("eea").innerHTML="Emergency email is required";
                    isValid = false;
                } else {
                    document.getElementById("ee").style.border="1px solid #ccc";
                }
                var eaa = document.getElementById("ea").value;
                if (eaa.trim()==="") {
                    
                    document.getElementById("ea").style.border="2px solid red";
                    document.getElementById("eaa").innerHTML="Emergency address is required";
                    isValid = false;
                } else {
                    document.getElementById("ea").style.border="1px solid #ccc";
                }

                return isValid;
            }


        </script>
    </head>

    <body>
        <div class='header'>Passport Seva Management System</div>
        <div class='container'>
            <div class='wizard'>

                <div class="step"><div class="circle done">1</div>Passport Type</div>
                <div class="step"><div class="circle done">2</div>Applicant Details</div>
                <div class="step"><div class="circle done">3</div>Family Details</div>
                <div class="step"><div class="circle done">4</div>Address Information</div>
                <div class="step"><div class="circle active">5</div>Emergency Contact</div>
                <div class="step"><div class="circle">6</div>Previous Passport</div>
                <div class="step"><div class="circle">7</div>Other Details</div>
                <div class="step"><div class="circle">8</div>Passport Preview</div>
                <div class="step"><div class="circle">9</div>Verification Deatils</div>

            </div>
            <h2>Step 05 : Emergency Contact</h2>
            <form  action="EmergencyContact" method="post" onsubmit="return validate2()">
                <div class="grid">
                    <div class="field">
                        <label>Emergency Contact Name *</label>
                        <input type="text" name="ename" id="en">
                        <p id="ena"></p>
                    </div>
                    <div class="field">
                        <label>Relationship *</label>
                        <input type="text" name="relation" id="er">
                        <p id="era"></p>
                    </div>
                    <div class="field">
                        <label>Mobile Number *</label>
                        <input type="text" name="mobile" id="em">
                        <p id="ema"></p>
                    </div>
                    <div class="field">
                        <label>Alternate Mobile</label>
                        <input type="text" name="alt" id="eam">
                        <p id="eama"></p>
                    </div>
                    <div class="field">
                        <label>Email *</label>
                        <input type="text" name="email" id="ee">
                        <p id="eea"></p>
                    </div>
                    <div class="field">
                        <label>Address *</label>
                        <input type="text" name="address" id="ea">
                        <p id="eaa"></p>
                    </div>
                </div>
                <div class='buttons'><button type="button" class="prev" onclick="location.href = 'AddressDetails.jsp'">◀
                        Previous</button>
                    <button class="next" type="submit">Next ▶</button>
                </div>
            </form>
        </div>
    </body>
</html>