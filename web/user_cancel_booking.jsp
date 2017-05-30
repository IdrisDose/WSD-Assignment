<%@page import="uts.wsd.businessLayer.Booking"%>
<%@page import="uts.wsd.dataLayer.Bookings"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application"/>
        <% 
            String bookingPath = application.getRealPath("WEB-INF/bookings.xml");
            bookApp.populateBookings(bookingPath);
            
            int bookingID = Integer.parseInt(request.getParameter("bookingid"));
            
            
            Bookings bookings = bookApp.getBookings();
            Booking booking = bookings.getBookingFromID(bookingID);
            

            booking.setBookingStatus("cancelled");
            bookings.removeBooking(booking);
            bookings.addBooking(booking);
            
            bookApp.updateBookingsXML(bookings, bookingPath);
            response.sendRedirect("user_dashboard.jsp");
        
        %>
        <h1>Hello World!</h1>
    </body>
</html>
