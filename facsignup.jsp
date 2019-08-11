<%-- 
    Document   : facsignup
    Created on : 4 Feb, 2018, 10:42:30 AM
    Author     : Dell PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
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
    <li><a href="home.jsp">Home</a></li>
    <li> <a href="student.jsp" >Student</a></li>
     </ul>
</nav>
<div id="content" style="height:500px;">
         <form method="post" action="newfaculty.jsp">
<table align="center" cellpadding="5">
<tr>
    <th>Name:</th><td><input type="text" name="fname" id="fname" required="" /></td>
</tr>
<tr>
     <th>Employee ID:</th><td><input type="text" name="empno" id="empno" required="" /></td>
</tr>
<tr>
    <th>Phone number:</th><td><input type="number" name="fpn" id="fpn" required="" /></td>
</tr>
<tr>
    <th>Email-ID:</th><td><input type="email" name="fmail" id="fmail" placeholder="id@medicaps.ac.in" required="" /></td>
</tr>

    <tr>
     <th>Department:</th>
                       
    <td> <select name="dept" id="dept" autofocus="" autocomplete="off" required="">
                     <option value="IT">IT</option>
                     <option value="CS">CS</option>                                
                     </select>
                       </td>
</tr>
<tr>
    <th>Enter Password</th><td><input type="password" name="fpass" id="fpass" required="" /></td>
</tr>
<tr>
    <th colspan="2"><input type="submit" value="Sign Up">
<input type="reset" value="Cancel"></th>
</tr>
</table>
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
                            <div class="col-xs-12 col-md-4 text-center">
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
                        <div class="col-xs-12">
                            <div class="text-right">
                                <h4 class="hidden-xs">&copy Lavish Mehta, 2018</h4>
                                <h5 class="visible-xs">&copy Lavish Mehta, 2018</h5>
                               
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        
        </div>
    </body>
</html>

    </body>
    
</html>



    
