<%-- 
    Document   : forgetprocess
    Created on : 16 Apr, 2018, 12:05:51 PM
    Author     : HP Laptop
--%>
<%@page import="javafx.scene.paint.Stop"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");
String email=request.getParameter("email");
PreparedStatement p=con.prepareStatement("SELECT password FROM student where email=?");
p.setString(1, email);
ResultSet rs=p.executeQuery();
if(rs.next()){

//Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("email");
 System.out.print(to);
    final String subject = "Your Password";
    
    
    
    final String messg = "your password is: "+rs.getString("password");
    
System.out.println(rs.getString("password"));

 

    // Sender's email ID and password needs to be mentioned

    final String from = "medicapsscheduler@gmail.com";

    final String pass = "medicaps0876";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        result = "Your mail sent successfully....";

out.println("Password send to your email id successfully !");
}catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }
}  
    else{
out.println("Invalid Email Id or please check your internet connection!!!!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
    </body>
</html>
