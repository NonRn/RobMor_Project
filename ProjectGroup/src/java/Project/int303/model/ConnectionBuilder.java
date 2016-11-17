/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Ratchanon
 */
public class ConnectionBuilder {
    public static Connection getCon(){
        Connection con = null ;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://db4free.net:3306/robmor?useUnicode=true&characterEncoding=UTF-8", "robmor", "robmor");
        } catch (Exception e){
            System.out.println(e);
        }
        return con ;
    }
//    public static Connection getConnection(){
//        Connection con = null ;
//        try {
//            Class.forName("org.apache.derby.jdbc.ClientDriver");
//            con = DriverManager.getConnection("jdbc:derby://localhost:1527/Robmor", "robmor", "robmor");
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        return con ;
//    }
     public static Connection getConnection(){
        Connection con = null ;
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/Robmor", "robmor", "robmor");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con ;
    }
}
