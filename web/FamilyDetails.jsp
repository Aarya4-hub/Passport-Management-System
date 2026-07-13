<%-- 
    Document   : FamilyDetails
    Created on : 26 Jun 2026, 3:04:04 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Family Details</title>
        <style>
            body{
                margin:0;
                font-family:Arial;
                background:#f4f6f9
            }
            .header{
                background:#003366;
                color:#fff;
                text-align:center;
                padding:18px;
                font-size:28px;
                font-weight:bold
            }
            .container{
                width:90%;
                max-width:1000px;
                margin:30px auto;
                background:#fff;
                padding:30px;
                border-radius:10px;
                box-shadow:0 0 10px rgba(0,0,0,.2)
            }
            .wizard{
                display:flex;
                justify-content:space-between;
                flex-wrap:wrap;
                margin-bottom:30px
            }
            .step{
                width:100px;
                text-align:center;
                font-size:12px;
                color:#666
            }
            .circle{
                width:35px;
                height:35px;
                line-height:35px;
                border-radius:50%;
                background:#d9d9d9;
                margin:auto;
                font-weight:bold
            }
            .done{
                background:#28a745;
                color:#fff
            }
            .active{
                background:#007bff;
                color:#fff
            }
            h2{
                color:#003366;
                border-bottom:2px solid #003366;
                padding-bottom:8px
            }
            .grid{
                display:grid;
                grid-template-columns:1fr 1fr;
                gap:20px
            }
            .field{
                display:flex;
                flex-direction:column
            }
            label{
                font-weight:bold;
                margin-bottom:6px
            }
            input,select{
                padding:10px;
                border:1px solid #ccc;
                border-radius:5px;
                font-size:15px
            }
            .buttons{
                display:flex;
                justify-content:space-between;
                margin-top:35px
            }
            button{
                padding:10px 24px;
                border:none;
                border-radius:5px;
                color:#fff;
                cursor:pointer
            }
            .prev{
                background:#6c757d
            }
            .next{
                background:#007bff
            }
            
        </style>
        <script>
             function validate() {
                document.getElementById("ffna").innerHTML = "";
                document.getElementById("mfna").innerHTML = "";
                document.getElementById("spna").innerHTML = "";
                document.getElementById("gna").innerHTML = "";
                

                var isValid = true;

                var ffn = document.getElementById("ffn").value;
                if (ffn.trim()=== "") {
                    document.getElementById("ffn").style.border = "2px solid red";
                    document.getElementById("ffna").innerHTML = " Fathers's fullname is required ";
                    isValid = false;
                } else {
                    document.getElementById("ffn").style.border = "1px solid #ccc";
                }
                var mfn = document.getElementById("mfn").value;
                if (mfn.trim()=== "") {
                    document.getElementById("mfn").style.border = "2px solid red";
                    document.getElementById("mfna").innerHTML = "Mothers's fullname is required ";
                    isValid = false;
                } else {
                    document.getElementById("mfn").style.border = "1px solid #ccc";
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
                <div class="step"><div class="circle done">2</div>Applicant Details</div>
                <div class="step"><div class="circle active">3</div>Family Details</div>
                <div class="step"><div class="circle">4</div>Address Information</div>
                <div class="step"><div class="circle">5</div>Emergency Contact</div>
                <div class="step"><div class="circle">6</div>Previous Passport</div>
                <div class="step"><div class="circle">7</div>Other Details</div>
                <div class="step"><div class="circle">8</div>Passport Preview</div>
                <div class="step"><div class="circle">9</div>Verification Deatils</div>
            </div>
            <h2>Step 03 : Family Details</h2>
            <form action="FamilyDetails" method="post" onsubmit="return validate()">
                <div class="grid">
                    <div class="field"><label>Father's Full Name *</label>
                        <input type="text" name="fatherName" id="ffn">
                        <br><!-- comment -->
                        <p id="ffna"></p>
                    </div>
                    <div class="field"><label>Father's Nationality *</label>
                        <select name="fatherNationality" required="Father's Nationality is Required">
                            <option>Indian</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <div class="field"><label>Mother's Full Name *</label>
                        <input type="text" name="motherName" id="mfn">
                        <br><!-- comment -->
                        <p id="mfna"></p>
                    </div>
                    <div class="field"><label>Mother's Nationality *</label>
                        <select name="motherNationality" required="Mandatory to fill">
                            <option>Indian</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <div class="field"><label>Spouse Name (If Applicable)</label>
                        <input type="text" name="spouseName" id="spn">
                        <br><!-- comment -->
                        <p id="spna"></p>
                    </div>
                    <div class="field"><label>Legal Guardian (If Applicable)</label>
                        <input type="text" name="guardianName" id="gn">
                        <br><!-- comment -->
                        <p id="gna"></p>
                    </div>
                </div>
                <div class="buttons">
                    <button type="button" class="prev" onclick="location.href = 'ApplicantDetails.jsp'">◀ Previous</button>
                    <button type="submit" class="next">Next ▶</button>
                </div>
            </form></div></body></html>