//package com.mycompany.sip;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import javax.mail.*;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//import java.util.Properties;
//
//@Controller
//public class EmailController {
//
//    @PostMapping("/sendEmail")
//    public String sendEmail(@RequestParam("name") String name,
//                            @RequestParam("email") String email,
//                            @RequestParam("phoneNumber") String phoneNumber,
//                            @RequestParam("message") String message,
//                            Model model) {
//
//        // Email configuration
//        String host = "smtp.gmail.com";
//        String port = "587";
//        String username = ""; // Replace with your email address
//        String password = "your-password"; // Replace with your password
//
//        // Sender and recipient email addresses
//        String senderEmail = "your-email@gmail.com"; // Replace with your email address
//        String recipientEmail = "test@gmail.com"; // Replace with the recipient's email address
//
//        // Email subject and content
//        String subject = "New Contact Form Submission";
//        String content = "Name: " + name + "\n" +
//                "Email: " + email + "\n" +
//                "Phone Number: " + phoneNumber + "\n" +
//                "Message: " + message;
//
//        // Create properties for the SMTP connection
//        Properties props = new Properties();
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.smtp.host", host);
//        props.put("mail.smtp.port", port);
//
//        // Create a session with authentication credentials
//        Session session = Session.getInstance(props, new Authenticator() {
//            @Override
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(username, password);
//            }
//        });
//
//        try {
//            // Create a new email message
//            Message emailMessage = new MimeMessage(session);
//            emailMessage.setFrom(new InternetAddress(senderEmail));
//            emailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));
//            emailMessage.setSubject(subject);
//            emailMessage.setText(content);
//
//            // Send the email
//            Transport.send(emailMessage);
//
//            // Set a success message in the model
//            model.addAttribute("message", "Email sent successfully");
//        } catch (MessagingException e) {
//            // Set an error message in the model
//            model.addAttribute("error", "Failed to send email");
//            e.printStackTrace();
//        }
//
//        return "result-page"; // Replace with the name of your result page
//    }
//
//}
