/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.model;

import java.sql.Connection;

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
    
    public Restaurant getRest(int id){
        Restaurant r = null ;
        Connection con = null ;
        return r;
    }
    
    public void addRest(Restaurant r){
        
    }
    
}
