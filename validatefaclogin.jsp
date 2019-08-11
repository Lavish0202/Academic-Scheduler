<%-- 
    Document   : validatefaclogin
    Created on : 4 Feb, 2018, 11:50:50 AM
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
    <body>
              <%
       String fname=request.getParameter("fname");
       String empno=request.getParameter("empno");
       String fpass=request.getParameter("fpass");
try
{
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");
PreparedStatement s=con.prepareStatement("select name,empnum,password from faculty where  name=? and empnum=? and password=? ");
s.setString(1,fname);
s.setString(2,empno);
s.setString(3,fpass);
 ResultSet rs=s.executeQuery();
if(rs.next()){
    session.setAttribute("fname",fname);
    session.setAttribute("empno", empno);
    response.sendRedirect("facultyprofile.jsp");
}
else
{
    response.sendRedirect("facultylogin.jsp");
    out.println("Wrong password or ID");
}
}
catch(Exception e)
 {
     e.printStackTrace();
 }

 %> </body>
</html>
