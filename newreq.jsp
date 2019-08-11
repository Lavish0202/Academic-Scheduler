<%-- 
    Document   : newreq
    Created on : 7 Apr, 2018, 11:44:53 AM
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
   
  <h1>Academic Scheduler</h1>
  <h3>About: Description</h3>


     <div id="content" style="height: 700px;">
     <form method="post">
            <table border="1" cellspacing="5" cellpadding="5">
                <tr>
                    <td>Email</td>
                    <td>Subject</td>
                    <td>Tslot</td>
                    <td>doa</td>
                    <td>comments</td>
                    <td>ID</td>
                    <td colspan="2" align="center">Action</td>
                </tr>
    <%
        
        String ReqFac=(String)session.getAttribute("empno");
        System.out.println(ReqFac);
        try
        {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");
PreparedStatement h=con.prepareStatement("select * from newreq where reqfac = ?");
h.setString(1, ReqFac);
ResultSet rs=h.executeQuery();

while(rs.next())
{
    String id=rs.getString("id"); 
String stmail=rs.getString("stmail");
    %>
    <tr>
    <td><%=rs.getString("stmail")%></td>
    <td><%=rs.getString("subject")%></td>
    <td><%=rs.getTime("timeslot")%></td>
    <td><%=rs.getDate("doa")%></td>
    <td><%=rs.getString("comments")%></td>
    <td><%=rs.getString("reqfac")%></td>
    <td><a href="confirmreq.jsp?id=<%=id%>&stmail=<%=stmail%>">Confirm</a></td>
    <td><a href="rejectreq.jsp?id=<%=id%>&stmail=<%=stmail%>">Reject</a></td>
    </tr>
    <%
        }
    %>
    </table>
     
            <%
                rs.close();
                con.close();    
}
 catch(Exception e)
 {
     e.printStackTrace();
 }
%>
        </form>
     </div>
 </body></html>          