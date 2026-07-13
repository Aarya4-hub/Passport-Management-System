<%-- 
    Document   : DetailsVerification
    Created on : 26 Jun 2026, 3:26:56 pm
    Author     : AARYA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Step 09 : Details Verification</title>
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
            .verification-box{
                background:#f8f9fa;
                border-left:5px solid #003366;
                padding:25px;
                border-radius:8px;
                line-height:1.8;
                margin-top:20px;
            }

            .verification-box h3{
                color:#003366;
                margin-top:0;
            }

            .checkbox-section{
                margin-top:25px;
                font-size:16px;
            }

            .checkbox-section input{
                transform:scale(1.2);
                margin-right:10px;
            }

            #agreeError{
                color:red;
                margin-top:10px;
                font-size:14px;
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
                <div class="step"><div class="circle done">8</div>Passport Preview</div>
                <div class="step"><div class="circle active">9</div>Verification Deatils</div>
            </div>
            <h2>Step 09 : Details Verification</h2>
            <form action="DetailsVerification" method="post">
                <div class="verification-box">

                    <h3>Declaration</h3>

                    <p>
                        I hereby declare that all the information furnished by me in this passport
                        application is true, complete and correct to the best of my knowledge and
                        belief. I understand that if any information provided by me is found to be
                        false or incorrect, my passport application may be rejected and appropriate
                        legal action may be taken as per applicable laws.
                    </p>

                    <p>
                        I further declare that I have carefully reviewed all the details entered in
                        this application and I am fully responsible for the correctness of the
                        information provided.
                    </p>

                    <div class="checkbox-section">

                        <input type="checkbox" id="agree" name="agree">

                        <label for="agree">
                            I have read, understood and agree to the above declaration.
                        </label>

                        <p id="agreeError"></p>

                    </div>

                </div>

                <div class="buttons">

                    <button type="button"
                            class="prev"
                            onclick="location.href = 'PassportPreview.jsp'">
                        ◀ Previous
                    </button>

                    <button type="submit"
                            class="next" >
                        Submit Application
                    </button>
            </form>
                </div>
        </div>
    </body>

</html>