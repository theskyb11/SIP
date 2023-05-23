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
 *
 * @author Akash
 */
@Controller
public class MainController {
//what is this?
    @RequestMapping("/loginpage1")
    public String loginpage1function() {
        return "loginpage1";
    }

    @RequestMapping("/loginpage2")
    public String loginpage2function() {
        return "loginpage2";
    }

    @RequestMapping("/invalidloginpage1")
    public String invalidloginpage1function() {
        return "invalidloginpage1";
    }
    
    @RequestMapping("/invalidloginpage2")
    public String invalidloginpage2function() {
        return "invalidloginpage2";
    }

    @RequestMapping("/dashboard1page")
    public String dashboardpage1function() {
        return "dashboardpage1";
    }
    
    @RequestMapping("/dashboard2page")
    public String dashboardpage2function() {
        return "dashboardpage2";
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
                return "dashboardpage1";
            } else {
                return "invalidloginpage1";
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "output";
    }

    @RequestMapping(value = "/loginsuccess2", method = RequestMethod.POST)
    public String loginsuccess2funtion(@RequestParam("a") String x,
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
                return "dashboardpage2";
            } else {
                return "invalidloginpage2";
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "output";
    }
}
