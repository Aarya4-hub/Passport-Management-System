<%-- 
    Document   : PassportPreview
    Created on : 26 Jun 2026, 3:23:59 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Step 08 : Passport Preview</title>
        <% HttpSession hs = request.getSession();%>
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
                <div class="step"><div class="circle done">7</div>Other Details</div>
                <div class="step"><div class="circle active">8</div>Passport Preview</div>
                <div class="step"><div class="circle">9</div>Verification Details</div>
            </div>
            <h2>Passport Application Preview</h2>

            <table style="width:100%; border-collapse:collapse;">

                <tr style="background:#003366; color:white;">
                    <th colspan="2" style="padding:10px; text-align:left;">
                        Passport Type
                    </th>
                </tr>

                <tr>
                    <td><b>Passport Type</b></td>
                    <td>
                        <%=hs.getAttribute("passtype")%>
                    </td>
                </tr>

                <tr>
                    <td><b>Application Type</b></td>
                    <td><%=hs.getAttribute("apptype")%></td>
                </tr>

                <tr>
                    <td><b>Booklet Type</b></td>
                    <td><%=hs.getAttribute("booktype")%></td>
                </tr>



                <tr><td colspan="2"><br></td></tr>

                <tr style="background:#003366; color:white;">
                    <th colspan="2" style="padding:10px; text-align:left;">
                        Applicant Details
                    </th>
                </tr>

                <tr><td><b>Full Name</b></td><td><%=hs.getAttribute("fullname")%></td></tr>
                <tr><td><b>Date of Birth</b></td><td><%=hs.getAttribute("dob")%></td></tr>
                <tr><td><b>Gender</b></td><td><%=hs.getAttribute("gen")%></td></tr>
                <tr><td><b>Place of Birth</b></td><td><%=hs.getAttribute("pob")%></td></tr>
                <tr><td><b>Nationality</b></td><td><%=hs.getAttribute("nat")%></td></tr>
                <tr><td><b>Occupation</b></td><td><%=hs.getAttribute("occ")%></td></tr>

                <tr><td colspan="2"><br></td></tr>

                <tr style="background:#003366; color:white;">
                    <th colspan="2" style="padding:10px; text-align:left;">
                        Family Details
                    </th>
                </tr>

                <tr><td><b>Father's Name</b></td><td><%=hs.getAttribute("ffn")%></td></tr>
                <tr><td><b>Mother's Name</b></td><td><%=hs.getAttribute("mfn")%></td></tr>


                <tr><td colspan="2"><br></td></tr>

                <tr style="background:#003366; color:white;">
                    <th colspan="2" style="padding:10px; text-align:left;">
                        Address Details
                    </th>
                </tr>

                <tr><td><b>House Number</b></td><td><%=hs.getAttribute("hn")%></td></tr>
                <tr><td><b>Street</b></td><td><%=hs.getAttribute("sn")%></td></tr>
                <tr><td><b>Area</b></td><td><%=hs.getAttribute("a")%></td></tr>
                <tr><td><b>City</b></td><td><%=hs.getAttribute("c")%></td></tr>
                <tr><td><b>District</b></td><td><%=hs.getAttribute("d")%></td></tr>
                <tr><td><b>State</b></td><td><%=hs.getAttribute("s")%></td></tr>
                <tr><td><b>PIN Code</b></td><td><%=hs.getAttribute("p")%></td></tr>

                <tr><td colspan="2"><br></td></tr>

                <tr style="background:#003366; color:white;">
                    <th colspan="2" style="padding:10px; text-align:left;">
                        Emergency Contact
                    </th>
                </tr>

                <tr><td><b>Contact Name</b></td><td><%=hs.getAttribute("ename")%></td></tr>
                <tr><td><b>Relationship</b></td><td><%=hs.getAttribute("er")%></td></tr>
                <tr><td><b>Mobile Number</b></td><td><%=hs.getAttribute("em")%></td></tr>
                <tr><td><b>Email</b></td><td><%=hs.getAttribute("eml")%></td></tr>
                <tr><td><b>Address</b></td><td><%=hs.getAttribute("eadd")%></td></tr>

                <tr><td colspan="2"><br></td></tr>

                <tr style="background:#003366; color:white;">
                    <th colspan="2" style="padding:10px; text-align:left;">
                        Previous Passport
                    </th>
                </tr>

                <tr><td><b>Previously Held Passport</b></td><td><%=hs.getAttribute("held")%></td></tr>
                <tr><td><b>Passport Number</b></td><td><%=hs.getAttribute("ppn")%></td></tr>
                <tr><td><b>Issue Date</b></td><td><%=hs.getAttribute("pid")%></td></tr>
                <tr><td><b>Expiry Date</b></td><td><%=hs.getAttribute("ped")%></td></tr>
                <tr><td><b>Place of Issue</b></td><td><%=hs.getAttribute("ppi")%></td></tr>

                <tr><td colspan="2"><br></td></tr>

                <tr style="background:#003366; color:white;">
                    <th colspan="2" style="padding:10px; text-align:left;">
                        Other Details
                    </th>
                </tr>

                <tr><td><b>Criminal Case</b></td><td><%=hs.getAttribute("crime")%></td></tr>
                <tr><td><b>Government Employee</b></td><td><%=hs.getAttribute("ge")%></td></tr>
                <tr><td><b>Educational Qualification</b></td><td><%=hs.getAttribute("ed")%></td></tr>

            </table>
        </div>
        <div class='buttons'><button type="button" class="previous" disabled>
                ◀ Previous
            </button>
            <button class="next" type="submit" onclick="location.href = 'DetailsVerification.jsp'">Next ▶</button>
        </div>
    </body>

</html>