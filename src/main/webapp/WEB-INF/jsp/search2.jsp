<%--  
    Created by IntelliJ IDEA
    User: Akash
    Date: 5/29/2023
    Time: 8:49 AM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Student Certificate</title>
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
            background-color: #fff;
            color: #000;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        body.dark-mode {
            background-color: #000;
            color: #fff;
        }

        .switch {
            position: relative;
            display: inline-block;
            width: 40px;
            height: 20px;
            margin-left: 10px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #fff;
            transition: 0.4s;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 14px;
            width: 14px;
            left: 3px;
            bottom: 3px;
            background-color: #262626;
            transition: 0.4s;
        }

        input:checked + .slider {
            background-color: greenyellow;
        }

        input:focus + .slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked + .slider:before {
            transform: translateX(20px);
        }

        /* Rounded sliders */

        .slider.round {
            border-radius: 20px;
        }

        .slider.round:before {
            border-radius: 50%;
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

        .navbar.dark-mode-navbar {
            background-color: #aaaaaa;
            color: #fff;
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

        #footer {
            background-color: #4390ff;
            color: #262626;
            padding: 10px;
            margin-top: auto;
            text-align: center;
        }

        #footer.dark-mode-footer {
            background-color: #aaaaaa;
            color: #fff;
        }

        .circular-button {
            width: 300px;
            height: 300px;
            border-radius: 50%;
            border: #262626;
            margin: 7%;
            margin-right: 50px;
            margin-left: 50px;
            background-color: #fff;
            color: #262626;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .circular-button:hover {
            transform: scale(1.05);
        }

        .circular-button img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .circular-button:not(:first-child) {
            margin-left: 20px;
        }

        @import url(https://fonts.googleapis.com/css?family=Open+Sans);


        .search {
            width: 100%;
            position: relative;
            display: flex;
        }

        .searchTerm {
            width: 100%;
            border: 3px solid #00B4CC;
            border-right: none;
            padding: 5px;
            border-radius: 5px 0 0 5px;
            outline: none;
            color: #9DBFAF;
            display: flex;
            align-items: center; /* Add this line */
        }

        .searchTerm:focus {
            color: #00B4CC;
        }

        .searchButton {
            width: 40px;
            height: 36px;
            border: 1px solid #00B4CC;
            background: #00B4CC;
            text-align: center;
            color: #fff;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            font-size: 20px;
        }

        /*Resize the wrap to see the search bar change!*/
        .wrap {
            width: 30%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .content-table {
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            min-width: 400px;
            border-radius: 5px 5px 0 0;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }

        .content-table thead tr {
            background-color: #009879;
            color: #ffffff;
            text-align: left;
            font-weight: bold;
        }

        .content-table th,
        .content-table td {
            padding: 12px 15px;
        }

        .content-table tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        .content-table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        .content-table tbody tr:last-of-type {
            border-bottom: 2px solid #009879;
        }

        .content-table tbody tr.active-row {
            font-weight: bold;
            color: #009879;
        }
        .search-bar input,
        .searsh-button,
        .searsh-button:before,
        .searsh-button:after {
            transition: all 0.25s ease-out;
        }

        .search-bar input,
        .searsh-button {
            width: 3em;
            height: 3em;
        }

        .search-bar input:invalid:not(:focus),
        .searsh-button {
            cursor: pointer;
        }

        .search-bar,
        .search-bar input:focus,
        .search-bar input:valid {
            width: 100%;
        }

        .search-bar input:focus,
        .search-bar input:not(:focus) + .searsh-button:focus {
            outline: transparent;
        }

        .search-bar {
            margin: auto;
            margin-top: 2vh;
            padding: 1.5em;
            justify-content: center;
            max-width: 30em;
        }

        .search-bar input {
            background: transparent;
            border-radius: 1.5em;
            box-shadow: 0 0 0 0.4em #262626 inset;
            padding: 0.75em;
            transform: translate(0.5em, 0.5em) scale(0.5);
            transform-origin: 100% 0;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            color: white;
        }

        .search-bar input:focus,
        .search-bar input:valid {
            background: #282539;
            border-radius: 0.375em 0 0 0.375em;
            box-shadow: 0 0 0 0.1em #CBBDDB inset;
            transform: scale(1);
        }

        .searsh-button {
            background: #262626;
            border-radius: 0 0.75em 0.75em 0 / 0 1.5em 1.5em 0;
            padding: 0.75em;
            position: relative;
            transform: translate(0.25em, 0.25em) rotate(45deg) scale(0.25, 0.125);
            transform-origin: 0 50%;
        }

        .searsh-button:before,
        .searsh-button:after {
            content: "";
            display: block;
            opacity: 0;
            position: absolute;
        }

        .searsh-button:before {
            border-radius: 50%;
            box-shadow: 0 0 0 0.2em #262626 inset;
            top: 0.75em;
            left: 0.75em;
            width: 1.2em;
            height: 1.2em;
        }

        .searsh-button:after {
            background: #262626;
            border-radius: 0 0.25em 0.25em 0;
            top: 51%;
            left: 51%;
            width: 0.75em;
            height: 0.25em;
            transform: translate(0.2em, 0) rotate(45deg);
            transform-origin: 0 50%;
        }

        .searsh-button span {
            display: inline-flex;
            overflow: hidden;
            width: 1px;
            height: 1px;
        }

        input[type="search"]::-webkit-search-cancel-button {
            -webkit-appearance: none;
            display: inline-block;
            width: 12px;
            height: 12px;
            margin-left: 10px;
            background: linear-gradient(45deg, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0) 43%, #CBBDDB 45%, #CBBDDB 55%, rgba(0, 0, 0, 0) 57%, rgba(0, 0, 0, 0) 100%), linear-gradient(135deg, transparent 0%, transparent 43%, #CBBDDB 45%, #CBBDDB 55%, transparent 57%, transparent 100%);
        }

        /* Active state */

        .search-bar input:focus + .searsh-button,
        .search-bar input:valid + .searsh-button {
            background: #8F7CEC;
            border-radius: 0 0.375em 0.375em 0;
            transform: scale(1);
            position: absolute;
            display: flex;
            align-self: center;
            top: 32.6vh;
            left: 55vw;
        }

        .search-bar input:focus + .searsh-button:before,
        .search-bar input:focus + .searsh-button:after,
        .search-bar input:valid + .searsh-button:before,
        .search-bar input:valid + .searsh-button:after {
            opacity: 1;
        }

        .search-bar input:focus + .searsh-button:active,
        .search-bar input:valid + .searsh-button:active {
            transform: translateY(1px);
        }

        .search-bar {
            align-items: center;
            justify-content: center;
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
        <a href="facultydashboardpage.htm"><b style="color: #262626; margin-right: 15px; font-size: 20px">Home</b></a>
        <a href="contactpage.htm"><b style="font-size: 20px; color: #262626">Contact Us</b></a>
        <a href="tel: +91-8793323500" style="color: #fff"><i class="fa fa-phone"></i>
            +91-8793323500</a>
    </div>
    <%--    <button id="toggle-theme-button" class="btn btn-primary">Toggle Dark Mode</button>--%>
    <label class="switch">
        <input type="checkbox" id="toggle-theme-slider">
        <span class="slider"></span>
    </label>

    <div class="navbar-logout">
        <a href="landingpage.htm">
            <button class="btn btn-danger" style="font-size:15px"><b>Logout</b></button>
        </a>
    </div>

</div>

<%--//Putting content here--%>
<h1>Search By Student Name</h1>
<div class="search-bar">
    <form action="search2" method="post" commandName="userForm" path="email">
        <input type="text" required autocomplete="off" name="search" placeholder="Enter Student Name">
        <button type="submit" class="searsh-button"></button>
    </form>
</div>



    <footer id="footer">
        <p>&copy; 2023 MIT Academy of Engineering | College Code - 6146</p>
    </footer>

    <script>
        var darkModeEnabled = false;

        function toggleDarkMode() {
            var body = document.body;
            var navbar = document.querySelector('.navbar');
            var footer = document.getElementById('footer');

            if (darkModeEnabled) {
                body.classList.remove("dark-mode");
                navbar.classList.remove("dark-mode-navbar");
                footer.classList.remove("dark-mode-footer");
                localStorage.setItem("darkModeEnabled", "false"); // Store the theme mode in localStorage
            } else {
                body.classList.add("dark-mode");
                navbar.classList.add("dark-mode-navbar");
                footer.classList.add("dark-mode-footer");
                localStorage.setItem("darkModeEnabled", "true"); // Store the theme mode in localStorage
            }
            darkModeEnabled = !darkModeEnabled;
        }


        var toggleSlider = document.getElementById("toggle-theme-slider");
        toggleSlider.addEventListener("change", toggleDarkMode);
        var storedThemeMode = localStorage.getItem("darkModeEnabled");
        if (storedThemeMode === "true") {
            toggleDarkMode();
            document.getElementById("toggle-theme-slider").checked = true;
        }
    </script>


</body>
</html>