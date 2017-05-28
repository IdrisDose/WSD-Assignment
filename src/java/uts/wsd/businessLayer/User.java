package uts.wsd.businessLayer;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Idris on 1/05/17.
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "user")
public class User implements Serializable{
    @XmlElement(name = "id")
    private int id;
    
    @XmlElement(name = "fullname")
    private String fullname;
    
    @XmlElement(name = "email")
    private String email;
    
    @XmlElement(name = "password")
    private String password;
    
    @XmlElement(name = "dob")
    private String dob;
    
    @XmlElement(name = "staff")
    private boolean staff;
    
    public User(int id, String fullname, String email, String password, String dob, boolean staff) {
        this.id = id;
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.staff = staff;
    }

    public User(int id) {
        this.id = id;
    }
    public User(String email) {
        this.email = email;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getFullname() {
        return fullname;
    }
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setPassword(String value){
        this.password = value;
    }
    public String getPassword() {
        return this.password;
    }
    public String getDob() {
        return dob;
    }
    public void setDob(String dob) {
        this.dob = dob;
    }  
    public void setStaff(boolean value){
        this.staff = value;
    }   
    public boolean isStaff(){
        return this.staff;
    }
    
    @Override
    public String toString() {
        return this.fullname + "<"+this.email+">";
    }

   

}