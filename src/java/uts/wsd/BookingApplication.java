/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import uts.wsd.dataLayer.*;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

/**
 *
 * @author nzdos_000
 */
public class BookingApplication {
    
    private String flightPath;
    private String bookingPath;
    private String userPath;
    private Flights flights;
    private Users users;
    private Bookings bookings;
    
    
    public BookingApplication() {}
    
    public void setFlightPath(String path) {
        this.flightPath = path;
        try{
            // Create the unmarshaller  
            JAXBContext jc = JAXBContext.newInstance(Flights.class);
            Unmarshaller u = jc.createUnmarshaller();
            
            if(this.flightPath==null || this.flightPath.isEmpty()){
                System.out.println("File path is null.");
            }
            if(path ==null || path.isEmpty()){
                System.out.println("Path is null");
            }
            // Now unmarshal the object from the file
            FileInputStream fin = new FileInputStream(this.flightPath);
            flights = (Flights) u.unmarshal(fin);
            fin.close();
            
        } catch(IOException e){
            System.out.println("File is null; "+ this.flightPath);
        } catch(JAXBException ex){
            System.out.println("JAXBException.");
        }
    }
    public void setBookingPath(String path){
        this.bookingPath = path;
        try{
            JAXBContext jc = JAXBContext.newInstance(Bookings.class);
            Unmarshaller u = jc.createUnmarshaller();
            if(this.bookingPath==null || this.bookingPath.isEmpty())
                System.out.println("File path is null");
            
            FileInputStream input = new FileInputStream(this.bookingPath);
            bookings = (Bookings) u.unmarshal(input);
            input.close();
            
        } catch(IOException e){
            System.out.println("File is null; "+ this.flightPath);
        } catch(JAXBException ex){
            System.out.println("JAXBException.");
            ex.printStackTrace();
        }
    }
    
    public void setUserPath(String path){
        this.userPath = path;
        try{
            JAXBContext jc = JAXBContext.newInstance(Users.class);
            Unmarshaller u = jc.createUnmarshaller();
            
            if(this.userPath==null || this.userPath.isEmpty())
                System.out.println("File path is null");
            
            FileInputStream input = new FileInputStream(this.userPath);            
            this.users = (Users) u.unmarshal(input);
            input.close();          
            
        }catch(IOException e){
            System.out.println("File is null; "+ this.userPath);
        } catch(JAXBException ex){
            System.out.println("JAXBException.");
            ex.printStackTrace();
        }
    }
    
    public void updateUsersXML(Users users, String filePath) throws Exception {        
        //Assign this.users to the variable passed in the signature.
        this.users= users;
        
        //Assign the filePath.
        this.userPath = filePath;
        
        //Create a new JAXBContext using the users class.
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        
        //Create a new Marshaller.
        Marshaller m = jc.createMarshaller();
        //Set a property (not really sure what though.)
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        
        //Create a new FileOutputStream object.
        FileOutputStream fout = new FileOutputStream(filePath);
        
        //Marshal the new object.
        m.marshal(users, fout);
        
        //Close the output.
        fout.close();
    }
    
    public void updateBookingsXML(Bookings bookings, String filePath) throws Exception {
        this.bookings= bookings;
        this.bookingPath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Bookings.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(bookings, fout);
        fout.close();
    }
    
    public void updateFlightsXML(Flights flights, String filePath) throws Exception {
        this.flights= flights;
        this.flightPath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Flights.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(bookings, fout);
        fout.close();
    }
    
    public Flights getFlights() {
        return flights;
    }

    public void setFlights(Flights flights) {
        this.flights = flights;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Bookings getBookings() {
        return bookings;
    }

    public void setBookings(Bookings bookings) {
        this.bookings = bookings;
    }
}
