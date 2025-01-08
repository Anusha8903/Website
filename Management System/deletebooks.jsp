<%-- 
    Document   : deletebooks
    Created on : 12 Nov, 2023, 3:19:27 PM
    Author     : 3520C i3(12)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbcon.jsp" %>

<%@include file="nav.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>DELETE BOOKS</h1>
        <form method="post" action="">
            <table align="center">
                <tr><td>ID</td>
                    <td><input type="number" name="bookid"></td></tr>
                 <tr><td><input type="submit" value="DeleteBook"></td></tr>
                  <%
                      try
                      {
                          
                      
                  
                  if(request.getParameter("bookid")!=null)
                  {
                 int bookid=Integer.parseInt(request.getParameter("bookid"));
                   int a=db.deleteBooks(bookid);
                      if(a>0)
                      {
                          out.print("deleted");
                      }
                      else{
                          out.print("not deleted");
                      }
                  }
                      }
                      catch(Exception e)
                      {
                          e.getMessage();
                      }
                  
                  %>
                   </table>
        </form>
    </body>
</html>
