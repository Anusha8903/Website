<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbcon.jsp"%>
<%@include file="nav2.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Borrower</title>
    </head>
    <body>
        <h1>DELETE BORROWER</h1>
        <form method="post" action="">
            <table align="center">
                <tr><td>Borrower ID</td>
                    <td><input type="number" name="borrowerid"></td></tr>
                <tr><td><input type="submit" value="Delete Borrower"></td></tr>
            </table>
        </form>

        <%
            if(request.getParameter("borrowerid") != null) {
                try {
                    int borrowerid = Integer.parseInt(request.getParameter("borrowerid"));
                    int result = db.deleteBorrower(borrowerid);
                    if(result > 0) {
                        out.print("Borrower deleted successfully!");
                    } else {
                        out.print("Error deleting borrower.");
                    }
                } catch(Exception e) {
                    out.print("Error: " + e.getMessage());
                }
            }
        %>
    </body>
</html>
