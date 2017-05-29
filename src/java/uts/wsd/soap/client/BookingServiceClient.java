/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.soap.client;

import uts.wsd.businessLayer.Flight;
import uts.wsd.soap.BookingService;
import uts.wsd.soap.BookingService_Service;
import uts.wsd.businessLayer.User;

/**
 *
 * @author nzdos_000
 */
public class BookingServiceClient {
    public static void main(String[] args) {
        BookingService_Service locator = new BookingService_Service();
        BookingService bookServ = locator.getBookingServicePort();
        User user = bookServ.login("admin@test.com", "123");
        System.out.println(user.getName());
        String fromCity = "sydney";
        String toCity = "melbourne";
        printFlights(bookServ, fromCity,toCity);
    }

    private static void printFlights(BookingService bookServ, String fromCity, String toCity) {
        
    }
}
