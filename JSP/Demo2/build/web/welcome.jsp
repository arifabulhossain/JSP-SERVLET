<%-- 
    Document   : welcome
    Created on : Apr 15, 2019, 3:31:14 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

        <%=
            
            "Welcome "+request.getParameter("uname") 
        
        
        %>  
        
       
    </body>
</html>
