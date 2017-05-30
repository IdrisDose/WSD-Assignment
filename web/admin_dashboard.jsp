<%@page import="uts.wsd.dataLayer.*"%>
<%@page import="uts.wsd.businessLayer.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        
    <% 
            String flightPath = application.getRealPath("WEB-INF/flights.xml");
            String bookingPath = application.getRealPath("WEB-INF/bookings.xml");
            String userPath = application.getRealPath("WEB-INF/users.xml");
    %> 
    
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="userPath" value="<%=userPath%>"/>
    </jsp:useBean>
    <jsp:include page="includes/nav.jsp"/>
    
    <% 
        //Have to put these here incase of null because slow processing?
        bookApp.populateFlights(flightPath); //Does the same thing as bookApp.setFlightPath(flightPath);
        bookApp.populateBookings(bookingPath); //Does the same thing as bookApp.setBookingPath(bookingPath);
        
        Flights flights = null;
        if(bookApp.getFlights()!=null)
            flights=bookApp.getFlights();
        
        Users users = null;
        if(bookApp.getUsers()!=null)
            users = bookApp.getUsers();
        
        Bookings bookings = null;
        if(bookApp.getBookings()!=null)
            bookings=bookApp.getBookings();
    %>
    <div class="container">
        <div class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading clearfix"> 
                    <p class="panel-title pull-left">Administration Panel</p>
                </div>
                <div class="panel-body">
                    <div id="flights" class="flights"
                        <h2>Flights</h2>
                        <form id="edit-flight" method="POST" action="edit_flight.jsp">
                            <table class="table table-hover">
                                <thead class="center-text">
                                    <th>Flight No.</th>
                                    <th>From City</th>
                                    <th>To City</th>
                                    <th>Seats</th>
                                    <th>Status</th>
                                    <th>Price</th>
                                </thead>
                                <tbody>
                                <% 
                                    if(flights!=null)
                                        for(Flight flight : flights.getList()){
                                %>
                                    <tr>
                                        <td><%=flight.getId()%></td>
                                        <td><%=flight.getFromCity()%></td>
                                        <td><%=flight.getToCity()%></td>
                                        <td><%=flight.getNumSeats()%></td>
                                        <td><%=flight.getStatus()%></td>
                                        <td>$<%=flight.getPrice()%>0</td>
                                    </tr>
                                <% } %>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    
                    <div id="users" class="users">
                        <form id="edit-user" method="POST" action="edit_user.jsp">
                            <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Status</th>
                                    <th>Is Staff?</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    if(users!=null)
                                        for(User user : users.getList()){ 
                                %>
                                    <tr>
                                        <td><input type="radio" name="userid" value="<%=user.getId()%>"/> <%=user.getId()%></td>
                                        <td><%=user.getFullname()%></td>
                                        <td><%=user.getEmail()%></td>
                                        <td><%=user.getStatus()%></td>
                                        <td><%=user.isStaff()%></td>
                                    </tr>
                                <%
                                    }//End of Foreach User
                                %>
                            </tbody>
                        </table>
                        <div align="center">
                             <button type="submit" class="btn btn-default">Edit User</button>
                             <input type="hidden" value="yes" name="submitted"/>
                        </div>
                        </form>
                    </div>
                                
                    <div id="bookings" class="bookings">
                        <form id="edit-user" method="POST" action="edit_user.jsp">
                            <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Passenger Name</th>
                                    <th>Flight Number</th>
                                    <th>From City</th>
                                    <th>To City</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    if(bookings!=null)
                                        for(Booking booking : bookings.getList()){ 

                                        User user = users.getUserFromId(booking.getPassenger());
                                        
                                %>
                                    <tr>
                                        <td><input type="radio" name="userid" value="<%=booking.getId()%>"/> <%=booking.getId()%></td>
                                        <td><%=user.getFullname()%></td>
                                        <td><%=booking.getFlight()%></td>
                                        <td><%=booking.getFromCity()%></td>
                                        <td><%=booking.getToCity()%></td>
                                        <td><%=booking.getBookingStatus()%></td>
                                    </tr>
                                <%
                                    }//End of Foreach User
                                %>
                            </tbody>
                        </table>
                        <div align="center">
                             <button type="submit" class="btn btn-default">Edit Booking</button>
                        </div>
                        </form>
                    </div>
                    
                </div>  
            </div>
            <!-- Footer -->
            <footer class="footer">
                <p>&copy; WSD.UTS 2017 <br> Background image from <a href="http://indonesiaexpat.biz/wp-content/uploads/2016/01/Airplane-flying-desktop-picture.jpg">here</a>.</p> 
            </footer>
        </div>
    </div>	
    </body>
    <script>
    </script>
</html>