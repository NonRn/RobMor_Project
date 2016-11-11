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
 * @author ยีนส์
 */
public class Favorite {
    private int foodId;
    private int userId;
    private int myRating;

    public Favorite() {
    }

    public Favorite(int foodId, int userId) {
        this.foodId = foodId;
        this.userId = userId;
        String SQL = "INSERT INTO favorite (user_id,food_id) values(?,?)";
        Connection con = ConnectionBuilder.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userId);
            ps.setInt(2, foodId);
            ps.executeUpdate();
            con.close();
        }catch (Exception e){
            System.out.println(e);
        }
    }

    public Favorite(int foodId, int userId, int myRating) {
        this.foodId = foodId;
        this.userId = userId;
        this.myRating = myRating;
        String SQL = "INSERT INTO favorite (user_id,food_id,my_rating) values(?,?,?)";
        Connection con = ConnectionBuilder.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userId);
            ps.setInt(2, foodId);
            ps.setInt(3, myRating);
            ps.executeUpdate();
            con.close();
        }catch (Exception e){
            System.out.println(e);
        }
    }
    
    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getMyRating() {
        return myRating;
    }

    public void setMyRating(int myRating) {
        this.myRating = myRating;
    }

    public void deleteFavorite(int userId,int foodId){
        String SQL = "DELETE FROM favorite WHERE user_id = ? AND food_id = ?" ;
        Connection con = null;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userId);
            ps.setInt(2, foodId);
            ps.executeUpdate() ;
            con.close();
        } catch (Exception e){
            System.out.println(e);
        }
    }
    
    public static ArrayList<Favorite> getFavoriteByUserId(int userId){
        String SQL = "SELECT * FROM favorite WHERE user_id = "+userId ;
        Connection con = ConnectionBuilder.getConnection();
        ArrayList<Favorite> af = new ArrayList();
        try {
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Favorite f = new Favorite();
                f.setFoodId(rs.getInt("food_id"));
                f.setUserId(rs.getInt("user_id"));
                f.setMyRating(rs.getInt("my_rating"));
                af.add(f);
            }
            con.close();
            return af ;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null ;
    }
    
    public static void changeRate(int rate,int user,int food){
        String SQL = "UPDATE favorite SET my_rating = ? WHERE food_id = ? and user_id = ?";
        Connection con = ConnectionBuilder.getConnection();
        try{
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, rate);
            ps.setInt(2, food);
            ps.setInt(3, user);
            ps.executeUpdate();
            con.close();
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
