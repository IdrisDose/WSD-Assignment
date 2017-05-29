/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.soap.client;

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
    }
}
