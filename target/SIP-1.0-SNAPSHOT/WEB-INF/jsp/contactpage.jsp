<%--  
    Created by IntelliJ IDEA
    User: Akash
    Date: 5/28/2023
    Time: 7:23 PM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contact Us</title>
    <link href="https://fonts.googleapis.com/css2?family=Days+One&family=Work+Sans&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap");

        * {
            font-family: Poppins, sans-serif;
            padding: 0;
        }

        body {
            background-color: #444442;
        }

        h1 {
            font-family: 'Poppins', sans-serif, 'arial';
            font-weight: 600;
            font-size: 72px;
            color: white;
            text-align: center;
        }

        h4 {
            font-family: 'Roboto', sans-serif, 'arial';
            font-weight: 400;
            font-size: 20px;
            color: #9b9b9b;
            line-height: 1.5;
        }

        input:focus ~ label,
        textarea:focus ~ label,
        input:valid ~ label,
        textarea:valid ~ label {
            font-size: 0.75em;
            color: #999;
            top: -5px;
            -webkit-transition: all 0.225s ease;
            transition: all 0.225s ease;
        }

        .styled-input {
            float: left;
            width: 293px;
            margin: 1rem 0;
            position: relative;
            border-radius: 4px;
        }

        @media only screen and (max-width: 768px) {
            .styled-input {
                width: 100%;
            }
        }

        .styled-input label {
            color: #999;
            padding: 1.3rem 30px 1rem 30px;
            position: absolute;
            top: 10px;
            left: 0;
            -webkit-transition: all 0.25s ease;
            transition: all 0.25s ease;
            pointer-events: none;
        }

        .styled-input.wide {
            width: 650px;
            max-width: 100%;
        }

        input,
        textarea {
            padding: 30px;
            border: 0;
            width: 100%;
            font-size: 1rem;
            background-color: #2d2d2d;
            color: white;
            border-radius: 4px;
        }

        input:focus,
        textarea:focus {
            outline: 0;
        }

        input:focus ~ span,
        textarea:focus ~ span {
            width: 100%;
            -webkit-transition: all 0.075s ease;
            transition: all 0.075s ease;
        }

        textarea {
            width: 100%;
            min-height: 15em;
        }

        .input-container {
            width: 650px;
            max-width: 100%;
            margin: 20px auto 25px auto;
        }

        .submit-btn {
            float: right;
            padding: 7px 35px;
            border-radius: 60px;
            display: inline-block;
            background-color: #4b8cfb;
            color: white;
            font-size: 18px;
            cursor: pointer;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.06),
            0 2px 10px 0 rgba(0, 0, 0, 0.07);
            -webkit-transition: all 300ms ease;
            transition: all 300ms ease;
        }

        .submit-btn:hover {
            transform: translateY(1px);
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.10),
            0 1px 1px 0 rgba(0, 0, 0, 0.09);
        }

        @media (max-width: 768px) {
            .submit-btn {
                width: 100%;
                float: none;
                text-align: center;
            }
        }

        input[type=checkbox] + label {
            color: #ccc;
            font-style: italic;
        }

        input[type=checkbox]:checked + label {
            color: #f00;
            font-style: normal;
        }


    </style>
</head>
<body>
<div class="container">
    <div class="image-section">
        <img src="https://mitaoe.mastersofterp.in/Images/Login/mita_logo.png" alt="Contact Image"
             class="contact-image">
    </div>
    <div class="contact-section">
        <h1>Contact Us</h1>
    </div>
    <form action="/sendEmail" method="post">
        <div class="row input-container">
            <div class="col-xs-12">
                <div class="styled-input wide">
                    <input type="text" required/>
                    <label>Name</label>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="styled-input">
                    <input type="text" required/>
                    <label>Email</label>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="styled-input" style="float:right;">
                    <input type="text" required/>
                    <label>Phone Number</label>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="styled-input wide">
                    <textarea required></textarea>
                    <label>Message</label>
                </div>
            </div>
            <!-- <div class="col-xs-12">
                <div class="btn-lrg submit-btn">Send Message</div>
            </div> -->
            <div class="col-xs-12">
                <div>
                    <input type="submit" value="Send Message">
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>