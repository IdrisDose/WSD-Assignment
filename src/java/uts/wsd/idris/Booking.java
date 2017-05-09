package uts.wsd.idris;

/**
 * Created by Idris on 8/05/17.
 */
public class Booking {
    private User passenger;
    private Flight flight;
    private String fromCity;
    private String toCity;
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
