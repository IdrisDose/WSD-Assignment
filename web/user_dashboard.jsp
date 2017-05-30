<%@page import="java.util.ArrayList"%>
<%@page import="uts.wsd.dataLayer.*"%>
<%@page import="uts.wsd.businessLayer.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <title>WSD Airline</title>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <link rel="stylesheet" href="style.css"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
        </style>

    </head>
    <body>
    <% 
        String flightPath = application.getRealPath("WEB-INF/flights.xml");
        String bookingPath = application.getRealPath("WEB-INF/bookings.xml");
    %> 
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="flightPath" value="<%=flightPath%>"/>
    </jsp:useBean>
    <jsp:include page="includes/nav.jsp"/>
    <% 
        bookApp.populateBookings(bookingPath);
        
        User user = (User) session.getAttribute("user");
        Bookings bookings = bookApp.getBookings();
        ArrayList<Booking> bookingsList = new ArrayList<Booking>();
        
        if(bookings!=null)
            bookingsList = bookings.getBookingsFromId(user.getId());
    %>

    <!--table -->
    <div class="container col-sm-10">
        <div class="col-sm-6 col-sm-offset-4">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Bookings List</p>	
                    </div>

                    <div class="panel-body">   
                        <form id="bookings-list" method="POST" action="cancel_booking.jsp">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Departure Location</th>
                                    <th>Return Location</th>
                                    <th>Departure Date</th>
                                    <th>Return Date</th>
                                    <th>Status</th>
                                </tr>
                            </thead>

                            <tbody>
                                <%
                                    if(bookings!=null)
                                        for(Booking booking : bookingsList){ 
                                        
                                %>
                                    <tr>
                                        <td><input type="radio" name="userid" value="<%=booking.getId()%>"/> <%=booking.getId()%></td>
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

                        <div class="button">
                            <button type="submit" class="btn btn-default">Cancel Flight</button>
                            <a href="index.jsp" class="btn btn-default">Back</a>
                        </div>
                        </form>
                    </div>
                </div>               
               <!-- Footer -->
                <footer class="footer">
                    <p>&copy; WSD.UTS 2017 <br> Background image from <a href="http://indonesiaexpat.biz/wp-content/uploads/2016/01/Airplane-flying-desktop-picture.jpg">here</a>.</p> 
                </footer>
            </div>
        </div>
    </div>
</body>
</html>