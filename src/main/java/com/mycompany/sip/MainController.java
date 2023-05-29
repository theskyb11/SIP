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

import org.springframework.web.multipart.commons.CommonsMultipartFile;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import sun.awt.image.InputStreamImageSource;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


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

    @RequestMapping("/fileupload")
    public String fileuploadfun() {
        return "fileupload";
    }

    @RequestMapping("/delete")
    public String deletefun() {
        return "delete";
    }

    @RequestMapping("/contactpage")
    public String contactfun() {
        return "contactpage";
    }

    @RequestMapping("/display")
    public String diplayfun() {
        return "display";
    }

    @RequestMapping("/search1")
    public String searchfun() {
        return "search1";
    }

    @RequestMapping("/search2")
    public String searchfun2() {
        return "search2";
    }

    @RequestMapping("/search3")
    public String searchfun3() {
        return "search3";
    }

    @RequestMapping("/SearchOptions")
    public String sfun() {
        return "SearchOptions";
    }

    @RequestMapping("/alldisplay")
    public String sfun4() {
        return "alldisplay";
    }

    @RequestMapping("/viewstatus")
    public String sfun6() {
        return "viewstatus";
    }

    @RequestMapping("/search1result")
    public String sfun62() {
        return "search1result";
    }


//    @RequestMapping("/verify")
//    public String verifyfun() {
//        return "verify";
//    }

    public String sss;

    @RequestMapping(value = "/search1", method = RequestMethod.POST)
    public String s2fun(@RequestParam("search") String x, Model Object1) {
        sss = x;
        Object1.addAttribute("msg", x);
        System.out.println("SHODHTOY");
        return "search1result";
    }

    @RequestMapping(value = "/search2", method = RequestMethod.POST)
    public String s2fun2(@RequestParam("search") String x, Model Object1) {
        sss = x;
        Object1.addAttribute("msg", x);
        System.out.println("SHODHTOY");
        return "search2result";
    }

    @RequestMapping(value = "/search3", method = RequestMethod.POST)
    public String s2fun3(@RequestParam("search") String x, Model Object1) {
        sss = x;
        Object1.addAttribute("msg", x);
        System.out.println("SHODHTOY");
        return "search3result";
    }


    @RequestMapping(value = "/loginsuccess1", method = RequestMethod.POST)
    public String loginsuccess1funtion(@RequestParam("a") String x,
                                       @RequestParam("b") String y, Model model) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
            PreparedStatement stmt = con.prepareStatement("select * from faculty where FacultyID=? and ContactNo=?");
            stmt.setLong(1, Long.parseLong(x));
            stmt.setLong(2, Long.parseLong(y));

            ResultSet rs = stmt.executeQuery();
            long m = 0, n = 0;
            String naav = "";
            while (rs.next()) {
                n = rs.getLong("FacultyID");
                m = rs.getLong("ContactNo");
                naav = rs.getString("Name");
            }
            System.out.println(n + " " + m);

            if (x.equals(String.valueOf(n)) && y.equals(String.valueOf(m))) {
                model.addAttribute("facultyID", n);
                model.addAttribute("name", naav);
                System.out.println(n);
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
    public String loginsuccess2funtion(@RequestParam("a") String x, @RequestParam("b") String y, Model model) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
            PreparedStatement stmt = con.prepareStatement("select * from student where StudentID=? and ContactNo=?");
            stmt.setLong(1, Long.parseLong(x));
            stmt.setLong(2, Long.parseLong(y));

            ResultSet rs = stmt.executeQuery();
            long m = 0, n = 0;
            String naav = "";
            while (rs.next()) {
                n = rs.getLong("StudentID");
                m = rs.getLong("ContactNo");
                naav = rs.getString("Name");
            }
            System.out.println(n + " " + m);

            if (x.equals(String.valueOf(n)) && y.equals(String.valueOf(m))) {
                model.addAttribute("studentID", n);
                model.addAttribute("name", naav);
                System.out.println(n);
                return "studentdashboardpage";
            } else {
                return "studentinvalidloginpage";
            }


        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "output";
    }

//    @RequestMapping(value = "/insert", method = RequestMethod.POST)
//    public String uploadfuntion(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") String x, @RequestParam("b") String y, @RequestParam("c") String z, @RequestParam("k") CommonsMultipartFile file) {
//        try {
//            InputStream InputStream = null;
//
//            if (file != null) {
//                InputStream = file.getInputStream();
//            }
//            String message = null;
//
//            HttpSession session = request.getSession();
//
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
//            PreparedStatement statement = con.prepareStatement("INSERT INTO adding2 VALUES (?, ?, ?, ?)");
//            statement.setInt(1, Integer.parseInt(x));
//            statement.setInt(2, Integer.parseInt(y));
//            statement.setString(3, z);
//
//            if (InputStream != null) {
//                statement.setBlob(4, InputStream);
//            }
//
//            statement.executeUpdate();
//            int row = statement.executeUpdate();
//            if (row > 0) {
//                message = "File uploaded and saved into database";
//            }
//
//        } catch (Exception e) {
//            System.out.println(e.getMessage());
//        }
//        return "output";
//    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insertdata(@RequestParam("a") String x, @RequestParam("b") String y, @RequestParam("c") String z, @RequestParam("d") String w, Model model) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
            PreparedStatement statement = con.prepareStatement("INSERT INTO adding VALUES (?, ?, ?, ?)");
            statement.setLong(1, Long.parseLong(x));
            statement.setLong(2, Long.parseLong(y));
            statement.setString(3, z);
            statement.setString(4, w);


            System.out.println(x + " " + y + " " + z + " " + w);
            statement.executeUpdate();
            System.out.println(x + " " + y + " " + z + " " + w);


        } catch (Exception e) {

            System.out.println(e.getMessage());
        }
        return "studentdashboardpage";
    }

    @RequestMapping(value = "/deletec", method = RequestMethod.POST)
    public String deletedata(@RequestParam("a") String x, @RequestParam("b") String y) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
            PreparedStatement statement = con.prepareStatement("DELETE FROM adding WHERE CertificateId=? and StudentID=?");
            statement.setLong(1, Long.parseLong(x));
            statement.setLong(2, Long.parseLong(y));

            statement.executeUpdate();


        } catch (Exception e) {

            System.out.println(e.getMessage());
        }
        return "studentdashboardpage";
    }

    @RequestMapping(value = "acceptreq")
    public String ajdf(@RequestParam("id") String id) {
        try {
            System.out.println("id" + id);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
            PreparedStatement statement = con.prepareStatement("update interntable set status='accept' where CertificateId=?");
            statement.setLong(1, Long.parseLong(id));


            statement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "redirect:search1";
    }

    @RequestMapping(value = "rejectreq")
    public String ajdfa(@RequestParam("id") String id) {
        try {
            System.out.println("id" + id);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sip", "root", "root");
            PreparedStatement statement = con.prepareStatement("update interntable set status='reject' where CertificateId=?");
            statement.setLong(1, Long.parseLong(id));


            statement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "redirect:search1";
    }

}
