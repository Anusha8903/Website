
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="details.data" %>
<%@include file="dbcon.jsp" %>
<%@include file="nav3.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
                      ArrayList<data>dlist=db.selectAllTranscation();
                      %>
                      <table class="ta_data">
                      <tr><th>Book Id</th><th>Title</th><th>Borrower Name</th><th>Borrower Id</th><th>Transcation Id</th><th>Borrow Date</th><th>Due Date</th><th>Return Date</th></tr>
                           <%
                             if(!dlist.isEmpty()){
                                  for(data da:dlist){
                              
                          %>
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
            }
                 else{
                  out.print("<tr><td colspan='8'>Data Not Found</td></tr>");
}
%>
                  
    </body>
</html>

