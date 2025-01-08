<%-- 
    Document   : dbcon
    Created on : 12 Nov, 2023, 5:50:30 PM
    Author     : 3520C i3(12)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,details.DataBaseOperation3" errorPage="conerr.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","123");
        DataBaseOperation3 db=new DataBaseOperation3(con);
        %>
     
    </body>
</html>
