
package com.entities;
import java.sql.*;

/**
 *
 * @author Nandini Ojha
 */
public class Register {
    private String username;
    private String gender;
    private String phone;
    private String email;
    private Timestamp check_in;
    private String hostName;
    private String hostPhone;
    private String hostEmail;

    public Register(String username,String gender, String phone, String email, String hostName, String hostPhone, String hostEmail) {
        this.username = username;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.hostName = hostName;
        this.hostPhone = hostPhone;
        this.hostEmail = hostEmail;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Register() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Timestamp getCheck_in() {
        return check_in;
    }

    public void setCheck_in(Timestamp check_in) {
        this.check_in = check_in;
    }

    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public String getHostPhone() {
        return hostPhone;
    }

    public void setHostPhone(String hostPhone) {
        this.hostPhone = hostPhone;
    }

    public String getHostEmail() {
        return hostEmail;
    }

    public void setHostEmail(String hostEmail) {
        this.hostEmail = hostEmail;
    }
    
    
}