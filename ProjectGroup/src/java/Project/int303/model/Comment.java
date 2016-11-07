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
public class Comment {
    private int foodId;
    private String detail;
    private int userId;
    private int likeCount ;

    public int getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(int likeCount) {
        this.likeCount = likeCount;
    }

    public Comment() {
    }

    public Comment(ResultSet rs){
        try {
            this.foodId = rs.getInt("food_id");
            this.userId = rs.getInt("user_id");
            this.detail = rs.getString("comments");
            this.likeCount = rs.getInt("like_count");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    public void adComment(Comment c){
        Connection con = null;
        String SQL = "INSERT INTO Comment(user_id,food_id,comments)"
                + "VALUES(?,?,?)";
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, c.getUserId());
            ps.setInt(2, c.getFoodId());
            ps.setString(3, c.getDetail());
            int complete = ps.executeUpdate();
            if(complete ==1){
                System.out.println("Add Comment Complete");
            }else
                System.out.println("Add Comment Error");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    public void deleteComment(Comment c){
        String SQL = "DELETE FROM comment WHERE user_id = ? AND food_id = ?" ;
        Connection con = null;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, c.getUserId());
            ps.setInt(2, c.getFoodId());
            ps.executeUpdate() ;
            con.close();
        } catch (Exception e){
            System.out.println(e);
        }
    }
    public static ArrayList<Comment> getCommentByFood(int foodId){
        ArrayList<Comment> ac = new ArrayList<>();
        Comment c = null;
        String SQL = "SELECT * FROM comment WHERE food_id = ?";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, foodId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                c = new Comment(rs);
                ac.add(c);
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return ac ;
    }
    
}
