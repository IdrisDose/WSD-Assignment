<%@page import="uts.wsd.businessLayer.Booking"%>
<%@page import="uts.wsd.dataLayer.Bookings"%>
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
            String bookingPath = application.getRealPath("WEB-INF/bookings.xml");
            String userPath = application.getRealPath("WEB-INF/users.xml");
            
            bookApp.populateBookings(bookingPath);
            bookApp.populateUsers(userPath);
            
            String bookingID = request.getParameter("bookingid");
            Bookings bookings = bookApp.getBookings();
            Booking booking = bookings.getBookingFromID(Integer.parseInt(bookingID));
            String passenger = bookApp.getUsers().getUserFromId(booking.getPassenger()).getFullname();
            
        %>
        <!-- Container -->
        <div class="container col-sm-8">
            <div class="col-sm-6 col-sm-offset-6">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading clearfix"> 
                            <p class="panel-title pull-left">Edit Booking</p>
                        </div>

                        <div class="panel-body">
                            <div align="Left" class="tab-content" id="Flight">
                                <div class="row">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Booking ID:</label>
                                        <div class="col-sm-6">
                                            <p class="form-control"><%= booking.getId()%></p>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Passenger:</label>
                                        <div class="col-sm-6">
                                            <p class="form-control"><%= passenger%></p>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Flight ID:</label>
                                        <div class="col-sm-6">
                                            <p class="form-control"><%= booking.getFlight()%></p>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">From City:</label>
                                        <div class="col-sm-6">          
                                            <p class="form-control"><%= booking.getFromCity() %></p>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4">To City:</label>
                                        <div class="col-sm-6">          
                                            <p class="form-control"><%=booking.getToCity()%></p>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" >Status: </label>
                                        <div class="col-sm-6">          
                                            <p class="form-control"><%=booking.getBookingStatus()%></p>
                                        </div>
                                    </div>

                                    
                                </div>
                                <div class="row">
                                    <div class="button">
                                        <a href="admin_dashboard.jsp" class="btn btn-default">Back</a>
                                    </div>
                                </div>
                                <form action="cancel_booking.jsp" method="POST">
                                    <% 
                                        boolean isBooked = booking.getBookingStatus().equals("booked");
                                        String status = isBooked?"cancelled":"booked";
                                    %>
                                    <button type="submit" class="btn btn-default">Change Booking Status</button>
                                    
                                    <input type="hidden" name="referer" value="admin_dashboard"/>
                                    <input type="hidden" name="bookingid" value="<%=booking.getId()%>"/>
                                    <input type="hidden" name="status" value="<%=status%>"/>
                                </form>
                                <form>
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
        </div>
    </body>
</html>
