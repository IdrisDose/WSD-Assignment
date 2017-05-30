<%@page import="uts.wsd.dataLayer.*"%>
<%@page import="uts.wsd.businessLayer.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>WSD Airline - DEBUG</title>
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
        <div class="container">
            <h1>DEBUG DUMP</h1>


            <%
                Users users = bookApp.getUsers();
                Bookings bookings = bookApp.getBookings();
                Flights flights = bookApp.getFlights();
            %>
            <div>
                <h2>Users</h2>
                <ul>
                     <% if(users!=null)
                         for(User user : users.getList()){ %>
                        <li><%=user.toString()%></li>
                    <% } %>
                </ul>
            </div>

            <div>
                <h2>Bookings</h2>
                <ul>
                    <% if(bookings!=null)
                        for(Booking booking : bookings.getList()){ %>
                        <li><%=booking.toString()%></li>
                    <% } %>
                </ul>

            </div>

            <div>
                <h2>Flights</h2>
                <ul>
                    <% if(flights!=null)
                        for(Flight fl : flights.getList()){ %>
                        <li><%=fl.toString()%></li>
                    <% } %>
                </ul>
            </div>
            <div class="col-sm-6 col-sm-offset-4">
                <a href="index.jsp" class="btn btn-default" >Home</a>
                <a href="register.jsp" class="btn btn-default">Register</a>
                <a href="login.jsp" class="btn btn-default" >Login</a>
            </div>
            
        </div>
    </body>
</html>
