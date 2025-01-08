
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="details.data" %>
<%@include file="dbcon.jsp" %>
<%@include file="nav.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
      <%
             if(request.getParameter("bookid")!=null){
                  if(request.getParameter("bookid")!=null && request.getParameter("title")!=null && request.getParameter("author")!=null && request.getParameter("pubyear")!=null && request.getParameter("avaliablitystatus")!=null){
                 %>
                  <jsp:useBean id="u" class="details.data"/>
        <jsp:setProperty   name="u" property="*"/>
        <%
           
       int i=db.updateBook(u);
                      if(i>0)
                      {
                          out.print("updated");
                      }
                      else{
                          out.print("not updated");
                      }
        }
                      else{
                              int bookid=Integer.parseInt(request.getParameter("bookid"));
                              data da=db.selectBook(bookid);
                              if(da!=null){
                              
        %>
        <h1>UPDATE BOOK</h1>
        <h3>YOU ARE UPDATING THE BOOK<%=da.getBookid()%></h3>
         <form method="post" action="">
             <input type="hidden" name="bookid" value="<%=da.getBookid()%>">
                    <table align="center">
                        <tr><td>Name</td>
                    <td><input type="text" name="title" value="<%=da.getTitle()%>"></td></tr>
                        <tr><td><input type="submit" value="UpdateBook"></td></tr>
                 
             </table>
         </form>
                        <%
                        }
                        }
}
else{
%>
<h1>select the book to update</h1>
<form method="post" action="">
    <table align="center">
        <tr><td>ID</td>
                    <td><input type="number" name="bookid"></td></tr>
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
