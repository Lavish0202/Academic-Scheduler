<%-- 
    Document   : signup
    Created on : 28 Jan, 2018, 5:01:50 PM
    Author     : HP Laptop
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
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

        </div>
          <div class="content" style="height:500px;">
          <script src="newjs.js" type="text/javascript"  ></script>
          <form method="post" action="newstd.jsp"onsubmit="return validateLogin()">
      
      <div class="form-group">
          <label for="name"  >User Name:</label>
          <input type="text" class="form-control" style="width: 50%;" id="name" name="name" required="" autocomplete="off">
    </div>
    <div class="form-group">
      <label for="mail">Medicaps Email Id:</label>
      <input type="email" class="form-control" style="width: 50%;" id="mail" required="" name="mail" autocomplete="off" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" placeholder="0876IT151001@medicaps.ac.in">
    </div>
      <div class="form-group">
      <label for="pn">Phone No:</label>
      <input type="number" class="form-control" style="width: 50%;" id="pn" required="" name="pn" autocomplete="off" minlength="10" maxlength="10">
    </div>
      <div class="form-group">
      <label for="pass">Enter Password:</label>
      <input type="password" class="form-control" style="width: 50%;" id="pass" required="" autocomplete="off" name="pass">
    </div>
               <div class="form-group">    <label for="br">Branch:</label>
                       <select name="br" id="br" autofocus="" autocomplete="off" required="">
                     <option value="IT-A">IT-A</option>
                     <option value="IT-B">IT-B</option>                                
                     <option value="CS-A">CS-A</option>
                     <option value="CS-B">CS-B</option>
                     <option value="CS-C">CS-C</option>
                     <option value="CS-D">CS-D</option>
                     <option value="CS-E">CS-E</option>
                     </select>
               </div>

    <button type="submit" value="SignUp" class="btn btn-default">Submit</button>
    <button type="reset" value="Cancel" class="btn btn-default">Reset</button>
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

