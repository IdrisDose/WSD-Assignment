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
            String pageFrom = request.getParameter("referer");
            bookApp.populateBookings(bookingPath);
            
            int bookingID = Integer.parseInt(request.getParameter("bookingid"));
            
            boolean statusIsEmpty = request.getParameter("status")==null||request.getParameter("status").isEmpty();
            String status = statusIsEmpty?"cancelled":request.getParameter("status");
            
            Bookings bookings = bookApp.getBookings();
            Booking booking = bookings.getBookingFromID(bookingID);
            

            booking.setBookingStatus(status);
            bookings.removeBooking(booking);
            bookings.addBooking(booking);
            
            bookApp.updateBookingsXML(bookings, bookingPath);
            response.sendRedirect(pageFrom+".jsp");
        
        %>
        <h1>Hello World!</h1>
    </body>
</html>
