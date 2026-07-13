<%-- 
    Document   : OtherDetails
    Created on : 26 Jun 2026, 3:20:25 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Step 07 : Other Details</title>
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
                document.getElementById("cca").innerHTML="";
                document.getElementById("eqa").innerHTML="";
                document.getElementById("gea").innerHTML="";
                


                var isValid = true;

                var cc = document.getElementById("cc").value;
                if (cc.trim()==="") {
                    
                    document.getElementById("cc").style.border="2px solid red";
                    document.getElementById("cca").innerHTML="Mandatory to fill";
                    isValid = false;
                } else {
                    document.getElementById("cc").style.border="1px solid #ccc";
                }
                var ge = document.getElementById("ge").value;
                if (ge.trim()==="") {
                    
                    document.getElementById("ge").style.border="2px solid red";
                    document.getElementById("gea").innerHTML=" Mandatory to fill ";
                    isValid = false;
                } else {
                    document.getElementById("gea").style.border="1px solid #ccc";
                }
                var eq = document.getElementById("eq").value;
                if (eq.trim()==="") {
                    
                    document.getElementById("eq").style.border="2px solid red";
                    document.getElementById("eqa").innerHTML="Mandatory to fill";
                    isValid = false;
                } else {
                    document.getElementById("eq").style.border="1px solid #ccc";
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
                <div class="step"><div class="circle done">6</div>Previous Passport</div>
                <div class="step"><div class="circle active">7</div>Other Details</div>
                <div class="step"><div class="circle">8</div>Passport Preview</div>
                <div class="step"><div class="circle">9</div>Verification Deatils</div>

            </div>
            <h2>Step 07 : Other Details</h2>
            <form action="OtherDetails" method="post" onsubmit="return validate()">
                <div class="grid">
                    <div class="field">
                        <label>Criminal Case?</label>
                        <input type="text" name="crime" id="cc">
                        <p id="cca"></p>
                    </div>
                    <div class="field">
                        <label>Government Employee?</label>
                        <input type="text" name="govt" id="ge">
                        <p id="gea"></p>
                    </div>
                    <div class="field">
                        <label>Educational Qualification</label>
                        <input type="text" name="edu" id="eq">
                        <p id="eqa"></p>
                    </div>
                    
                </div>
                <div class='buttons'>
                    <button type='button' class='prev' onclick="location.href = 'PreviousPassport.jsp'">◀
                        Previous</button>
                    <button class='next' type='submit'>Next ▶</button>
                </div>
            </form>
        </div>
    </body>
</html>