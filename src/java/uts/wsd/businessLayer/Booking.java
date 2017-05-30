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
    
    @XmlElement(name = "id")
    private int id;
    
    @XmlElement(name = "passenger")
    private int passenger;
    
    @XmlElement(name = "flight")
    private String flight;
    
    @XmlElement(name = "fromcity")
    private String fromCity;
    
    @XmlElement(name = "tocity")
    private String toCity;
    
    @XmlElement(name = "status")
    private String bookingStatus;


    public Booking(int id, int passenger, String flight, String fromCity, String toCity) {
        this.id = id; //I hate you. - Now you can't be zero.
        this.passenger = passenger;
        this.flight = flight;
        this.fromCity = fromCity;
        this.toCity = toCity;
        this.bookingStatus = "booked";
    }
    
    public Booking(){}
    
    public int getId(){
        return this.id;
    }
    
    public void setId(int id){
        this.id = id;
    }

    public int getPassenger() {
        return passenger;
    }

    public void setPassenger(int passenger) {
        this.passenger = passenger;
    }

    public String getFlight() {
        return flight;
    }

    public void setFlight(String flight) {
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

    @Override
    public String toString() {
        return "Booking{" + "passenger=" + passenger + ", flight=" + flight + ", fromCity=" + fromCity + ", toCity=" + toCity + ", bookingStatus=" + bookingStatus + '}';
    }

    
}
