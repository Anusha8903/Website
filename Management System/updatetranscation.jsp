
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
      <%
             if(request.getParameter("transcationid")!=null){
                  if(request.getParameter("transcationid")!=null && request.getParameter("bookid")!=null && request.getParameter("title")!=null && request.getParameter("borrowedate")!=null && request.getParameter("duedate")!=null  && request.getParameter("returndate")!=null && request.getParameter("borroweid")!=null && request.getParameter("borrowername")!=null){
                 %>
                  <jsp:useBean id="u" class="details.data"/>
        <jsp:setProperty   name="u" property="*"/>
        <%
           
       int i=db.updateTranscation(u);
                      if(i>0)
                      {
                          out.print("updated");
                      }
                      else{
                          out.print("not updated");
                      }
        }
                      else{
                              int transcationid=Integer.parseInt(request.getParameter("transcationid"));
                              data da=db.selectTranscation(transcationid);
                              if(da!=null){
                              
        %>
        <h1>UPDATE TRANSCATION</h1>
        <h3>YOU ARE UPDATING THE TRANSCATION<%=da.getTranscationid()%></h3>
         <form method="post" action="">
             <input type="hidden" name="transcationid" value="<%=da.getTranscationid()%>">
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
<h1>select the transcation to update</h1>
<form method="post" action="">
    <table align="center">
        <tr><td>TRANSCATIONID</td>
                    <td><input type="number" name="transcationid"></td></tr>
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
