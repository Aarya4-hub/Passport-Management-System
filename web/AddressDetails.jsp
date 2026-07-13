<%-- 
    Document   : AddressDetails
    Created on : 26 Jun 2026, 3:06:14 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Step 04 : Address Details</title>
        <style>
            body{
                margin:0;
                font-family:Arial;
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
                margin-bottom:30px
            }
            .step{
                width:100px;
                text-align:center;
                font-size:12px
            }
            .circle{
                width:35px;
                height:35px;
                line-height:35px;
                border-radius:50%;
                background:#d9d9d9;
                margin:auto
            }
            .done{
                background:#28a745;
                color:#fff
            }
            .active{
                background:#007bff;
                color:#fff
            }
            .grid{
                display:grid;
                grid-template-columns:1fr 1fr;
                gap:18px
            }
            .field{
                display:flex;
                flex-direction:column
            }
            label{
                font-weight:bold;
                margin-bottom:6px
            }
            input{
                padding:10px
            }
            .buttons{
                display:flex;
                justify-content:space-between;
                margin-top:30px
            }
            button{
                padding:10px 22px;
                border:none;
                border-radius:5px;
                color:#fff;
                cursor:pointer;
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
                document.getElementById("hna").innerHTML="";
                document.getElementById("sna").innerHTML="";
                document.getElementById("aa").innerHTML="";
                document.getElementById("da").innerHTML="";
                document.getElementById("ca").innerHTML="";
                document.getElementById("pa").innerHTML="";

                var isValid = true;

                var hn = document.getElementById("hn").value;
                if (hn.trim()==="") {
                    document.getElementById("hn").style.border="2px solid red";
                    document.getElementById("hna").innerHTML="House number is required ";
                    isValid = false;
                } else {
                    document.getElementById("hn").style.border="1px solid #ccc";
                }
                var sn = document.getElementById("sn").value;
                if (sn.trim()==="") {
                    document.getElementById("sn").style.border="2px solid red";
                    document.getElementById("sna").innerHTML="Street is required ";
                    isValid = false;
                } else {
                    document.getElementById("sn").style.border="1px solid #ccc";
                }
                var a = document.getElementById("a").value;
                if (a.trim()==="") {
                    document.getElementById("a").style.border="2px solid red";
                    document.getElementById("aa").innerHTML="Area is required ";
                    isValid = false;
                } else {
                    document.getElementById("a").style.border="1px solid #ccc";
                }

                var c = document.getElementById("c").value;
                if (c.trim()==="") {
                    document.getElementById("c").style.border="2px solid red";
                    document.getElementById("ca").innerHTML="City is required ";
                    isValid = false;
                } else {
                    document.getElementById("c").style.border="1px solid #ccc";
                }
                var d = document.getElementById("d").value;
                if (d.trim()==="") {
                    document.getElementById("d").style.border="2px solid red";
                    document.getElementById("da").innerHTML="District is required ";
                    isValid = false;
                } else {
                    document.getElementById("d").style.border="1px solid #ccc";
                }
                var s = document.getElementById("s").value;
                if (s.trim()==="") {
                    document.getElementById("s").style.border="2px solid red";
                    document.getElementById("sa").innerHTML="State is required ";
                    isValid = false;
                } else {
                    document.getElementById("s").style.border="1px solid #ccc";
                }
                var p = document.getElementById("p").value;
                if (p.trim()==="") {
                    document.getElementById("p").style.border = "2px solid red";
                    document.getElementById("pa").innerHTML="Pincode is required" ;
                    isValid = false;
                } else {
                    document.getElementById("p").style.border="1px solid #ccc";
                }
                if(p.length>6){
                    alert("Enter Valid Pincode");
                    return false;
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
                <div class="step"><div class="circle active">4</div>Address Information</div>
                <div class="step"><div class="circle">5</div>Emergency Contact</div>
                <div class="step"><div class="circle">6</div>Previous Passport</div>
                <div class="step"><div class="circle">7</div>Other Details</div>
                <div class="step"><div class="circle">8</div>Passport Preview</div>
                <div class="step"><div class="circle">9</div>Verification Deatils</div>

            </div>
            <h2>Step 04 : Address Details</h2>
            <form action="AddressDeatils" method="post" onsubmit="return validate()">
                <div class="grid">
                    <div class="field">
                        <label>House Number *</label>
                        <input type="text" name="houseNo" id="hn">
                        <br><!-- comment -->
                        <p id="hna"></p>
                    </div>
                    <div class="field"><label>Street *</label>
                        <input type="text" name="street" id="sn">
                        <br><!-- comment -->
                        <p id="sna"></p>
                    </div>
                    <div class="field"><label>Area/Locality *</label>
                        <input type="text" name="area" id="a">
                        <br><!-- comment -->
                        <p id="aa"></p></div>
                    <div class="field"><label>City *</label>
                        <input type="text" name="city" id="c">
                        <br><!-- comment -->
                        <p id="ca"></p>
                    </div>
                    <div class="field"><label>District *</label>
                        <input type="text" name="district" id="d">
                        <br><!-- comment -->
                        <p id="da"></p>
                    </div>
                    <div class="field"><label>State *</label>
                        <input type="text" name="state" id="s">
                        <br><!-- comment -->
                        <p id="sa"></p>
                    </div>
                    <div class="field"><label>PIN Code *</label>
                        <input type="text" name="pincode" id="p">
                        <br><!-- comment -->
                        <p id="pa"></p>
                    </div>
                </div>
                <div class='buttons'>
                    <button type='button' class='prev' onclick="location.href = 'FamilyDetails.jsp'">
                        ◀ Previous</button>
                    <button class='next' type="submit">Next ▶</button>
                </div>
            </form>
        </div>
    </body>
</html>
