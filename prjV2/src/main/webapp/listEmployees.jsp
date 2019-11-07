<%-- 
    Document   : listEmployees
    Created on : 25 oct. 2019, 10:51:44
    Author     : hadri
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.mycompany.prjv2.Employee"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>



<jsp:useBean id="listEmployees" scope="session" class="java.util.ArrayList"/>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/prjjeedbv2?zeroDateTimeBehavior=convertToNull"
                   user="root"/>
<sql:query dataSource="${db}" var="rs">
    SELECT * FROM EMPLOYEES;
</sql:query>
<c:forEach var="list" items="${rs.rows}">
    <jsp:useBean id="tmp" class="Employee"/>
    <jsp:setProperty name="tmp" param="${list.fName}" property="fName"/>
    <jsp:setProperty name="tmp" param="${list.lName}" property="lName"/>
    <jsp:setProperty name="tmp" param="${list.hPhone}" property="hPhone"/>
    <jsp:setProperty name="tmp" param="${list.mPhone}" property="mPhone"/>
    <jsp:setProperty name="tmp" param="${list.pPhone}" property="pPhone"/>
    <jsp:setProperty name="tmp" param="${list.address}" property="address"/>
    <jsp:setProperty name="tmp" param="${list.postCode}" property="postCode"/>
    <jsp:setProperty name="tmp" param="${list.city}" property="city"/>
    <jsp:setProperty name="tmp" param="${list.mail}" property="mail"/>
    ${listEmployees.add(tmp)}
</c:forEach>
        <%--
            Connection conn;
            Statement stmt;
            ResultSet rs;
            ArrayList<Employee> listEmployees = new ArrayList();
            try {
                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Project v1", "Cersei", "Lannister");
                
                try {
                    stmt = conn.createStatement();
                    try {
                        rs = stmt.executeQuery("SELECT * FROM EMPLOYEES");
                        
                        while(rs.next()){
                            Employee tmp = new Employee();
                            tmp.setfName(rs.getString("fName"));
                            tmp.setlName(rs.getString("lName"));
                            tmp.sethPhone(rs.getString("hPhone"));
                            tmp.setmPhone(rs.getString("mPhone"));
                            tmp.setpPhone(rs.getString("pPhone"));
                            tmp.setAddress(rs.getString("address"));
                            tmp.setPostCode(rs.getString("postCode"));
                            tmp.setCity(rs.getString("city"));
                            tmp.setMail(rs.getString("mail"));
                            listEmployees.add(tmp);
                        }
                        
                        if (listEmployees.size()==0){
                            request.getRequestDispatcher("DisplayNull.jsp").forward(request, response);
                        }
                        
                        request.setAttribute("listEmployees",listEmployees);
                        request.getRequestDispatcher("DisplayTable.jsp").forward(request, response);
                    } 
                    catch (SQLException e) {
                        System.out.println(e.getMessage());
                    }
                } catch (SQLException e) {
                    System.out.println(e.getMessage());
                }
                
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
            
        --%>