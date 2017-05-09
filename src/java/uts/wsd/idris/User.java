package uts.wsd.idris;

/**
 * Created by Idris on 1/05/17.
 */
public class User {
    private int id;
    private String fullname;
    private String email;
    private String dob;
    private Boolean admin;


    public User(int id, String fullname, String email, String dob) {
        this.id = id;
        this.fullname = fullname;
        this.email = email;
        this.dob = dob;
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

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public final Boolean isAdmin(){
        return admin;
    }


    @Override
    public String toString() {
        return this.fullname + "<"+this.email+">";
    }

}
