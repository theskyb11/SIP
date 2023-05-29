<%--  
    Created by IntelliJ IDEA
    User: Akash
    Date: 5/29/2023
    Time: 9:09 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Certificate Details</title>
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
            /*padding: 0;*/
            /*align-items: center;*/
            justify-content: center;
            /*background-color: #f4f4f4;*/

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

        h1 {
            color: #333333;
            text-align: center;
            font-weight: bold;
        }

        .test {
            overflow: auto;
            max-height: 400px;
            padding: 20px;
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


<%--content--%>
<div class="test">
    <%
        try {
            String studentID = (String) request.getAttribute("studentID");
            String connectionURL = "jdbc:mysql://localhost:3306/sip";
            Connection connection = null;

            Statement statement = null;
            ResultSet rs = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "root");

            statement = connection.createStatement();
            String QueryString = "SELECT * from adding NATURAL JOIN student;";
            rs = statement.executeQuery(QueryString);
    %>
    <TABLE cellpadding="15" border="1" style="background-color: #FFFFE0; width: 100%; table-layout: fixed;"
           class="content-table">
        <tr style="background-color: #BDB76B;">
            <th><strong style="font-family: Poppins,sans-serif;">CertificateID</strong></th>
            <th><strong style="font-family: Poppins,sans-serif;">StudentID<strong></th>
            <th><strong style="font-family: Poppins,sans-serif;">Completion Date</strong></th>
            <th><strong style="font-family: Poppins,sans-serif;">Document URL</strong></th>
            <th><strong style="font-family: Poppins,sans-serif;">Student Name</strong></th>
            <th><strong style="font-family: Poppins,sans-serif;">Email</strong></th>
            <th><strong style="font-family: Poppins,sans-serif;">Contact</strong></th>

        </tr>
        <%
            while (rs.next()) {
        %>
        <TR class>
            <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(1)%>
            </TD>
            <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(2)%>
            </TD>
            <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(3)%>
            </TD>
            <td>
                <a id="documentLink" href="" style="font-family: Poppins,sans-serif;">
                    <%=rs.getString(4)%>
                </a>
            </td>
            <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(5)%>
            </TD>
            <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(6)%>
            </TD>
            <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(7)%>
            </TD>
        </TR>

        <% } %>
        <%
            // close all the connections.
            rs.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
        %>
        </font>
        <font size="+3" color="red"></b>
                <%
                                            out.println("Unable to connect to database.");
                                        }
                                    %>
    </TABLE>
    <TABLE>
        <TR>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
    </TABLE>
    </font>
</div>


<footer id="footer">
    <p>&copy; 2023 MIT Academy of Engineering | College Code - 6146</p>
</footer>

<script>

    / Get the cell containing the anchor tag
    var documentCell = document.getElementById('documentCell');

    // Get the anchor tag element
    var documentLink = documentCell.querySelector('a');

    // Add a click event listener to the anchor tag
    documentLink.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the default navigation behavior
        var href = this.getAttribute('href'); // Get the href value
        window.location.href = href; // Navigate to the URL

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
