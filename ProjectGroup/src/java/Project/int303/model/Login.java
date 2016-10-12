/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.int303.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ยีนส์
 */
public class Login {

    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    private boolean CheckUser(Login l){
        String sql = "select username , password , email from login where username = ?";
        Connection conn = null;
        boolean a = false ;
        try {
            conn = ConnectionBuilder.getCon();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, l.username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                if(rs.getString(password)==l.getPassword()){
                    a = true ;
                }
                else {
                    a = false ;
                }
            } else {
                a = false ;
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return a ;
    }
}
