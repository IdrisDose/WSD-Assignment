/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import uts.wsd.dataLayer.User;
import uts.wsd.businessLayer.Users;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

/**
 *
 * @author nzdos_000
 */
public class BookingApplication {
    
    private String userPath;
    private String bookingPath;
    private Users users;
    
    
    public BookingApplication() {}
    
    public void setUserPath(String path){
        this.userPath = path;
        try{
            // Create the unmarshaller  
            JAXBContext jc = JAXBContext.newInstance(User.class);
            Unmarshaller u = jc.createUnmarshaller();
            
            if(this.userPath==null || this.userPath.isEmpty()){
                System.out.println("File path is null.");
            }
            // Now unmarshal the object from the file
            FileInputStream fin = new FileInputStream( this.userPath);
            users = (Users)u.unmarshal(fin);
            fin.close();
            
        } catch(IOException e){
            System.out.println("File is null; "+ this.userPath);
        } catch(JAXBException ex){
            System.out.println("JAXBException.");
        }
    }

    public void setBookingPath(String path) {
        this.bookingPath = path;
        try{
            // Create the unmarshaller  
            JAXBContext jc = JAXBContext.newInstance(User.class);
            Unmarshaller u = jc.createUnmarshaller();
            
            if(this.bookingPath==null || this.bookingPath.isEmpty()){
                System.out.println("File path is null.");
            }
            // Now unmarshal the object from the file
            FileInputStream fin = new FileInputStream( this.bookingPath);
            users = (Users)u.unmarshal(fin);
            fin.close();
            
        } catch(IOException e){
            System.out.println("File is null; "+ this.bookingPath);
        } catch(JAXBException ex){
            System.out.println("JAXBException.");
        }
    }
}
