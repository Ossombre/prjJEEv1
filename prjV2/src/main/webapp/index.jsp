<%-- 
    Document   : index
    Created on : 25 oct. 2019, 09:20:25
    Author     : hadri
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <form  name ='myform' action='controller.jsp'>
            Login:<input type='text' name='nameField'><br/>
            Password:<input type='text' name='pwdField'><br/>
            <input type='submit' name='ok' value='ok'>
        </form>
        <c:if test="${param.Wrong != null}">
            <c:choose>
                <c:when test="${param.Wrong == 'true'}">
                    <c:out value="${'Connection failed! Verify your login/password and try again.'}"/>
                </c:when>
                <c:when test="${param.Wrong == 'empty'}">
                    <c:out value="${'You must enter values in both fields.'}"/>
                </c:when>
            </c:choose>
        </c:if>
</body>
</html>