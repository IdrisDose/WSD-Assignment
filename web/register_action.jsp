<%-- 
    Document   : register_action
    Created on : 28/05/2017, 6:53:40 PM
    Author     : nzdos_000
--%>

<%@page import="uts.wsd.dataLayer.*"%>
<%@page import="uts.wsd.businessLayer.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String name = fname+" "+lname;
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        String dob = request.getParameter("dob");
        String userPath = application.getRealPath("WEB-INF/users.xml");

        
    %>
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="userPath" value="<%=userPath%>"/>
    </jsp:useBean>
    <body>
        <h1>Hello World!</h1>
        <ul>
            <li>NAME: <%=name%></li>
            <li>EMAIL: <%=email%></li>
            <li>PWORD: <%=pwd%></li>
            <li>DOB: <%=dob%></li>
        </ul>
    </body>
</html>
