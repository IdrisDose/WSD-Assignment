<%-- 
    Document   : debug_reset
    Created on : 30/05/2017, 3:38:40 PM
    Author     : 12600300
--%>

<%@page import="uts.wsd.businessLayer.*"%>
<%@page import="uts.wsd.dataLayer.*"%>
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
    <body>
        <% 
            String flightPath = application.getRealPath("WEB-INF/flights.xml");
            String bookingPath = application.getRealPath("WEB-INF/bookings.xml");
            String userPath = application.getRealPath("WEB-INF/users.xml");
        %>
    
        <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
            <jsp:setProperty name="bookApp" property="flightPath" value="<%=flightPath%>"/>
            <jsp:setProperty name="bookApp" property="userPath" value="<%=userPath%>"/>
            <jsp:setProperty name="bookApp" property="bookingPath" value="<%=bookingPath%>"/>
        </jsp:useBean>
        <jsp:include page="includes/nav.jsp"/>
        <% 
            Users users = bookApp.getUsers();
            for(User user : users.getList()){
                user.setStatus("member");
            }
        %>
        
        <p>
            all users have become members again! <a href="index.jsp">Click HERE</a> to continue.            
        </p>
    </body>
</html>
