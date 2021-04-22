/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Dao;
import com.entities.Register;
import java.sql.*;

/**
 *
 * @author Nandini Ojha
 */
public class RegisterDao {
    private Connection con;

    public RegisterDao(Connection con) {
        this.con = con;
    }
    
    //Inserti data to DB
    public boolean saveRegister(Register register)
    {
        boolean f = false;
        
        try{
            //User -> DB
            String query = "insert into register (username, gender, phone, email, host_name, host_phone, host_email) values (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps =  this.con.prepareStatement(query);
            
            ps.setString(1, register.getUsername());
            ps.setString(2, register.getGender());
            ps.setString(3, register.getPhone());
            ps.setString(4, register.getEmail());
            ps.setString(5, register.getHostName());
            ps.setString(6, register.getHostPhone());
            ps.setString(7, register.getHostEmail());
            
            ps.executeUpdate();
            f = true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
         return f;
    }

    //Getting user by email
    public Register getRegisterByEmail(String email)
    {
        Register register = null;
        try{
            String query ="select * from register where email=?";
            PreparedStatement psm=con.prepareStatement(query);
            psm.setString(1, email);
            
            ResultSet set=psm.executeQuery();
            if(set.next())
            {
                register=new Register();
                
                String username=set.getString("username");
                
                register.setUsername(username);
                
                register.setGender(set.getString("gender"));
                register.setPhone(set.getString("phone"));
                register.setEmail(set.getString("email"));
                register.setHostName(set.getString("hostName"));
                register.setHostPhone(set.getString("hostPhone"));
                register.setHostEmail(set.getString("hostEmail"));
            }
            
        }catch(Exception e)
        {
            
            e.printStackTrace();
        }
        return register;
    }
}
