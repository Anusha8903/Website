<%-- 
    Document   : viewtranscation
    Created on : 13 Nov, 2023, 10:16:03 AM
    Author     : 3520C i3(12)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="details.data" %>
<%@include file="dbcon.jsp" %>
<%@include file="nav3.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>VIEW TRANSCATION DATA</h1>
        <form method="post" action="">
            <table align="center">
               <tr><td>ID</td>
                    <td><input type="number" name="transcationid"></td></tr>
                 <tr><td><input type="submit" value="viewTranscation"></td></tr>
                <%
                     
                  if(request.getParameter("transcationid")!=null){
                 int transcationid=Integer.parseInt(request.getParameter("transcationid"));
                    data da=db.selectBook(transcationid);
                   %>
                <table class="ta_data">
                          <tr><th>Book Id</th><th>Title</th><th>Borrower Name</th><th>Borrower Id</th><th>Transcation Id</th><th>Borrow Date</th><th>Due Date</th><th>Return Date</th></tr>
                          <%
                          if(da!=null){%>
                         <tr>
                              <td><%=da.getBookid()%></td>
                               <td><%=da.getTitle()%></td>
                                  <td><%=da.getBorrowername()%></td>
                                  <td><%=da.getBorrowerid()%></td>
                                  <td><%=da.getTranscationid()%></td>
                                  <td><%=da.getBorrowdate()%></td>
                                  <td><%=da.getDuedate()%></td>
                                  <td><%=da.getReturndate()%></td>
                              
                          </tr>
                           <% 
            }
            
                  else{
                   out.print("<tr><td colspan='8'> Data Not Found</td></tr>");
}
%>
                </table>
               <%}
               %>
        </form>
    </body>
</html>
