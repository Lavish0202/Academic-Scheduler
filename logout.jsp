<%-- 
    Document   : logout
    Created on : 5 Feb, 2018, 11:32:51 AM
    Author     : HP Laptop
--%>

<%
session.invalidate();
response.sendRedirect("home.jsp");
%>