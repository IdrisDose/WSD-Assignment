<%-- 
    Document   : login_action
    Created on : 28/05/2017, 6:53:40 PM
    Author     : Idris
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
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
    %>
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplicationBookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="userPath" value="<%=userPath%>"/>
    </jsp:useBean>
    <body>
        <jsp:include page="includes/nav.jsp"/>
        <div class="container">
            <h1>Login</h1>
            <%
                Users users = bookApp.getUsers();
                User user = users.login(email,pwd);
                if(user!=null){ 
                session.setAttribute("user",user);
            %>
                <p>You have already registered, please wait.</p>
                <p>If you have not been redirected, please <a href="index.jsp">click here</a>.</p>
                
                <script>
                    setTimeout(function() {
                        document.location = "login.jsp";
                    }, 3000); // <-- this is the delay in milliseconds
                </script>
            <% } else { %>
                <p>I'm sorry, No user matching those credentials exist, please either try logging in again or registering.</p>
                <p><a class="btn btn-default" href="login.jsp">Login</a> <a class="btn btn-default"href="register.jsp">Register</a></p>
            <% }%>
        
        </div>
    </body>
</html>
