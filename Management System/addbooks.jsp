
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="details.data"%>
<%@include file="dbcon.jsp" %>
<%@include file="nav.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>ADD BOOK</h1>
        <form method="post" action="">
            <table align="center">
                
                
                 
                  <tr><td>Book Id</td>
                    <td><input type="text" name="bookid"></td></tr>
                 <tr><td>Title</td>
                    <td><input type="text" name="title"></td></tr>
                  <tr><td>Author</td>
                    <td><input type="text" name="author"></td></tr>
                   <tr><td>Publication Year</td>
                    <td><input type="text" name="publication"></td></tr>
                  <tr><td>Availablity Status</td>
                    <td><input type="text" name="avaliablitystatus"></td></tr>
                  
                  <tr><td><input type="submit" value="AddBooks"></td></tr>
                  <%
                  if(request.getParameter("bookid")!=null)
                  {
                  %>
                  <jsp:useBean id="u" class="details.data"></jsp:useBean>
        <jsp:setProperty property="*" name="u"/>
                  <%
                  try{
                      int a=db.addBooks(u);
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
                      <p>Available Books</p>
                      <%
                      ArrayList<data>dlist=db.selectAllBook();
                      %>
                      <table class="ta_data">
                          <tr><th>Book Id</th><th>Title</th><th>Author</th><th>Publication Year</th><th>Availiblity Status</th></tr>
                          <%
                             if(!dlist.isEmpty()){
                                  for(data da:dlist){
                              
                          %>
                          <tr>
                              <td><%=da.getBookid()%></td>
                               <td><%=da.getTitle()%></td>
                                  <td><%=da.getAuthor()%></td>
                                  <td><%=da.getPubyear()%></td>
                                  <td><%=da.getAvaliablitystatus()%></td>
                          </tr>
                          <% 
            }
            }
                 else{
                  out.print("<tr><td colspan='5'>Data Not Found</td></tr>");
}
%>
                  </div>
            </table>
        </form>
    </body>
</html>
