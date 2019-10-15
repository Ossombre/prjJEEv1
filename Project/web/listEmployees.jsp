<%-- 
    Document   : bienvenue
    Created on : 19 sept. 2019, 10:40:26
    Author     : JAA
--%>
<%@page import="web.lsi.Employee"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenue - LSI - M1</title>
    </head>
    <body>
        <%
            Connection conn;
            Statement stmt;
            ResultSet rs;
            ArrayList<Employee> listEmployee = new ArrayList();

            try {
                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Project v1", "Cersei", "Lannister");
                
                try {
                    stmt = conn.createStatement();
                    try {

                        rs = stmt.executeQuery("SELECT * FROM Employees");
                        
                        while(rs.next()){
                            Employee tmp = new Employee();
                            tmp.setfName(rs.getString("fName"));
                            tmp.setlName(rs.getString("lName"));
                            tmp.setlName(rs.getString("hPhone"));
                            tmp.setlName(rs.getString("mPhone"));
                            tmp.setlName(rs.getString("pPhone"));
                            tmp.setlName(rs.getString("address"));
                            tmp.setlName(rs.getString("postCode"));
                            tmp.setlName(rs.getString("city"));
                            tmp.setlName(rs.getString("mail"));
                            listEmployee.add(tmp);
                        }
                        
                        session.setAttribute("listEmployees",listEmployee);
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
            
        %>
        
        
    </body>
</html>
