<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="details.data"%>
<%@include file="dbcon.jsp"%>
<%@include file="nav2.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ADD BORROWER</h1>
        <form method="post" action="">
            <table align="center">
                <tr><td>Borrower Id</td>
                    <td><input type="text" name="borrowerid"></td></tr>
                <tr><td>Borrowername</td>
                    <td><input type="text" name="borrowername"></td></tr>
                <tr><td>Borrowercontact</td>
                    <td><input type="number" name="borrowercontact"></td></tr>
                <tr><td><input type="submit" value="Add Borrower"></td></tr>
            </table>
        </form>

        <%
            if(request.getParameter("borrowerid") != null) {
                try {
                    data u = new data();
                    u.setBorrowerid(Integer.parseInt(request.getParameter("borrowerid")));
                    u.setBorrowername(request.getParameter("borrowername"));
                    u.setBorrowercontact(Integer.parseInt(request.getParameter("borrowercontact")));

                    int result = db.addBorrower(u);
                    if(result > 0) {
                        out.print("Borrower added successfully!");
                    } else {
                        out.print("Error adding borrower.");
                    }
                } catch(Exception e) {
                    out.print("Error: " + e.getMessage());
                }
            }
        %>

        <div>
            <p>Available Borrowers:</p>
            <%
                ArrayList<data> dlist = db.selectAllBorrower();
            %>
            <table>
                <tr><th>Borrower ID</th><th>Borrower Name</th><th>Borrower Contact</th></tr>
                <%
                    if (!dlist.isEmpty()) {
                        for (data da : dlist) {
                %>
                    <tr>
                        <td><%= da.getBorrowerid() %></td>
                        <td><%= da.getBorrowername() %></td>
                        <td><%= da.getBorrowercontact() %></td>
                    </tr>
                <% 
                        }
                    } else {
                        out.print("<tr><td colspan='3'>No borrowers found.</td></tr>");
                    }
                %>
            </table>
        </div>
    </body>
</html>
