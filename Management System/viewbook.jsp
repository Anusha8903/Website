

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="details.data" %>
<%@include file="dbcon.jsp" %>
<%@include file="nav.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>VIEW EMPLOYEE DATA</h1>
        <form method="post" action="">
            <table align="center">
               <tr><td>ID</td>
                    <td><input type="number" name="bookid"></td></tr>
                 <tr><td><input type="submit" value=" viewBook"></td></tr>
                <%
                     
                  if(request.getParameter("bookid")!=null){
                 int bookid=Integer.parseInt(request.getParameter("bookid"));
                    data da=db.selectBook(bookid);
                   %>
                <table class="ta_data">
                          <tr><th>Book Id</th><th>Title</th><th>Author</th><th>Publication Year</th><th>Availiblity Status</th></tr>
                          <%
                          if(da!=null){%>
                        <tr>
                                  <td><%=da.getBookid()%></td>
                                  <td><%=da.getTitle()%></td>
                                  <td><%=da.getAuthor()%></td>
                                  <td><%=da.getPubyear()%></td>
                                  <td><%=da.getAvaliablitystatus()%></td>
                          </tr>
                           <% 
            }
            
                  else{
                   out.print("<tr><td colspan='5'> Data Not Found</td></tr>");
}
%>
                </table>
               <%}
               %>
        </form>
    </body>
</html>
