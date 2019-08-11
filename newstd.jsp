<%-- 
    Document   : newstd
    Created on : 28 Jan, 2018, 5:56:45 PM
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
       String name=request.getParameter("name");
       String mail=request.getParameter("mail");
       String pn=request.getParameter("pn");
       String br=request.getParameter("br");
       String pass=request.getParameter("pass");
        System.out.println(name+" "+mail+" "+pn+" "+br+" "+pass);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");

PreparedStatement p=con.prepareStatement("select email from validation where email = ?");
p.setString(1, mail);
ResultSet rs=p.executeQuery();

if(rs.next()){
 PreparedStatement s=con.prepareStatement("insert into student(name,email,phone,branch,password)values(?,?,?,?,?)");
 s.setString(1, name);
 s.setString(2,mail);
 s.setString(3,pn);
 s.setString(4,br);
 s.setString(5,pass);
 int i=s.executeUpdate();
 System.out.println("========================="+i);
 if(i>0){
response.sendRedirect("stdlogin.jsp");
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
