package uts.wsd.presentationLayer;

import uts.wsd.businessLayer.Flight;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by Idris on 1/05/17.
 */
public class BookingService {
    private static List<Flight> flights = new ArrayList<>();
    private static String[] cities = {"Sydney", "Melbourne","Adelaide","Darwin","Hobart","Canberra","Perth"};
    private static Double[] prices = {100.00,120.00,140.00,160.00,180.00,200.00,275.00};

    public static void main(String[] args) {
        Run();
    }
    public static void Run(){
        for(int i = 0; i < 10; i++){
            makeFlights();
        }

        for(Flight fl : flights){
            System.out.println(fl.toString());
        }
    }

    private static void makeFlights(){
        String stringInID;
        Random rand = new Random();
        int numInID;
        String toCity = getRandCity();
        String fromCity = getRandCity();
        Double price = prices[rand.nextInt(prices.length-1)];

        verifyDestinations(toCity,fromCity,rand);

        stringInID = fromCity.substring(0,1)+toCity.substring(0,1);
        numInID = 1000 + rand.nextInt(9999);
        String  id = stringInID+numInID;

        flights.add(new Flight(id,price,100+rand.nextInt(180),fromCity,toCity,"economy"));

    }
      
    private static void verifyDestinations(String toCity, String fromCity, Random rand) {
        if(toCity.equals(fromCity)){
            fromCity = getRandCity();
            verifyDestinations(toCity,fromCity,rand);
        }
    }

    private static String getRandCity(){
        Random rand = new Random();
        return cities[rand.nextInt(cities.length-1)];
    }
}
