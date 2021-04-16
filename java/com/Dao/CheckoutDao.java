/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Dao;
import com.entities.Checkout;
import java.sql.*;

/**
 *
 * @author Nandini Ojha
 */
public class CheckoutDao {
    private Connection con;

    public CheckoutDao(Connection con) {
        this.con = con;
    }
    
    //Inserting user to DB
    public boolean saveCheckout(Checkout checkout)
    {
        boolean f = false;
        try{
            //User -> DB
            String query = "insert into checkout (email) values (?)";
            
            PreparedStatement ps = this.con.prepareStatement(query);
            
            ps.setString(1, checkout.getEmail());
            
            ps.executeUpdate();
            f = true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        } 
        return f;
    }
}
