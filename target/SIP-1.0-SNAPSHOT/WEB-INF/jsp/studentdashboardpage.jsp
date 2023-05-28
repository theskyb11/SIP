<%-- 
    Document   : dashboardpage
    Created on : May 1, 2023, 4:14:12 PM
    Author     : Akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome Student!!!</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" href="https://mitaoe.mastersofterp.in/Images/Login/mita_logo_fv.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            height: 60px;
            background-color: #4390ff;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
        }

        .navbar-logo {
            display: flex;
            align-items: center;
            height: 100%;
        }

        .navbar-logo img {
            height: 40px;
            margin-right: 10px;
        }

        .navbar-logo p {
            margin: 0;
        }

        .navbar-contact {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .navbar-contact a {
            color: #fff;
            text-decoration: none;
        }

        .navbar-contact i {
            font-size: 18px;
        }

        .navbar-logout {
            position: relative;
            display: inline-block;
            overflow: hidden;
            cursor: pointer;
            font-weight: bold;
            color: #fff;
            padding: 8px 16px;
            transition: all 0.3s ease;
        }

        .navbar-logout:before {
            content: '';
            position: absolute;
            background-color: rgba(255, 255, 255, 0.3);
            top: 0;
            left: 0;
            width: 0;
            height: 100%;
            transition: all 0.3s ease;
            z-index: -1;
        }

        .navbar-logout:hover {
            color: #333;
        }

        .navbar-logout:hover:before {
            width: 100%;
        }

        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        .container-bottom-to-up {
            overflow: hidden;
            margin: 0px;
        }

        .top-to-bottom {
            animation: 0.4s top-to-bottom forwards;
            font-size: 24px;
            font-weight: 600;
            letter-spacing: -.005em;
            font-family: "SF Pro Display", "SF Pro Icons", "Helvetica Neue", "Helvetica", "Arial", sans-serif;
            color: rgba(0, 0, 0, 0.8);
            text-align: left;
            margin: 0;
        }

        @keyframes top-to-bottom {
            from {
                transform: translateY(-48px);
            }
            to {
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
<div class="navbar">
    <div class="navbar-logo">
        <a href="https://mitaoe.ac.in" target="_blank"><img src="https://mitaoe.ac.in/assets/images/MITAOE-logo.webp"
                                                            alt="Logo"></a>
        <span style="font-family: 'Arial Black'; font-size: 25px; color: #262626"><div id="containerAnimation"
                                                                                       class="container-bottom-to-up">
  <p class="top-to-bottom">Summer Internship Programme</p>
 </div></span>
    </div>
    <div class="navbar-contact">
        <a href="contactpage.htm"><b style="font-size: 20px; color: #262626">Contact Us</b></a>
        <a href="tel: +91-8793323500" style="color: #262626"><i class="fa fa-phone"></i>
            +91-8793323500</a>
    </div>
    <div class="navbar-logout">
        <a href="landingpage.htm">
            <button class="btn btn-danger">Logout</button>
        </a>
    </div>
</div>

<footer style="background-color: #4390ff; padding: 10px; text-align: center;">
    <p>&copy; 2023 MIT Academy of Engineering | College Code - 6146</p>
</footer>
</body>
</html>
