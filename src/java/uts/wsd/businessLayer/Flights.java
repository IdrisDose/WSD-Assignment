/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.businessLayer;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
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
    
    public void addFlight(Flight user) {
        list.add(user);
    }
    public void removeFlight(Flight user) {
        list.remove(user);
    }
    
    public Flight getFlightFromID(String id){
        for( Flight flight : list){
            if(flight.getId().equals(id)){
                return flight;
            }
        }
        return null;
    }
}
