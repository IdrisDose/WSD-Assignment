<%@page import="uts.wsd.businessLayer.User"%>
<%@page import="uts.wsd.dataLayer.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application"></jsp:useBean>
        <jsp:include page="includes/nav.jsp"/>
        <% 
            String userPath = application.getRealPath("WEB-INF/users.xml");
            bookApp.populateUsers(userPath);
            String referer = request.getParameter("referer");
            
            String userid = request.getParameter("userid");
            int id = Integer.parseInt(userid);
            
            String status = request.getParameter("status").equals("yes")?"member":"cancelled";
                
            Users users = bookApp.getUsers();
            User user = users.getUserFromId(id);
            
            user.setStatus(status);
            users.removeUser(user);
            users.addUser(user);
            
            bookApp.updateUsersXML(users,userPath);
            
            response.sendRedirect(referer+".jsp");
            
        %>
    </body>
</html>
