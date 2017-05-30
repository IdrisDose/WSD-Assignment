
package uts.wsd.rest;
 
import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import java.io.*;
import java.util.*;
import uts.wsd.*;
import uts.wsd.businessLayer.*;
import uts.wsd.dataLayer.*;

@Path("/bookingApp")
public class flightService {
    @Context
    private ServletContext application;
 
    private BookingApplication getBookingApp() throws Exception {
        synchronized (application) {
            BookingApplication bookingApp = (BookingApplication) application.getAttribute("bookingApp");
            if (bookingApp == null) {
                bookingApp = new BookingApplication();
                bookingApp.setBookingPath(application.getRealPath("WEB-INF/bookings.xml"));
                bookingApp.setUserPath(application.getRealPath("WEB-INF/users.xml"));
                bookingApp.setFlightPath(application.getRealPath("WEB-INF/flights.xml"));
                application.setAttribute("bookingApp", bookingApp);
            }
            return bookingApp;
        }
    }
   
    @Path("bookings")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Bookings getBooking() throws Exception{
        BookingApplication bookingApp = getBookingApp();      
        return bookingApp.getBookings();
    }
   
    @Path("users")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Users getUsers() throws Exception{
        BookingApplication bookingApp = getBookingApp();
        return bookingApp.getUsers();
    }
//    @Path("flights")
//    @GET
//    @Produces(MediaType.APPLICATION_XML)
//    public Flights getFlights() throws Exception{
//        BookingApplication bookingApp = getBookingApp();
//        return bookingApp.getFlights();
//    }
   
    @Path("flights")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Flights getFlights(@QueryParam("email") String email, @QueryParam("status") String status) throws Exception {
        int i = 0; //counter
        
        
        BookingApplication bookingApp = getBookingApp(); // Main Beef
        
        Bookings bookings = bookingApp.getBookings(); // Current Bookings
        
        Users users = bookingApp.getUsers(); // Current Users
        
        Flights flights = bookingApp.getFlights(); //Current Flights
        
        Flights flightsBuffer = new Flights(); // Buffer for holding new collection of flights
        
        email = email==null?"nil":email;
        
        User user = users.getUserFromEmail(email);
        
        if(user !=null){
            ArrayList<Booking> buffer = bookings.getBookingsFromId(user.getId());    
            for(Booking booking : buffer){
               ++i;
               flightsBuffer.addFlight(flights.getFlightFromID(booking.getFlight()));
               
            }            
            return flightsBuffer;
        }
        
        return flights;
    }
}