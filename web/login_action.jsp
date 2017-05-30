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

    <body>
        <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application"></jsp:useBean>
        <jsp:include page="includes/nav.jsp"/>

        <%
            bookApp.populateUsers(userPath);
        %>
        <div class="container">
            <div class="col-sm-6 col-sm-offset-">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading clearfix"> 
                            <p class="panel-title pull-left">Login</p>	
                        </div>

                        <div class="panel-body">            
                            <%
                                Users users = bookApp.getUsers();
                                User user = users.login(email, pwd);
                                boolean isMember = user.getStatus().equals("member");
                                
                                
                                if (user != null&&isMember) {
                                    session.setAttribute("user", user);
                                    response.sendRedirect("search.jsp");
                                } else { %>
                                    <p>I'm sorry, No user matching those credentials exist, please either try logging in again or registering.</p>
                                <p><a class="btn btn-default" href="login.jsp">Login</a> <a class="btn btn-default"href="register.jsp">Register</a></p>
                            <% }%>
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
