<%-- 
    Document   : newfaculty
    Created on : 4 Feb, 2018, 5:16:24 PM
    Author     : HP Laptop
--%>

<%@page import="javax.swing.JOptionPane"%>
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
       String fname=request.getParameter("fname");
       String empno=request.getParameter("empno");
       String fmail=request.getParameter("fmail");
       String fpn=request.getParameter("fpn");
String dept=request.getParameter("dept");
String fpass=request.getParameter("fpass");
System.out.println(fname+" "+fmail+" "+fpn+" "+dept+" "+fpass);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");

  PreparedStatement p=con.prepareStatement("select empid from facvalidate where empid=?");
   p.setString(1, empno);
ResultSet rs=p.executeQuery();

System.out.println("mail    "+fmail);
if(rs.next()){
    PreparedStatement s=con.prepareStatement("insert into faculty(name,empnum,phone,email,department,password)values(?,?,?,?,?,?)");
 s.setString(1, fname);
 s.setString(2,empno);
 s.setString(3,fpn);
 s.setString(4,fmail);
 s.setString(5,dept);
  s.setString(6,fpass);
 int i=s.executeUpdate();
 System.out.println("========================="+i);
 if(i>0){
response.sendRedirect("facultylogin.jsp");
 }else{
response.sendRedirect("home.jsp");
 }
  }else{
   response.sendRedirect("home.jsp"); 
}
con.close();
}
 catch(Exception e)
 {
     e.printStackTrace();
 }

   %>
 

    </body>
</html>
