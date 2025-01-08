<%-- 
    Document   : viewallborrower
    Created on : 12 Nov, 2023, 5:45:39 PM
    Author     : 3520C i3(12)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="details.data" %>
<%@include file="dbcon.jsp" %>
<%@include file="nav2.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
                      ArrayList<data>dlist=db.selectAllBorrower();
                      %>
                      <table class="ta_data">
                                                 <tr><th>Borrower Id</th><th>Borrower Name</th><th>Borrower Contact</th></tr>
                           <%
                             if(!dlist.isEmpty()){
                                  for(data da:dlist){
                              
                          %>
                           <tr>
                              <td><%=da.getBorrowerid()%></td>
                               <td><%=da.getBorrowername()%></td>
                                  <td><%=da.getBorrowercontact()%></td>
                                  
                          </tr>
                          <% 
            }
            }
                 else{
                  out.print("<tr><td colspan='3'>Data Not Found</td></tr>");
}
%>
                  
    </body>
</html>


