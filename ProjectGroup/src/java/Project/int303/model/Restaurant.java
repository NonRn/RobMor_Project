/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Ratchanon
 */
public class Restaurant {
    private int restId ;
    private String name;
    private String address;
    private int seat;
    private double rating ;

    public Restaurant() {
    }
    
    public int getRestId() {
        return restId;
    }

    public void setRestId(int restId) {
        this.restId = restId;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSeat() {
        return seat;
    }

    public void setSeat(int seat) {
        this.seat = seat;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }
    
    public static int getId(String name){
        Restaurant r = null ;
        String SQL = "SELECT rest_id FROM restaurant WHERE rest_name = ?";
        Connection con = null ;
        int i = 0 ;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                i = rs.getInt("rest_id");
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return i ;
    }
    
    public static void addRest(Restaurant r){
        String SQL = "insert into restaurant(rest_name,address,seat,rating) values(?,?,?,0.0)";
        Connection con = null ;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, r.getName());
            ps.setString(2, r.getAddress());
            ps.setInt(3, r.getSeat());
            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
        }
    }
    public static ArrayList<Restaurant> findRest(){
        ArrayList<Restaurant> rests = new ArrayList();
        String SQL = "SELECT * FROM restaurant";
        Connection con = null ;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Restaurant r = new Restaurant();
                r.setName(rs.getString("rest_name"));
                r.setAddress(rs.getString("address"));
                r.setSeat(rs.getInt("seat"));
                r.setRating(rs.getDouble("rating"));
                r.setRestId(rs.getInt("rest_id"));
                rests.add(r);
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return rests ;
    }
    public static String getName(int id){
        Restaurant r = null ;
        String SQL = "SELECT rest_name FROM restaurant WHERE rest_id = ?";
        Connection con = null ;
        String name = "";
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                name = rs.getString("rest_name");
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return name ;
    }
}
