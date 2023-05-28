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
            color: #fff;
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
        <a href="studentdashboardpage.htm"><b style="color: #262626; margin-right: 15px; font-size: 20px">Home</b></a>
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
<br>
<h1> Name: Samarp Jain</h1>
<br>
<h1> PRN:202101040191</h1>
<button class="circular-button">
    <img src="https://www.linkpicture.com/q/try2.png" alt="Image 1">
</button>

<button class="circular-button">
    <img src="tru2.gif" alt="Image 2">
</button>
<button class="circular-button">
    <img src="https://www.linkpicture.com/q/try3.png" alt="Image 3">
</button>

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