<%-- 
    Document   : loginpage
    Created on : May 1, 2023, 3:25:26 PM
    Author     : Akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href=" https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>SIP | SCE</title>
    <link rel="shortcut icon" href="https://mitaoe.mastersofterp.in/Images/Login/mita_logo_fv.png" type="image/x-icon">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap');

        * {
            padding: 0;
            margin: 0;
            font-family: 'Quicksand', sans-serif;
        }

        body {
            background: black;
        }

        .container {
            position: relative;
            width: 100%;
            height: 100vh;
        }

        .container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url(https://i.ibb.co/g4cyHVd/3.jpg);
            background-size: 100% 100vh;
            /* filter: blur(5px); */
        }

        .container::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 30%;
            height: 100%;
            background: #03a9f4;
            opacity: .5;
        }

        .container .box {
            position: absolute;
            top: 50%;
            left: 15%;
            transform: translateY(-50%);
            background: #fff;
            padding: 30px 50px;
            width: 400px;
            box-sizing: border-box;
            z-index: 3;
        }

        .container .box h1 {
            display: inline-block;
            font-size: 30px;
            color: #aaa;
            margin-bottom: 10px;
        }

        .container .box .row {
            position: relative;
            width: 100%;
            margin: 20px 0;
        }

        .container .box input {
            border: none;
            outline: none;
            width: 100%;
            height: 20px;
            font-size: 20px;
            padding: 20px 30px;
            box-sizing: border-box;
            border-bottom: 2px solid #262626;
            color: #aaa;
        }

        .container .box input:focus,
        .container .box input:valid {
            border-color: #03a9f4;
        }

        .container .box a {
            text-decoration: none;
            color: #707070;
            margin: 15px 0;
        }

        .container .box a.login {
            display: inline-block;
            background: #03a9f4;
            color: #fff;
            width: 100%;
            text-align: center;
            padding: 10px 0;
        }

        .container .box a.login:hover {
            background: #ff5722;
        }

        .container .box .row:nth-of-type(1)::before,
        .container .box .row:nth-of-type(2)::before {
            content: '';
            font-family: fontAwesome;
            font-size: 20px;
            position: absolute;
            top: 50%;
            left: 0;
            transform: translateY(-50%);
            pointer-events: none;
            cursor: pointer;
        }

        .container .box .row:nth-of-type(1)::before {
            content: '\f007';
        }

        .container .box .row:nth-of-type(2)::before {
            content: '\f023';
        }

        .btn {
            border: 2px solid transparent;
            background: #3498DB;
            color: #ffffff;
            font-size: 16px;
            line-height: 25px;
            padding: 10px 0;
            text-decoration: none;
            text-shadow: none;
            border-radius: 3px;
            box-shadow: none;
            display: block;
            width: 150px;
            margin: 10px auto;
            text-align: center;
        }

        .btn:hover {
            background: red;
        }

        @media (max-width: 600px) {
            .container .box {
                width: 90%; /* Adjust the width as per your preference */
                left: 5%; /* Adjust the left position as per your preference */
            }
        }

    </style>
</head>

<body>
<div class="container">
    <form action="loginsuccess1" method="post">
        <div class="box">
            <img src="https://mitaoe.mastersofterp.in/Images/Login/mita_logo.png" style="width: 300px;" alt="mitlogo">
            <h1 style="color: currentColor;">Faculty Log In</h1><br>
            <a href="landingpage.htm"><img src="https://i.ibb.co/2Ph4sNR/previous.png"></a>
            <div class="row">
                <input type="text" name="a" placeholder="Username" required>
            </div>
            <div class="row">
                <input type="password" name="b" placeholder="Password" required>
            </div>
            <button type="submit"
                    style="background-color: #03a9f4; color: white; border: none; padding: 10px 20px; border-radius: 4px; font-size: 16px; cursor: pointer; align-content:center;">
                Sign In
            </button>
        </div>
    </form>
</div>
</body>

</html>
