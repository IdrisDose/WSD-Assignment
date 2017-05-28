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

        <title>WSD Airline</title>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="style.css" /> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
        </style>

    </head>
    <%
        String userPath = application.getRealPath("WEB-INF/users.xml");
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String name = fname+" "+lname;
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        String dob = request.getParameter("dob");
    %>
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="userPath" value="<%=userPath%>"/>
    </jsp:useBean>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-send"></span>WSD Airline</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span>Sign up </a></li>
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"  ></span>Login</a></li>
                </ul>
            </div>
        </nav>
        <h1>Registration</h1>
    <%
        Users users = bookApp.getUsers();
        out.println(users.getList().size());
        if(users.userExists(email, pwd)){
    %>
    <p> You already exist. Please try logging in.<br />
        <a href="login.jsp">Click Here!</a> to login.
    </p>
    <%
        } else {
            int id = users.getList().size()+1;
            User user = new User(id,name,email,pwd,dob,"false");
            users.getList().add(user);
            
            bookApp.updateUsersXML(users, userPath);
    %>
        <p>You have been registered <a href="login.jsp">Click Here!</a> to login.</p>
        
    <%
        }
    %>
    </body>
</html>
