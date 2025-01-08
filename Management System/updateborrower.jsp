
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="details.data" %>
<%@include file="dbcon.jsp" %>
<%@include file="nav2.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
      <%
             if(request.getParameter("borrowerid")!=null){
                  if(request.getParameter("borrowerid")!=null && request.getParameter("borrowername")!=null && request.getParameter("borrowercontact")!=null){
                 %>
                  <jsp:useBean id="u" class="details.data"/>
        <jsp:setProperty  name="u" property="*"/>
        <%
           
       int i=db.updateBorrower(u);
                      if(i>0)
                      {
                          out.print("updated");
                      }
                      else{
                          out.print("not updated");
                      }
        }
                      else{
                              int borrowerid=Integer.parseInt(request.getParameter("borrowerid"));
                              data da=db.selectBorrower(borrowerid);
                              if(da!=null){
                              
        %>
        <h1>UPDATE BORROWER</h1>
        <h3>YOU ARE UPDATING THE BORROWER<%=da.getBorrowerid()%></h3>
         <form method="post" action="">
             <input type="hidden" name="borrowerid" value="<%=da.getBorrowerid()%>">
                    <table align="center">
                        <tr><td>Name</td>
                    <td><input type="text" name="name" value="<%=da.getBorrowername()%>"></td></tr>
                        <tr><td><input type="submit" value="UpdateBorrower"></td></tr>
                 
             </table>
         </form>
                        <%
                        }
                        }
}
else{
%>
<h1>select the borrower to update</h1>
<form method="post" action="">
    <table align="center">
        <tr><td>ID</td>
                    <td><input type="number" name="borrowerid"></td></tr>
                 <tr><td><input type="submit" value="view"></td></tr>
    </table>
</form>
<%
    }
%>
<%
%>                  
    </body>
</html>
