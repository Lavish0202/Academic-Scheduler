<%-- 
    Document   : REQUESTFORM
    Created on : 5 Feb, 2018, 11:45:18 AM
    Author     : Dell PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REQUEST FORM</title>
    </head>
    <body>
        <div id="header">
           
<form method="post" action="requestform1.jsp">
        <h1>Request Form</h1>
        <table align="center" cellpaddding="5" cellspacing="10"> 
           <tr><th>Student Email</th>
                <td>
                    <input type="email" name="stmail" id="stmail" required=""/>
   
                </td>    
                    
            </tr>
            <tr><th>Subject</th>
                <td>
                    <input type="varchar" name="subject" id="subject" required=""/>
                </td>    
                
            </tr>
            <tr><th>Requested Faculty</th>
                <td>
                    <input type="varchar" name="reqfac" id="reqfac" placeholder="Emp No" required=""/>
                 </td>    
                
            </tr>
            <tr>
                <th>Time Slot</th>
                <td>
                <input type="time" name="timeslot" id="timeslot" required=""/>
                 </td>
                 </tr>
                 <tr>
                     <th>Date of Appointment</th>
                     <td>
                         <input type="date" name="doa" id="doa" required=""/>
                                    </td>
                 </tr>
                 <tr>
                     <th>Comments</th>
                     <td>   
                         <input type="textarea width='100' height='100'" name="comments" id="Comments" placeholder="*Optional"/> 
                  
                     </td>  
                 </tr>  
                 <tr>
<th colspan="2"><input type="submit" value="Submit">
<input type="reset" value=" Cancel "></th>
                 </tr></table></form>

    </body>
</html>
