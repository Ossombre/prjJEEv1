<%-- 
    Document   : controller
    Created on : 25 oct. 2019, 09:22:23
    Author     : hadri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>


<jsp:useBean id="kUser" scope="session" class="com.mycompany.prjv2.Account"/>
<jsp:setProperty name="kUser" param="nameField" property="login"/>
<jsp:setProperty name="kUser" param="pwdField" property="pwd"/>
<c:if test="${(fn:trim(kUser.login) == '') || (fn:trim(kUser.pwd) == '')}">
    <c:redirect url="index.jsp">
        <c:param name="Wrong" value="empty"/>
    </c:redirect>
</c:if>
<c:set var="admin" value="false"/>
<c:choose>
    <c:when test="${(kUser.login == 'admin') && (kUser.pwd == 'admin')}">
        <c:set var="admin" value="true"/>
        <c:redirect url="listEmployeesServ">
            <c:param name="kUser" value="${admin}"/>
        </c:redirect>
    </c:when>
    <c:when test="${(kUser.login == 'empl') && (kUser.pwd == 'empl')}">
        <c:redirect url="listEmployeesServ">
            <c:param name="kUser" value="${admin}"/>
        </c:redirect>
    </c:when>
</c:choose>
<c:redirect url="index.jsp">
    <c:param name="Wrong" value="true"/>
</c:redirect>

