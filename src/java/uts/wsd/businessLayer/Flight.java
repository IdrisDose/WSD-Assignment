package uts.wsd.businessLayer;

import java.io.Serializable;
import javax.xml.bind.annotation.*;

/**
 * Created by Idris on 1/05/17.
 */

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "flight")
public class Flight implements Serializable{
    
    @XmlElement(name = "id")
    private String id;
    
    @XmlElement(name = "price")
    private Double price;
    
    @XmlElement(name = "seats")
    private int numSeats;
    
    @XmlElement(name = "fromcity")
    private String fromCity;
    
    @XmlElement(name = "tocity")
    private String toCity;
    
    @XmlElement(name = "type")
    private String flightType;
    
    @XmlElement(name = "status")
    private String status;


    public Flight(String id) {
        this.id = id;
    }

    /**
     * Flight Constructor
     * @param id
     * @param price
     * @param numSeats
     * @param fromCity
     * @param toCity
     * @param flightType
     */
    public Flight(String id, Double price, int numSeats, String fromCity, String toCity, String flightType) {
        this.id = id;
        this.price = price;
        this.numSeats = numSeats;
        this.fromCity = fromCity;
        this.toCity = toCity;
        this.flightType = flightType;
        this.setStatus();
    }
    
    public Flight(){ }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getNumSeats() {
        return numSeats;
    }

    public void setNumSeats(int numSeats) {
        this.numSeats = numSeats;
    }

    public String getFromCity() {
        return fromCity;
    }

    public void setFromCity(String fromCity) {
        this.fromCity = fromCity;
    }

    public String getToCity() {
        return toCity;
    }

    public void setToCity(String toCity) {
        this.toCity = toCity;
    }

    public String getFlightType() {
        return flightType;
    }

    public void setFlightType(String flightType) {
        this.flightType = flightType;
    }

    public String getStatus(){
        return this.status;
    }
    
    //Check if number of seats available greater or equal to one
    // If yes to condition, set status to available
    // If no to condition, set status to unavailable
    private void setStatus(){
        if(this.numSeats >= 1)
            this.status = "available";
        else
            this.status = "unavailable";

    }

    //Unused
    private void updateFlight(){
        this.setStatus();

    }

    @Override
    public String toString() {
        return "Flight{" +
                "id='" + id + '\'' +
                ", price=" + price +
                ", numSeats=" + numSeats +
                ", fromCity='" + fromCity + '\'' +
                ", toCity='" + toCity + '\'' +
                ", flightType='" + flightType + '\'' +
                '}';
    }
}


