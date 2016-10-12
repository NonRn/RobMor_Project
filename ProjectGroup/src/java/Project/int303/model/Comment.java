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
public class Comment {
    private int foodId;
    private String detail;
    private int userId;

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
    
    private void adComment(Comment c){
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
    
    private void deleteComment(){
        
    }
    public static void main(String[] args) {
        Comment com = new Comment();
        com.adComment(com);
    }
}
