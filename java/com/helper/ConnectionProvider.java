/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.helper;
import java.sql.*;

/**
 *
 * @author Nandini Ojha
 */
public class ConnectionProvider {
    private static Connection con;
    
    public static Connection getConnection()
    {
        try{
            if(con == null)
            {
                //Loading Driver
                Class.forName("com.mysql.jdbc.Driver");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/visitor", "root", "geek1822");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return con;
    }
}
