package uts.wsd.businessLayer;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Idris on 8/05/17.
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "booking")
public class Booking implements Serializable{
    
    @XmlElement(name = "passenger")
    private User passenger;
    
    @XmlElement(name = "flight")
    private Flight flight;
    
    @XmlElement(name = "fromcity")
    private String fromCity;
    
    @XmlElement(name = "tocity")
    private String toCity;
    
    @XmlElement(name = "status")
    private String bookingStatus;



    public Booking(User passenger, Flight flight, String fromCity, String toCity) {
        this.passenger = passenger;
        this.flight = flight;
        this.fromCity = fromCity;
        this.toCity = toCity;
        this.bookingStatus = "Booked";
    }

    public User getPassenger() {
        return passenger;
    }

    public void setPassenger(User passenger) {
        this.passenger = passenger;
    }

    public Flight getFlight() {
        return flight;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
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

    public String getBookingStatus() {
        return bookingStatus;
    }

    public void setBookingStatus(String bookingStatus) {
        this.bookingStatus = bookingStatus;
    }


}
