

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="details.data"%>
<%@include file="dbcon.jsp"%>
<%@include file="nav2.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
                       
        <h1>VIEW BORROWER DATA</h1>
        <form method="post" action="">
            <table align="center">
               <tr><td>BORROWER ID</td>
                    <td><input type="number" name="borrowerid"></td></tr>
                 <tr><td><input type="submit" value="viewBorrower"></td></tr>
                <%
                     
                  if(request.getParameter("borrowerid")!=null){
                 int borrowerid=Integer.parseInt(request.getParameter("borrowerid"));

                    data da=db.selectBorrower(borrowerid);
                   %>
                <table class="ta_data">
                          
                          <tr><th>Borrower Id</th><th>Borrower Name</th><th>Borrower Contact</th></tr>
                          <%
                          if(da!=null){%>
                        <tr>
                                  <td><%=da.getBorrowerid()%></td>
                                  <td><%=da.getBorrowername()%></td>
                                  <td><%=da.getBorrowercontact()%></td>
                                  
                          </tr>
                           <% 
            }
            
                  else{
                   out.print("<tr><td colspan='3'> Data Not Found</td></tr>");
}
%>
                </table>
               <%}
               %>
        </form>
    
</html>
