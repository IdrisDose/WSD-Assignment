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
        String name = fname + " " + lname;
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        String dob = request.getParameter("dob");
    %>
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application"/>
    <body>
        <jsp:include page="includes/nav.jsp"/>
        <div class="container">
            <div class="col-sm-6 col-sm-offset-">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading clearfix"> 
                            <p class="panel-title pull-left">Login</p>	
                        </div>

                        <div class="panel-body">            
                            <%
                                bookApp.populateUsers(userPath);
                                Users users = bookApp.getUsers();
                                if (users.userExists(email)) {
                            %>
                            <p>You have already registered, please wait.</p>
                            <p>If you have not been redirected, please <a href="login.jsp">click here</a>.</p>
                            <% } else {
                                int id = users.getList().size() + 1;
                                User user = new User(id, name, email, pwd, dob, "no", "member");
                                users.getList().add(user);

                                bookApp.updateUsersXML(users, userPath);%>
                            <p>You have been registered, please wait 5 seconds to be sent to Login page.</p>
                            <p>If you have not been redirected, please <a href="login.jsp">click here</a>.</p>
                            <% }%>
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
