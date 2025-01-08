<%-- 
    Document   : addtranscation
    Created on : 13 Nov, 2023, 9:49:27 AM
    Author     : 3520C i3(12)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="details.data"%>
<%@include file="dbcon.jsp" %>
<%@include file="nav3.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>ADD TRANSCATION</h1>
        <form method="post" action="">
            <table align="center">
                
                
                 
                  <tr><td>Book Id</td>
                    <td><input type="text" name="bookid"></td></tr>
                 <tr><td>Title</td>
                    <td><input type="text" name="title"></td></tr>
                  <tr><td>Borrower Name</td>
                    <td><input type="text" name="borrowername"></td></tr>
                  <tr><td>Borrower Id</td>
                    <td><input type="number" name="borrowerid"></td></tr>
                   <tr><td>Transcation Id</td>
                    <td><input type="number" name="transcationid"></td></tr>
                  <tr><td>Due Date</td>
                    <td><input type="number" name="duedate"></td></tr>
                  <tr><td>Return Date</td>
                    <td><input type="number" name="returndate"></td></tr>
                  
                  <tr><td><input type="submit" value="AddBooks"></td></tr>
                  <%
                  if(request.getParameter("transcationid")!=null)
                  {
                  %>
                  <jsp:useBean id="u" class="details.data"></jsp:useBean>
        <jsp:setProperty property="*" name="u"/>
                  <%
                  try{
                      int a=db.addTranscation(u);
                      if(a>0)
                      {
                          out.print("inserted");
                      }
                      else{
                          out.print("not inserted");
                      }
}
                  catch(Exception e)
{
    out.print("not inserted with error"+e.getMessage());
}
   }  
%>

                  
                  <div>
                      <p>Available Transcation</p>
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
                  </div>
            </table>
        </form>
    </body>
</html>
