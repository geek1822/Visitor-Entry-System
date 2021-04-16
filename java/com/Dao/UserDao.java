/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Dao;
import com.entities.User;
import java.sql.*;

/**
 *
 * @author Nandini Ojha
 */
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    //Inserting user to DB
    public boolean saveUser(User user)
    {
        boolean f = false;
        
        try{
          //User -> DB
          String query = "insert into user(username, email, pass) values(?, ?, ?)";
          
          PreparedStatement ps = this.con.prepareStatement(query);
          
          ps.setString(1, user.getName());
          ps.setString(2, user.getEmail());
          ps.setString(3, user.getPassword());
          
          ps.executeUpdate();
          f = true; 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    //Getting user by email and password
    public User getUserByEmailAndPassword(String email, String password)
    {
        User user = null;
        try{
            String query = "select * from user where email = ? and pass = ?";
            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setString(1, email);
            ps.setString(2, password);
            
          ResultSet set =  ps.executeQuery();
          
          if(set.next())
          {
              user = new User();
              
              //Data from DB
              String name = set.getString("username");
              
              //Setting to user object
              user.setName(name);
              user.setEmail(set.getString("email"));
              user.setPassword(set.getString("pass"));
             
          }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return user;
    }
}
