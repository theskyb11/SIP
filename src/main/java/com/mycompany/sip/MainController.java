/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.sip;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author Akash
 */
@Controller
public class MainController {

    @RequestMapping("/facultyloginpage")
    public String loginpage1function() {
        return "facultyloginpage";
    }

    @RequestMapping("/studentloginpage")
    public String loginpage2function() {
        return "studentloginpage";
    }

    @RequestMapping("/facultyinvalidloginpage")
    public String invalidloginpage1function() {
        return "facultyinvalidloginpage";
    }

    @RequestMapping("/studentinvalidloginpage")
    public String invalidloginpage2function() {
        return "studentinvalidloginpage";
    }

    @RequestMapping("/facultydashboardpage")
    public String dashboardpage1function() {
        return "facultydashboardpage";
    }

    @RequestMapping("/studentdashboardpage")
    public String dashboardpage2function() {
        return "studentdashboardpage";
    }

    @RequestMapping("/landingpage")
    public String landingpage() {
        return "landingpage";
    }

    @RequestMapping(value = "/loginsuccess1", method = RequestMethod.POST)
    public String loginsuccess1funtion(@RequestParam("a") String x,
                                       @RequestParam("b") String y) {
        try {

            Class.forName("com.mysql.jdbc.Driver");

            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
            PreparedStatement stmt = con.prepareStatement("select * from student where StudentID=? and ContactNo=?");
            stmt.setString(1, x);
            stmt.setString(2, y);
            ResultSet rs = stmt.executeQuery();
            String m = "", n = "";
            while (rs.next()) {
                n = rs.getString("StudentID");
                m = rs.getString("ContactNo");
            }

            System.out.println(n + " " + m);
            if (x.equals(n) && y.equals(m)) {
                return "facultydashboardpage";
            } else {
                return "facultyinvalidloginpage";
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "output";
    }

    @RequestMapping(value = "/loginsuccess2", method = RequestMethod.POST)
    public String loginsuccess2funtion(@RequestParam("a") String x, @RequestParam("b") String y) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
            PreparedStatement stmt = con.prepareStatement("select * from student where StudentID=? and ContactNo=?");
            stmt.setLong(1, Long.parseLong(x));
            stmt.setLong(2, Long.parseLong(y));
            ResultSet rs = stmt.executeQuery();
            long m = 0, n = 0;
            while (rs.next()) {
                n = rs.getLong("StudentID");
                m = rs.getLong("ContactNo");
            }
            System.out.println(n + " " + m);
            if (x.equals(String.valueOf(n)) && y.equals(String.valueOf(m))) {
                return "studentdashboardpage";
            } else {
                return "studentinvalidloginpage";
            }

        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "output";
    }


}
