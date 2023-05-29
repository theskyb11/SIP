<%--  
    Created by IntelliJ IDEA
    User: Akash
    Date: 5/29/2023
    Time: 9:56 AM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<h1>Hello World!</h1>
<%
    try {
        String connectionURL = "jdbc:mysql://localhost:3306/sip";
        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(connectionURL, "root", "root");

        String certificateId = request.getParameter("certificateId");
        String status = request.getParameter("status");

        // Update the status in the database
        String updateQuery = "UPDATE interntable SET Status = ? WHERE CertificateID = ?";
        PreparedStatement updateStatement = connection.prepareStatement(updateQuery);
        updateStatement.setString(1, status);
        updateStatement.setString(2, certificateId);
        updateStatement.executeUpdate();

        updateStatement.close();
        connection.close();
    } catch (Exception ex) {
        ex.printStackTrace();
        response.setStatus(500); // Internal Server Error
    }
%>

</body>
</html>