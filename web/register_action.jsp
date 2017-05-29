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
        <jsp:include page="includes/nav.jsp"/>
        <div class="container">
            <h1>Registration</h1>
            <%
                Users users = bookApp.getUsers();
                if(users.userExists(email)){ 
            %>
                <p>You have already registered, please wait.</p>
                <p>If you have not been redirected, please <a href="login.jsp">click here</a>.</p>
            <% } else {
                int id = users.getList().size()+1;
                User user = new User(id,name,email,pwd,dob,"no","member");
                users.getList().add(user);

                bookApp.updateUsersXML(users, userPath);%>
                <p>You have been registered, please wait 5 seconds to be sent to Login page.</p>
                <p>If you have not been redirected, please <a href="login.jsp">click here</a>.</p>
           <% } %>
        </div>
    </body>
</html>
