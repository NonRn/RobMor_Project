/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author ยีนส์
 */
public class Favorite {
    private int foodId;
    private int userId;
    private int myLating;

    public Favorite() {
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

    public int getMyLating() {
        return myLating;
    }

    public void setMyLating(int myLating) {
        this.myLating = myLating;
    }
    
    public void addFavorite(Favorite f){
        String sql = "insert into favorite (client_id,food_id,my_rating) value(?,?,?)";
        Connection conn = null ;
        try {
            conn = ConnectionBuilder.getCon();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, f.getUserId());
            ps.setInt(2, f.getFoodId());
            ps.setInt(3, f.getMyLating());
            ps.executeUpdate();
            conn.close();
        } catch (Exception e){
            System.out.println(e);
        }
    }
    public void deleteFavorite(Favorite f){
        String SQL = "DELETE FROM favorite WHERE user_id = ? AND food_id = ?" ;
        Connection con = null;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, f.getUserId());
            ps.setInt(2, f.getFoodId());
            ps.executeUpdate() ;
            con.close();
        } catch (Exception e){
            System.out.println(e);
        }
    }
}
