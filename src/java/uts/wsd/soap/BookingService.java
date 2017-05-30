/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.soap;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.servlet.ServletContext;
import javax.xml.bind.JAXBException;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;
import uts.wsd.BookingApplication;
import uts.wsd.businessLayer.Flight;
import uts.wsd.businessLayer.User;
import uts.wsd.dataLayer.Flights;
import uts.wsd.dataLayer.Users;

/**
 *
 * @author Idris
 */
@WebService(serviceName = "BookingService")
public class BookingService {
    @Resource
    private WebServiceContext context;
    
    private BookingApplication getBookingApp() throws JAXBException, IOException{
        ServletContext application = (ServletContext)context.getMessageContext().get(MessageContext.SERVLET_CONTEXT);
        synchronized(application){
            BookingApplication bookApp = (BookingApplication)application.getAttribute("bookApp");
            if(bookApp==null){
                bookApp = new BookingApplication();
                bookApp.setUserPath(application.getRealPath("WEB-INF/users.xml"));
                bookApp.setFlightPath(application.getRealPath("WEB-INF/flights.xml"));
                bookApp.setBookingPath(application.getRealPath("WEB-INF/bookings.xml"));
            }
            return bookApp;
        }
    }
    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "login")
    public User login(String email, String password){
        try {
            Users users = this.getBookingApp().getUsers();
            return users.login(email, password);
        } catch (JAXBException ex) {
            Logger.getLogger(BookingService.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BookingService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    @WebMethod
    public Flights findFlight(String fromCity, String toCity){
        Flights flights = new Flights();
        try{
            ArrayList<Flight> tmpFlights = this.getBookingApp().getFlights().getFlightsFromData(fromCity, toCity, "nil");
            for(Flight flight : tmpFlights){
                flights.addFlight(flight);
            }
        } catch (JAXBException ex) {
            Logger.getLogger(BookingService.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BookingService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flights;
    }
}
