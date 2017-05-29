/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.dataLayer;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.*;
import uts.wsd.businessLayer.User;

/**
 *
 * @author Idris
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "users")
public class Users implements Serializable{
    
    @XmlElement(name = "user")
    private ArrayList<User> list = new ArrayList<User>();
    
    public ArrayList<User> getList() {
        return list;
    }
    
    public void addUser(User user) {
        list.add(user);
    }
    public void removeUser(User user) {
        list.remove(user);
    }
    
    public User login(String email, String password) {
        // For each user in the list...
        for (User user : list) {
            if (user.getEmail().equals(email) && user.getPassword().equals(password))
                return user; // Login correct. Return this user.
        }
        return null; // Login incorrect. Return null.
    }
    
    public boolean userExists(String email){
        //For each user in the list..
        for(User user: list){
            //Check if details exist
            if (user.getEmail().equals(email))
                return true; //Return true if details exist
        }
        return false; //Return false if details exist
    }
}
