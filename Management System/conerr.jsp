<%-- 
    Document   : conerr
    Created on : 12 Nov, 2023, 12:04:59 PM
    Author     : 3520C i3(12)
--%>

<%@page import="java.lang.Exception"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <h1>Connection Error</h1>
        <p><%=exception%></p>
        
    </body>
</html>
