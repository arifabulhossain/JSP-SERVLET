<%-- 
    Document   : insertdb
    Created on : Apr 18, 2019, 3:59:00 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
      
        <title>insert operation</title>
    </head>
    <body>
          <c:if test="${ empty param.pname or empty param.qty}">
            <c:redirect url="insert.jsp" >
                <c:param name="errMsg" value="Please Enter Product and Quantity" />
            </c:redirect>
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/jstlcrud"
                           user="root"  password="1234"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO product(pname, quantity) VALUES (?,?);
            <sql:param value="${param.pname}" />
            <sql:param value="${param.qty}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="insert.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>
