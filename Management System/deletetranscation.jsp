

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbcon.jsp"%>
<%@include file="nav3.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
         <h1>DELETE TRANSCATION</h1>
        <form method="post" action="">
            <table align="center">
                <tr><td>TRANSCATION ID</td>
                    <td><input type="number" name="transcationid"></td></tr>
                 <tr><td><input type="submit" value="DeleteTranscation"></td></tr>
                  <%
                      try
                      {
                          
                      
                  
                  if(request.getParameter("transcationid")!=null)
                  {
                 int transcationid=Integer.parseInt(request.getParameter("transcationid"));
                 int a=db.deleteTranscation(transcationid);
                      if(a>0)
                      {
                          out.print("deleted");
                      }
                      else{
                          out.print("not deleted");
                      }
                  }
                      }
                      catch(Exception e)
                      {
                          e.getMessage();
                      }
                  
                  %>
                   </table>
        </form>
    </body>
</html>
