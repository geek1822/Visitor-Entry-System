/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entities;

import java.sql.*;

/**
 *
 * @author Nandini Ojha
 */
public class Checkout {
    private String email;
    private Timestamp checkout;

    public Checkout(String email) {
        this.email = email;
    }

    public Checkout() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Timestamp getCheckout() {
        return checkout;
    }

    public void setCheckout(Timestamp checkout) {
        this.checkout = checkout;
    }
    
    
}
