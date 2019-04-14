<%-- 
    Document   : welcome
    Created on : Apr 15, 2019, 1:53:53 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <!-- scriptlet tag-->
        <% 
        String name = request.getParameter("uname");
       // out.print("welcome to "+name);
        
        
        %>
            
        <%=
            "welcome to "+name
            %>
    </body>
</html>
