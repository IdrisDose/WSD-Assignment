/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.dataLayer;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.*;
import uts.wsd.businessLayer.Flight;

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
    
    public ArrayList<Flight> getFlightsFromData(String fromcity, String tocity, String type){
        ArrayList<Flight> output = new ArrayList<>();
        ArrayList<Flight> fromCityList = new ArrayList<>();
        
        //Unused for now
        ArrayList<Flight> toCityList = new ArrayList<>();
        
        boolean isFromCityNil = fromcity.equals("nil");
        boolean isToCityNil = tocity.equals("nil");
        
        //Unused for now
        boolean isTypeNil = type.equals("nil");
        
        
        if(!isFromCityNil){
            fromCityList = searchFromCity(fromcity, list);
            
        }
        
        if(!isToCityNil){
            if(fromCityList.isEmpty()){
                toCityList = searchToCity(tocity, list);
            }else{
                toCityList = searchToCity(tocity, fromCityList);
            }
        }
        
        if(!isFromCityNil){ // If fromcity (var) == "nil"
            if(!isToCityNil)
                output = toCityList; // 
            else
                output = fromCityList;
        } else{
            if(!isToCityNil)
                output = toCityList;
        }
        return output;
    }
    
    private ArrayList<Flight> searchFromCity(String fromcity, ArrayList<Flight> input){
        ArrayList<Flight> output = new ArrayList<>();
        for(Flight flight : input){
            if(flight.getFromCity().equals(fromcity)){
                output.add(flight);
            }
        }
        return output;
    }
    
    private ArrayList<Flight> searchToCity(String tocity, ArrayList<Flight> input){
        ArrayList<Flight> output = new ArrayList<>();
        for(Flight flight : input){
            if(flight.getToCity().equals(tocity)){
                output.add(flight);
            }
        }
        return output;
    }
    
    private ArrayList<Flight> searchType(String type, ArrayList<Flight> input){
        ArrayList<Flight> output  = new ArrayList<>();
        for(Flight flight : input){
            if(flight.getFlightType().equals(type)){
                output.add(flight);
            }
        }
        return output;
    }
    
    
}
