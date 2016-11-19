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
        int i = rs.getInt("REST_ID") ;
        rating = rs.getDouble("RATING");
        detail = rs.getString("detail");
        
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
    
    public static void addRate(int i,int foodId){
        String SQL = "SELECT rating"+i+" FROM rating WHERE food_id = " + foodId ;
        String SQL2 = "UPDATE rating SET rating"+i+" = ? WHERE food_id = " + foodId ;
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            PreparedStatement ps2 = con.prepareStatement(SQL2);
//            switch(i){
//                case 1 : ps.setString(1, "rating1");
//                    break ;
//                case 2 : ps.setString(1, "rating2");
//                    break ;
//                case 3 : ps.setString(1, "rating3");
//                    break ;
//                case 4 : ps.setString(1, "rating4");
//                    break ;
//                case 5 : ps.setString(1, "rating5");
//                    break ;
//                default: 
//                    System.out.println("Error");
//            }
            ResultSet rs = ps.executeQuery();
            rs.next();
            int before = rs.getInt(1);
            before++ ;
//            switch(i){
//                case 1 : 
//                    ps2.setString(1, "rating1");
//                    break ;
//                case 2 : 
//                    ps2.setString(1, "rating2");
//                    break ;
//                case 3 : 
//                    ps2.setString(1, "rating3");
//                    break ;
//                case 4 : 
//                    ps2.setString(1, "rating4");
//                    break ;
//                case 5 : 
//                    ps2.setString(1, "rating5");
//                    break ;
//                default: 
//                    System.out.println("Error");
//            }
            ps2.setInt(1, before);
            ps2.executeUpdate();
            ps.close();
            ps2.close();
            con.close();
        } catch (Exception e){
            System.out.println(e);
        }
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
    
    
    public int addFood(Food f){
        Connection con = null;
        String SQL = "INSERT INTO Food (food_name,price,food_type,rest_id,rating,detail,writer) "
                + "VALUES (?,?,?,?,?,?,?)";
        String SQL2 = "Select MAX(food_id) from food";
        String SQL3 = "INSERT INTO rating values(?,0,0,0,0,0)";
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, f.getFoodName());
            ps.setString(2, f.getPrice());
            ps.setString(3, f.getType());
            ps.setInt(4, Restaurant.getId(f.getRestuarant()));
            ps.setDouble(5, 0);
            ps.setString(6, f.getDetail());
            ps.setInt(7, User.getUser(f.getWriter()).getUserId());
            
            
            int complete = ps.executeUpdate();
            if(complete==1){
                System.out.println("Add Food Complete");
            }else
                System.out.println("Add Food Fail");
            PreparedStatement ps2 = con.prepareStatement(SQL2);
            ResultSet rs2 = ps2.executeQuery();
            rs2.next();
            PreparedStatement ps3 = con.prepareStatement(SQL3);
            int o = rs2.getInt(1);
            ps3.setInt(1, o);
            ps3.executeUpdate();
            con.close();
            ps.close();
            return o;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public static Food getFood(int id){
        Food f = null ;
        String SQL = "SELECT * FROM food WHERE food_id = ?";
        Connection con = null ;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                f = new Food(rs);
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return f ;
    }
    public static ArrayList<Food> findFood(){
        ArrayList<Food> foods = new ArrayList();
        String SQL = "SELECT * FROM Food";
        Connection con = null ;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Food f = new Food(rs);
                foods.add(f);
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return foods ;
    }
    public static void CalRate(int foodId){
        String SQL1 = "SELECT rating1,rating2,rating3,rating4,rating5 FROM rating WHERE food_id = "+foodId ;
        String SQL2 = "UPDATE food SET rating = ? WHERE food_id = "+foodId ;
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL1);
            PreparedStatement ps2 = con.prepareStatement(SQL2);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                int Rate1 = rs.getInt(1)*1 ;
                int Rate2 = rs.getInt(2)*2 ;
                int Rate3 = rs.getInt(3)*3 ;
                int Rate4 = rs.getInt(4)*4 ;
                int Rate5 = rs.getInt(5)*5 ;
                double avgRate = (double)(Rate1 + Rate2 + Rate3 + Rate4 + Rate5) / (double)(rs.getInt(1)+rs.getInt(2)+rs.getInt(3)+rs.getInt(4)+rs.getInt(5)) ;
                System.out.println(avgRate);
                ps2.setDouble(1, avgRate);
                ps2.executeUpdate();
                con.close();
            } else {
                
            }
        } catch (Exception e){
            System.out.println(e);
        }        
    }
    public static void ChangeRate(int oldRate,int foodId){
        String SQL = "SELECT rating"+oldRate+" FROM rating WHERE food_id = " + foodId ;
        String SQL2 = "UPDATE rating SET rating"+oldRate+" = ? WHERE food_id = " + foodId ;
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            PreparedStatement ps2 = con.prepareStatement(SQL2);
            ResultSet rs = ps.executeQuery();
            rs.next();
            int before = rs.getInt(1);
            before-- ;
            ps2.setInt(1, before);
            ps2.executeUpdate();
            ps.close();
            ps2.close();
            con.close();
        } catch (Exception e){
            System.out.println(e);
        }
    }
    public static List<Food> getFood(String type){
        Food food ;
        List<Food> foods = null;
        Connection con = null;
        String SQL = "SELECT * FROM FOOD WHERE food_type = '"+type+"'";
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                food = new Food(rs);
                if(foods ==null){
                    foods = new ArrayList();
                }
                foods.add(food);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return foods;
    }
}
