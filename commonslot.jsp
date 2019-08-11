<%-- 
    Document   : commonslot
    Created on : 14 Apr, 2018, 2:59:38 PM
    Author     : HP Laptop
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Academic Scheduler</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="icon" type="image/x-icon" href="desi1.png">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="mycss.css">
    
  <style>
        
       
  .button {
  padding: 15px 25px;
  font-size: 12px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color:green;
  border: none;
  border-radius: 12px;
  box-shadow: 0 9px #999;
  width: 70%;
  margin-bottom: 5px;
  margin-top: 5px;
}

.button:hover {background-color: green}

.button:active {
  background-color: green;
  box-shadow: 0 5px #666;
  transform: translateY(3px);
}
</style><script>
$(document).ready(function(){
    $("input.button[value='BOOKED']").css('background-color', 'red');
});
</script>
    </head>
    <body>
         <div class="container-fluid" style="background-color:#330066;color:#fff;height:200px;">
  <h1>Academic Scheduler</h1>
  <h3>About: Description</h3>
  </div>

<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
  <ul class="nav navbar-nav">
    <li class="active"><a href="studentprofile.jsp">Home</a></li>
    <li><a href="doubtschedule.jsp">View Schedule</a></li>
    <li><a href="REQUESTFORM.jsp">Request Doubt</a></li>
    <li><a href="logout.jsp" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-off"></span> Logout 
        </a></li>
     </ul>
</nav>
<%
    Map<String,String> map=new HashMap<String,String>();
    try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","adminl");
String value=request.getParameter("value");
PreparedStatement p=con.prepareStatement("select btn,status from perslot where empid=?");
p.setString(1,value);
ResultSet rs=p.executeQuery();
if(rs.next()){
    do{
    map.put(rs.getString(1),rs.getString(2));
}while(rs.next());
}   
con.close();
}
 catch(Exception e)
 {
     e.printStackTrace();
 }

%>
<div id="content2" style="height :50px;"></div>
<div id="seatStructure" style="height: 500px;">
      <center>
      <table>
  <tr>
    <td></td>
    <td><input type="hidden" value="8:30-9:20" name="t1">8:30-9:20</td>
    <td>9:30-10:20</td>
    <td>10:30-11:20</td>
    <td>11:30-12:15</td> 
    <td>1:15-2:10</td>
    <td>2:15-3:00</td>
    <td>3:10-4:00</td>
    <td>4:10-5:00</td>
</tr>  
<tr>
    <td><input type="hidden" value="MONDAY" name="mon">MONDAY</td>
    <td><input type="text" id="" name="b00" value="<%=map.get("b00")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b01" value="<%=map.get("b01")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b02" value="<%=map.get("b02")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b03" value="<%=map.get("b03")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b04" value="<%=map.get("b04")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b05" value="<%=map.get("b05")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b06" value="<%=map.get("b06")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b07" value="<%=map.get("b07")%>" readonly="false" class="button"></td>
</tr>
<tr>
    <td><input type="hidden" value="TUESDAY" name="mon">TUESDAY</td>
    <td><input type="text" id="" name="b10" value="<%=map.get("b10")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b11" value="<%=map.get("b11")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b12" value="<%=map.get("b12")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b13" value="<%=map.get("b13")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b14" value="<%=map.get("b14")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b15" value="<%=map.get("b15")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b16" value="<%=map.get("b16")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b17" value="<%=map.get("b17")%>" readonly="false" class="button"></td>
</tr>
<tr>
    <td><input type="hidden" value="WEDNESDAY" name="mon">WEDNESDAY</td>
    <td><input type="text" id="" name="b20" value="<%=map.get("b20")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b21" value="<%=map.get("b21")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b22" value="<%=map.get("b22")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b23" value="<%=map.get("b23")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b24" value="<%=map.get("b24")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b25" value="<%=map.get("b25")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b26" value="<%=map.get("b26")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b27" value="<%=map.get("b27")%>" readonly="false" class="button"></td>
</tr>
<tr>
    <td><input type="hidden" value="THURSDAY" name="mon">THURSDAY</td>
    <td><input type="text" id="" name="b30" value="<%=map.get("b30")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b31" value="<%=map.get("b31")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b32" value="<%=map.get("b32")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b33" value="<%=map.get("b33")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b34" value="<%=map.get("b34")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b35" value="<%=map.get("b35")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b36" value="<%=map.get("b36")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b37" value="<%=map.get("b37")%>" readonly="false" class="button"></td>
</tr>
<tr>
    <td><input type="hidden" value="FRIDAY" name="mon">FRIDAY</td>
    <td><input type="text" id="" name="b40" value="<%=map.get("b40")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b41" value="<%=map.get("b41")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b42" value="<%=map.get("b42")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b43" value="<%=map.get("b43")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b44" value="<%=map.get("b44")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b45" value="<%=map.get("b45")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b46" value="<%=map.get("b46")%>" readonly="false" class="button"></td>
    <td><input type="text" id="" name="b47" value="<%=map.get("b47")%>" readonly="false" class="button"></td>
</tr>


</table>

      </center>
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
