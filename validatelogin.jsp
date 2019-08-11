<%-- 
    Document   : validatelogin.jsp
    Created on : 1 Feb, 2018, 1:27:49 PM
    Author     : HP Laptop
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
       String mail=request.getParameter("mail");
       String pass=request.getParameter("pass");
       System.out.println(name);
System.out.println(mail);
       System.out.println(pass);
       try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");
PreparedStatement s=con.prepareStatement("select name,email,password from student where name=? and email=? and password=?");
s.setString(1, name);
s.setString(2, mail);
s.setString(3, pass);
 ResultSet rs=s.executeQuery();
if(rs.next()){
    session.setAttribute("name",name); 
    response.sendRedirect("studentprofile.jsp");
}
else
{
    response.sendRedirect("stdlogin.jsp");
    System.out.println("Wrong password / mail");
}
}
catch(Exception e)
 {
     e.printStackTrace();
 }

 %>
    </body>
</html>
