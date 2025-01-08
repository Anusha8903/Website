<%-- 
    Document   : nav3
    Created on : 5 Dec, 2023, 5:52:28 PM
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
            <h3>TRANSCATION DETAILS</h3>
            <li><a href="addtranscation.jsp">ADD TRANSCATION</a></li>
            <li><a href="deletetranscation.jsp">DELETE TRANSCATION</a></li>
            <li><a href="updatetransaction.jsp">UPDATE TRANSCATION</a></li>
            <li><a href="viewtranscation.jsp">VIEW TRANSCATION</a></li>
            <li><a href="viewalltranscation.jsp">VIEW ALL TRANSCATION</a></li>
            
        </ul>   
         </body>
</html>
