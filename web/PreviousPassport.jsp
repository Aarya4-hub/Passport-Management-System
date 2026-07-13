<%-- 
    Document   : PreviousPassport
    Created on : 26 Jun 2026, 3:17:05 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Step 06 : Previous Passport</title>
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
            function validate() {
                document.getElementById("hpba").innerHTML = "";
               /* document.getElementById("era").innerHTML = "";
                document.getElementById("ema").innerHTML = "";
                document.getElementById("eama").innerHTML = "";
                document.getElementById("eea").innerHTML = "";
                document.getElementById("eaa").innerHTML = "";
                 document.getElementById("mfna").innerHTML = "";
                 document.getElementById("spna").innerHTML = "";
                 document.getElementById("gna").innerHTML = "";*/


                var isValid = true;

                var hpb = document.getElementById("hpb").value;
                if (hpb.trim()=== "") {

                    document.getElementById("hpb").style.border = "2px solid red";
                    document.getElementById("hpba").innerHTML = "This is required to answer";
                    isValid = false;
                } else {
                    document.getElementById("hpb").style.border = "1px solid #ccc";
                }
                if(hpb==="Y"){
                    
                
                var ppn = document.getElementById("ppn").value;
                if (ppn.trim() === ""){ 
                    document.getElementById("ppn").style.border="2px solid red";
                    document.getElementById("ppna").innerHTML=" Previous Passport Number is required ";
                    isValid = false;
                } 
                else {
                    
                
                    document.getElementById("ppn").style.border = "1px solid #ccc";
                }
                
                var pid = document.getElementById("pid").value;
                if (pid.trim()==="") {

                    document.getElementById("pid").style.border="2px solid red";
                    document.getElementById("pida").innerHTML="Issue date is required";
                    isValid = false;
                } else {
                    document.getElementById("pid").style.border="1px solid #ccc";
                }
                var ped = document.getElementById("ped").value;
                if (ped.trim()==="") {

                    document.getElementById("ped").style.border = "2px solid red";
                    document.getElementById("peda").innerHTML = "Expiry date is required";
                    isValid = false;
                } else {
                    document.getElementById("ped").style.border = "1px solid #ccc";
                }
                var ppi = document.getElementById("ppi").value;
                if (ppi.trim()=== "") {

                    document.getElementById("ppi").style.border = "2px solid red";
                    document.getElementById("ppia").innerHTML = "Place of issue is required";
                    isValid = false;
                } else {
                    document.getElementById("ppia").style.border = "1px solid #ccc";
                }
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
                <div class="step"><div class="circle done">5</div>Emergency Contact</div>
                <div class="step"><div class="circle active">6</div>Previous Passport</div>
                <div class="step"><div class="circle">7</div>Other Details</div>
                <div class="step"><div class="circle">8</div>Passport Preview</div>
                <div class="step"><div class="circle">9</div>Verification Details</div>

            </div>
            <h2>Step 06 : Previous Passport</h2>
            <form action="PreviousPassport" method="post" onsubmit="return validate()">
                <div class="grid">
                    <div class="field">
                        <label>Held Passport Before? * (Type Y or N)</label>
                        <input type="text" name="held" id="hpb">
                        <p id="hpba"></p>
                    </div>
                    <div class="field">
                        <label>Previous Passport No.</label>
                        <input type="text" name="ppno" id="ppn" >
                         <p id="ppna"></p>
                    </div>
                    <div class="field">
                        <label>Issue Date</label>
                        <input type="date" name="issue" id="pid">
                         <p id="pida"></p>
                    </div>
                    <div class="field">
                        <label>Expiry Date</label>
                        <input type="date" name="expiry" id="ped">
                         <p id="peda"></p>
                    </div>
                    <div class="field">
                        <label>Place of Issue</label>
                        <input type="text" name="place" id="ppi">
                         <p id="ppia"></p>
                    </div>
                </div>
                <div class='buttons'><button type='button' class='prev' onclick="location.href = 'EmergencyContact.jsp'">◀
                        Previous</button><button class='next' type='submit'>Next ▶</button></div>
            </form>
        </div>
    </body>

</html>