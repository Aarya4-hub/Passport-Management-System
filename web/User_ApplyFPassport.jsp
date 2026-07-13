<%-- 
    Document   : User_ApplyFPassport
    Created on : 26 Jun 2026, 2:05:21 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Passport Application - Step 1</title>

        <style>

            body{
                margin:0;
                padding:0;
                font-family:Arial, Helvetica, sans-serif;
                background:#f4f6f9;
            }

            .header{
                background:#003366;
                color:white;
                text-align:center;
                padding:18px;
                font-size:28px;
                font-weight:bold;
            }

            .container{
                width:90%;
                max-width:1000px;
                margin:30px auto;
                background:white;
                border-radius:10px;
                box-shadow:0 0 10px rgba(0,0,0,0.2);
                padding:30px;
            }

            /* Wizard */

            .wizard{
                display:flex;
                justify-content:space-between;
                margin-bottom:35px;
                flex-wrap:wrap;
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
                border-radius:50%;
                background:#d9d9d9;
                color:black;
                margin:auto;
                line-height:35px;
                font-weight:bold;
            }

            .active{
                background:#007bff;
                color:white;
            }

            h2{
                color:#003366;
                border-bottom:2px solid #003366;
                padding-bottom:8px;
            }

            table{
                width:100%;
                border-spacing:18px;
            }

            td{
                font-size:16px;
            }

            input[type=radio]{
                margin-right:6px;
            }

            textarea{
                width:100%;
                height:80px;
                resize:none;
                padding:8px;
            }

            .button-area{
                margin-top:30px;
                text-align:right;
            }

            button{
                padding:10px 22px;
                border:none;
                border-radius:5px;
                font-size:15px;
                cursor:pointer;
            }

            .previous{
                background:#bdbdbd;
                color:white;
            }

            .next{
                background:#007bff;
                color:white;
            }

            .next:hover{
                background:#0056b3;
            }
            

        </style>
        <script>
            function validate(){
            var passport_type = document.getElementsByName("passportType");
            var selected = false;
            for (var i = 0; i < passport_type.length; i++) {
                if (passport_type[i].checked) {
                    selected = true;
                    break;
                }
            }
            if (!selected) {
                alert("Select Passport Type ");
                return false;
            }
            var application_type = document.getElementsByName("applicationType");
            var selected = false;
            for (var i = 0; i < application_type.length; i++) {
                if (application_type[i].checked) {
                    selected = true;
                    break;
                }
            }
            if (!selected) {
                alert("Select application Type ");
                return false;
            }
            var booklet_type = document.getElementsByName("bookletType");
            var selected = false;
            for (var i = 0; i < booklet_type.length; i++) {
                if (booklet_type[i].checked) {
                    selected = true;
                    break;
                }
            }
            if (!selected) {
                alert("Select booklet Type ");
                return false;
            }
            
        }
        </script>
    </head>

    <body>

        <div class="header">
            Passport Seva Management System
        </div>

        <div class="container">

            <div class="wizard">

                <div class="step">
                    <div class="circle active">1</div>
                    Passport Type
                </div>

                <div class="step">
                    <div class="circle">2</div>
                    Applicant Details
                </div>

                <div class="step">
                    <div class="circle">3</div>
                    Family Details
                </div>

                <div class="step">
                    <div class="circle">4</div>
                    Address Information
                </div>

                <div class="step">
                    <div class="circle">5</div>
                    Emergency  Contact
                </div>

                <div class="step">
                    <div class="circle">6</div>
                    Previous Passport
                </div>

                <div class="step">
                    <div class="circle">7</div>
                    Other Details
                </div>

                <div class="step">
                    <div class="circle">8</div>
                    Passport Preview
                </div>

                <div class="step">
                    <div class="circle">9</div>
                    Verification Details
                </div>

            </div>

            <h2>Step 01 : Passport Type</h2>

            <form action="User_ApplyFPassport_Servlet" method="post" onsubmit="return validate()">

                <table>

                    <tr>
                        <td><b>Passport Type</b></td>
                        <td>
                            <input type="radio" name="passportType" value="Normal">Normal Passport
                            &nbsp;&nbsp;&nbsp;
                            <input type="radio" name="passportType" value="Tatkal">Tatkal Passport
                        </td>
                    </tr>

                    <tr>
                        <td><b>Application Type</b></td>
                        <td>
                            <input type="radio" name="applicationType" value="Fresh">Fresh Passport
                            &nbsp;&nbsp;&nbsp;
                            <input type="radio" name="applicationType" value="Reissue">Re-Issue Passport
                        </td>
                    </tr>

                    <tr>
                        <td><b>Booklet Type</b></td>
                        <td>
                            <input type="radio" name="bookletType" value="36">36 Pages
                            &nbsp;&nbsp;&nbsp;
                            <input type="radio" name="bookletType" value="60">60 Pages
                        </td>
                    </tr>

                    <tr>
                        <td valign="top"><b>Reason For Applying (optional)</b></td>
                        <td>
                            <textarea name="reason"></textarea>
                        </td>
                    </tr>

                </table>

                <div class="button-area">

                    <button type="button" class="previous" disabled>
                        ◀ Previous
                    </button>

                    <button type="submit" class="next" ">
                        Next ▶
                    </button>

                </div>

            </form>

        </div>

    </body>
</html>