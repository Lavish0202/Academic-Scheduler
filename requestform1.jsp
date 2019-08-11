<%-- 
    Document   : requestform1
    Created on : 6 Feb, 2018, 4:08:15 PM
    Author     : Dell PC
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
    
      
    
    <% String Stmail=request.getParameter("stmail");
       String SubjectID=request.getParameter("subject");
       String TimeSlot=request.getParameter("timeslot");
       String DOA=request.getParameter("doa");
       String Comments=request.getParameter("comments");
       String ReqFac=request.getParameter("reqfac");
       String empno=request.getParameter("empno");
       System.out.println(Stmail+" "+SubjectID+" "+TimeSlot+" "+DOA+" "+Comments+" "+ReqFac+" "+empno);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");
PreparedStatement a=con.prepareStatement("select empid from facvalidate where empid=?");
 a.setString(1, ReqFac);
ResultSet rs=a.executeQuery();

System.out.println("empno=    "+ReqFac);
if(rs.next()){
PreparedStatement r=con.prepareStatement("insert into newreq(stmail,subject,timeslot,doa,comments,reqfac)values(?,?,?,?,?,?)");
 r.setString(1,Stmail);
 r.setString(2,SubjectID);
 r.setString(3,TimeSlot);
 r.setString(4,DOA);
 r.setString(5,Comments);
 r.setString(6, ReqFac);
 int k=r.executeUpdate();

 System.out.println("========================="+k);
 
      if(k>0){
     response.sendRedirect("studentprofile.jsp");
}
 else{
 
     response.sendRedirect("home.jsp");
}


con.close();
}}
 catch(Exception e)
 {
     e.printStackTrace();
 }

  
 %>

 
</html>
