<%-- 
    Document   : rejectreq
    Created on : 7 Apr, 2018, 5:17:41 PM
    Author     : Dell PC
--%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.IOException"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%      String id=request.getParameter("id");
              String ReqFac=(String)session.getAttribute("empno");
              System.out.println(ReqFac);
             

    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("stmail");
    System.out.println(to);

    final String subject = "Response to Doubt Class Request";
    
    String fname=(String)session.getAttribute("fname");
    System.out.println(fname);
    
    final String messg = "Sorry the Doubt Class is not scheldule for your request by"+fname;


 

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

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

%>

<title>Sending Mail </title>
    
<h1><font color="blue">Sending Mail</font></h1>

<b><% out.println(result);%></b>
   

<%
              try
              {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");
    PreparedStatement b=con.prepareStatement("delete from newreq where id=?");
    b.setString(1, id);
    int i=b.executeUpdate();
    response.sendRedirect("newreq.jsp");
    con.close();
}
              
 catch(Exception e)
 {
     out.print(e);
     e.printStackTrace();
 }

%>
    </body>
</html>
