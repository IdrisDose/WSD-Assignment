package uts.wsd.idris;

/**
 * Created by Idris on 1/05/17.
 */
public class Flight {
    private String id;
    private Double price;
    private int numSeats;
    private String fromCity;
    private String toCity;
    private String flightType;
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
    }


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

    private String getStatus(){
        return this.status;
    }

    private void setStatus(){
        if(this.numSeats >= 1)
            this.status = "available";
        else
            this.status = "unavailable";

    }

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


