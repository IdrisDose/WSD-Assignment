<%@page import="uts.wsd.dataLayer.Users"%>
<%@page import="uts.wsd.businessLayer.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>WSD Airline</title>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="style.css"/>     
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
        </style>

    </head>
    <body>
        <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application"></jsp:useBean>
        <jsp:include page="includes/nav.jsp"/>
        <% 
          String userPath = application.getRealPath("WEB-INF/users.xml");
          bookApp.populateUsers(userPath);
          Users users = bookApp.getUsers();
            /*name="staff"/>
            name="userid" */
          User currUser = (User) session.getAttribute("user");
          if(currUser != null && currUser.isStaff().equals("yes")){
            int id = Integer.parseInt(request.getParameter("userid"));
            String status = request.getParameter("staff");
          
            User user = users.getUserFromId(id);
            user.setStaff(status);
          
            users.removeUser(user);
            users.addUser(user);
          
            bookApp.updateUsersXML(users, userPath);
          
            response.sendRedirect("admin_dashboard.jsp");
          }else{
              response.sendRedirect("index.jsp");
          }
          
        %>
    </body>
</html>
