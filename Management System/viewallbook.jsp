<%-- 
    Document   : viewallbook
    Created on : 12 Nov, 2023, 3:57:09 PM
    Author     : 3520C i3(12)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="details.data" %>
<%@include file="dbcon.jsp" %>
<%@include file="nav.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
                      ArrayList<data>dlist=db.selectAllBook();
                      %>
                      <table class="ta_data">
                                                  <tr><th>Book Id</th><th>Title</th><th>Author</th><th>Puublication Year</th><th>Availiblity Status</th></tr>
                           <%
                             if(!dlist.isEmpty()){
                                  for(data da:dlist){
                              
                          %>
                          <tr>
                              <td><%=da.getBookid()%></td>
                               <td><%=da.getTitle()%></td>
                                  <td><%=da.getAuthor()%></td>
                                  <td><%=da.getPubyear()%></td>
                                  <td><%=da.getPubyear()%></td>
                          </tr>
                          <% 
            }
            }
                 else{
                  out.print("<tr><td colspan='5'>Data Not Found</td></tr>");
}
%>
                  
    </body>
</html>

