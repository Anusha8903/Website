<%--
    Document   : nav
    Created on : 13 Nov, 2023, 10:22:04 AM
    Author     : 3520C i3(12)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            if(window.history.replaceState){
                window.history.replaceState(null,null,window.location.href);
            }
        </script>
        <style>
             body{
            background-image: url('library/pexels-stasknop-1340588_1.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
            h1{
                text-align: center;
            }
            
            /**ul{
                background-color: yellow;
                padding: 10px;
            }
            ul li{
                list-style: none;
                display: inline;
                padding: 10px;
            }
            ul li:hover{
                background-color: aqua;
            }
            li a{
                text-decoration: none;
                color:hotpink;
            }
            **/
            table.ta_data{
                margin-left: 50%;
            }
            table.ta_data,table.ta_data tr,td,th{
                border-collapse: collapse;
                border-style: solid;
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <h1>LIBRARY MANAGEMENT SYSTEM</h1>
        
        <ul>
            <h3>BOOK DETAILS</h3>
            <li><a href="addbooks.jsp">ADD BOOK</a></li>
            <li><a href="deletebooks.jsp">DELETE BOOK</a></li>
            <li><a href="updatebooks.jsp">UPDATE BOOK</a></li>
            <li><a href="viewbook.jsp">VIEW BOOK</a></li>
            <li><a href="viewallbook.jsp">VIEW ALL BOOK</a></li>
            
        </ul>
        
        <br>
        
       
    </body>
</html>
