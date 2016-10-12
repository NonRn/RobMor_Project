/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ยีนส์
 */
public class Food {
    
    private int foodId;
    private String foodName;
    private String price;
    private String type;
    private double rating;
    private String detail;
    private String restuarant;
    private String writer;
    private int rate1;
    private int rate2;
    private int rate3;
    private int rate4;
    private int rate5;
    
    public Food(){
        
    }
    
    public Food(ResultSet rs) throws SQLException{
        foodId = rs.getInt("FOOD_ID");
        foodName = rs.getString("FOOD_NAME");
        price = rs.getString("PRICE");   // price ต้องการใช้ String หรือ Double
        type = rs.getString("FOOD_TYPE");
        restuarant = rs.getString("REST_NAME");
        rating = rs.getDouble("RATING");
        
    }
    
    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getRestuarant() {
        return restuarant;
    }

    public void setRestuarant(String restuarant) {
        this.restuarant = restuarant;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public int getRate1() {
        return rate1;
    }

    public void setRate1(int rate1) {
        this.rate1 = rate1;
    }

    public int getRate2() {
        return rate2;
    }

    public void setRate2(int rate2) {
        this.rate2 = rate2;
    }

    public int getRate3() {
        return rate3;
    }

    public void setRate3(int rate3) {
        this.rate3 = rate3;
    }

    public int getRate4() {
        return rate4;
    }

    public void setRate4(int rate4) {
        this.rate4 = rate4;
    }

    public int getRate5() {
        return rate5;
    }

    public void setRate5(int rate5) {
        this.rate5 = rate5;
    }
    
    private void addRate(int i){
        
    }

    @Override
    public String toString() {
        return "Food{" + "foodId=" + foodId + ", foodName=" + foodName + ", price=" + price + ", type=" + type + ", rating=" + rating + ", detail=" + detail + ", restuarant=" + restuarant + ", writer=" + writer + ", rate1=" + rate1 + ", rate2=" + rate2 + ", rate3=" + rate3 + ", rate4=" + rate4 + ", rate5=" + rate5 + '}';
    }
    
    
    public static List<Food> searchFood(String n){
        Food food ;
        List<Food> foods = null;
        Connection con = null;
        String SQL = "SELECT * FROM FOOD f JOIN RESTAURANT r ON f.REST_ID = r.REST_ID WHERE lower(food_Name) like ?";
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, n.toLowerCase()+"%");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                food = new Food(rs);
                if(foods ==null){
                    foods = new ArrayList();
                }
                foods.add(food);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return foods;
    }
    
    
    public void addFood(Food f){
        Connection con = null;
        String SQL = "INSERT INTO Food (food_name,price,food_type,rest_id,rating,detail) "
                + "VALUES (?,?,?,?,?,?)";
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, f.getFoodName());
            ps.setString(2, f.getPrice());
            ps.setString(3, f.getType());
            ps.setString(4, f.getRestuarant());
            ps.setDouble(5, f.getRating());
            ps.setString(6, f.getDetail());
//            ps.setInt(7, Integer.parseInt(id));
            
            
            int complete = ps.executeUpdate();
            if(complete==1){
                System.out.println("Add Food Complete");
            }else
                System.out.println("Add Food Fail");
            con.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
//        Food f = new Food();
//        List<Food> foods = f.searchFood("");
//        for(Food food:foods){
//            System.out.println(food.getFoodId());
//            System.out.println(food.getFoodName());
//            System.out.println(food.getType());
//            System.out.println(food.getPrice());
//            System.out.println(food.getRating());
//            System.out.println("--------------");
//            
//        }
        List<Food> f = Food.searchFood("Somtam");
        System.out.println(f);
        
        
        
    }
}
