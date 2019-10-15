<%-- 
    Document   : controller
    Created on : 15 oct. 2019, 09:23:27
    Author     : hadri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%--import User--%>

<%
    //User entered = new User();
    String login = request.getParameter("nameField");
    String pwd = request.getParameter("pwdField");
    if (login.trim().equals("") || pwd.trim().equals(""))
        request.getRequestDispatcher("index.jsp?Wrong=empty").forward(request, response);
//    ArrayList<User> userList = new ArrayList<User>();
    boolean admin = false;
//        User user = new User();
//        user.setName(rs.getString("LOGIN"));
//        user.setPwd("1234");
        //userList.add(user);
    if (login.equals("admin") && pwd.equals("admin")) {
        admin = true;
        session.setAttribute("kUser", admin);
        request.getRequestDispatcher("listEmployees.jsp").forward(request, response);
    }
    else if (login.equals("empl") && (pwd.equals("empl"))) {
        session.setAttribute("kUser", admin);
        request.getRequestDispatcher("listEmployees.jsp").forward(request, response);
    }
    response.sendRedirect("index.jsp?Wrong=true");
    //session.setAttribute("kListUsers", userList);
    //response.sendRedirect("welcome.jsp");
%>
