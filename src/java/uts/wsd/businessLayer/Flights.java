/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.businessLayer;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.*;
import uts.wsd.dataLayer.Flight;

/**
 *
 * @author nzdos_000
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "flights")
public class Flights implements Serializable{
    
    @XmlElement(name = "flight")
    private ArrayList<Flight> list = new ArrayList<Flight>();
    
    public ArrayList<Flight> getList() {
        return list;
    }
    
    public void addFlight(Flight value) {
        list.add(value);
    }
    public void removeFlight(Flight value) {
        list.remove(value);
    }
    
    public Flight getFlightFromID(String id){
        for( Flight flight : list){
            if(flight.getId().equals(id)){
                return flight;
            }
        }
        return null;
    }
    
    public Flight getFirstFlight(){
        return list.get(0);
    }
}
