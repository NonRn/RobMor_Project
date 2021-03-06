/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;
import java.sql.* ;
import java.text.SimpleDateFormat;

/**
 *
 * @author ยีนส์
 */
public class User {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    private int userId;
    private String fname;
    private String lname;
    private String gender;
    private Date dob;
    private String telno;
    private String username;
    private String email;
    private Date regis;

    public Date getRegis() {
        return regis;
    }

    public void setRegis(Date regis) {
        this.regis = regis;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getTelno() {
        return telno;
    }

    public void setTelno(String telno) {
        this.telno = telno;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public void register(User u,String password){
        Connection conn = null ;
        String sql1 = "insert into userr(fname,lname,gender,dob,telno,username) values(?,?,?,?,?,?)" ;
        String sql2 = "insert into login(username,pass,email,regis_date) values(?,?,?,?)";
        Date now = new Date();
        try {
            conn = ConnectionBuilder.getConnection();
            PreparedStatement ps1 = conn.prepareStatement(sql1);
            PreparedStatement ps2 = conn.prepareStatement(sql2);
            ps1.setString(1,u.getFname());
            ps1.setString(2,u.getLname());
            ps1.setString(3,u.getGender());
            ps1.setString(4,sdf.format(u.getDob()));
            ps1.setString(5,u.getTelno());
            ps1.setString(6, u.getUsername());
            ps2.setString(1,u.getUsername());
            ps2.setString(2,password);
            ps2.setString(3, u.getEmail());
            ps2.setString(4, sdf.format(now));
            ps2.executeUpdate();
            ps1.executeUpdate();
            conn.close();
        } catch (Exception e){
            System.out.println(e);
        }
    }
    
    public static void editProfile(User u){
        Connection conn = ConnectionBuilder.getConnection();
        String sql = "update userr set fname=? , lname=? , gender=? , telno=? where user_id=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u.getFname());
            ps.setString(2, u.getLname());
            ps.setString(3, u.getGender());
            ps.setString(4, u.getTelno());
            ps.setInt(5, u.getUserId());
            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
        }
    }

    public boolean checkEmail(String email){
        String SQL = "select email from login";
        Connection con = ConnectionBuilder.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                if(!(rs.getString(1).equals(email))){
                    return true ;
                } else {
                    return false ;
                }
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return false ;
    }
    public boolean checkUsername(String username){
        String SQL = "select username from login";
        Connection con = ConnectionBuilder.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                if(!(rs.getString(1).equals(username))){
                    return true ;
                } else {
                    return false ;
                }
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return false ;
    }
    public static User getUser(String username){
        String SQL = "SELECT * FROM userr u JOIN login l ON l.username = u.username where l.username = ?";
        Connection con = ConnectionBuilder.getConnection();
        User u = null ;
        try {
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                u = new User();
                u.setUserId(rs.getInt("user_id"));
                u.setFname(rs.getString("fname"));
                u.setLname(rs.getString("lname"));
                u.setGender(rs.getString("gender"));
                u.setDob(rs.getDate("dob"));
                u.setTelno(rs.getString("telno"));
                u.setUsername(rs.getString("username"));
                u.setEmail(rs.getString("email"));
                u.setRegis(rs.getDate("regis_date"));
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return u ;
    }
    public User getUserById(int id){
        String SQL = "SELECT * FROM Userr u JOIN login l ON u.username = l.username WHERE user_id = "+id ;
        User u = null ;
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                u = new User();
                u.setUserId(rs.getInt("user_id"));
                u.setFname(rs.getString("fname"));
                u.setLname(rs.getString("lname"));
                u.setGender(rs.getString("gender"));
                u.setDob(rs.getDate("dob"));
                u.setTelno(rs.getString("telno"));
                u.setUsername(rs.getString("username"));               
                u.setEmail(rs.getString("email"));
                u.setRegis(rs.getDate("regis_date"));
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return u ;
    }
}
