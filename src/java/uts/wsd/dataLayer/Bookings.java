/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.dataLayer;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.*;
import uts.wsd.businessLayer.Booking;

/**
 *
 * @author nzdos_000
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "bookings")
public class Bookings implements Serializable {
    @XmlElement(name = "booking")
    private ArrayList<Booking> list = new ArrayList<Booking>();
    
    public ArrayList<Booking> getList() {
        return list;
    }
    
    public void addFlight(Booking value) {
        list.add(value);
    }
    public void removeFlight(Booking value) {
        list.remove(value);
    }
    
    public Booking getBookingFromID(int id){
        for( Booking booking : list){
            if(id == booking.getId()){
                return booking;
            }
        }
        return null;
    }
    
    public Booking getFirstFlight(){
        return list.get(0);
    }
    
    public ArrayList<Booking> getBookingsFromId(int id){
        ArrayList<Booking> output = new ArrayList<Booking>();
        for(Booking booking : list){
            if(booking.getPassenger()==id){
                output.add(booking);
            }
        }
        return output;
    }
}
