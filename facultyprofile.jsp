<%-- 
    Document   : faculty2
    Created on : 4 Feb, 2018, 10:44:58 AM
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
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/x-icon" href="desi1.png">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="mycss.css">
 </head>
<body>
    <div class="container-fluid" style="background-color:#330066;color:#fff;height:200px;">
  <h1>Academic Scheduler</h1>
  <h3>About: Description</h3>
  </div>
<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
  <ul class="nav navbar-nav">
    <li class="active"><a href="facultyprofile.jsp">History</a></li>
    <li><a href="showupdatecal.jsp">Schedule Calendar</a></li>
    <li> <a href="newreq.jsp" >New Requests<span class="badge">5</span></a></li>
    <li><a href="logout.jsp" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-off"></span> Logout 
        </a></li>
     </ul>
</nav>
    
    
    <div id="content" style="height:500px;">
         <%String fname=(String)session.getAttribute("fname");%>
            <h1>Welcome <%out.println(fname);%> </h1>
            <form>
            <table border="2" cellpadding="5">
                <tr>
                    <td>Email</td>
                    <td>Subject</td>
                    <td>Tslot</td>
                    <td>doa</td>
                    <td>comments</td>
                    <td>ID</td>
                </tr>
    <%
        
        String ReqFac=(String)session.getAttribute("empno");
        System.out.println(ReqFac);
      try
        {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");
PreparedStatement h=con.prepareStatement("select * from newreq where reqfac=?");
h.setString(1, ReqFac);
ResultSet rs=h.executeQuery();

while(rs.next())
{
    %>
    <tr>
    <td><%=rs.getString("stmail")%></td>
    <td><%=rs.getString("subject")%></td>
    <td><%=rs.getTime("timeslot")%></td>
    <td><%=rs.getDate("doa")%></td>
    <td><%=rs.getString("comments")%></td>
    <td><%=rs.getString("reqfac")%></td>
    </tr>
    <%
        }
    %>
    <tr><th colspan="6"><input type="submit" value="Clear History">
</th>
</tr></table>
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
   
    
    <div class="Footer" style="background-color: black !important">
                <div class="row">
                    <div class="container-fluid">
                        <div id="footer-content">
                            <div class="col-xs-8 col-md-4 text-center">
                                <h4>Location</h4><hr>
                                <p>Medicaps University,Rau</p>
                            </div>
                            <div class="col-xs-4 col-md-4 text-center">
                                <h4>Working Time</h4><hr>
                                <p>08:00 AM - 5:00 PM</p>
                                 <a class="up-arrow" href="home.jsp" data-toggle="tooltip" title="TO TOP" >
    <span class="glyphicon glyphicon-chevron-up" style=" border-radius: 50%;
          background:  #009900;
    padding: 5px; 
    width: 30px;
    height: 25px;"></span>
  </a>
                            </div>
                            <div class="col-xs-8 col-md-4 text-center">
                                <div id="xs-hr">
                                    <div class="visible-xs">
                                        <hr>
                                    </div>
                                </div>
                                <dl>
                                    <dd><a href="home.jsp" style="color: white">Home</a></dd>
                                    <dd><a href="student.jsp" style="color: white">Student</a></dd>
                                    <dd><a href="faculty.jsp" style="color: white">Faculty</a></dd>
                                    <dd><a href="head.jsp" style="color: white">Head</a></dd>
                                </dl>
                                <div id="social-media-buttons">
                                    <i class="fa fa-facebook"></i>
                                    <i class="fa fa-instagram"></i>
                                </div>
                            </div>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                    <div class="container-fluid">
                        <div class="col-xs-8">
                            <div class="text-right">
                             <h5 class="visible-xs">&copy Lavish Mehta, 2018</h5>
                               
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        
        </div>
    </body>
</html>


