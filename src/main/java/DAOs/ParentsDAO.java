/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ParentsDAO {
    
    Connection conn;

    public ParentsDAO() {
        try {
            conn = DBConnection.connect();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ParentsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean existAccount(String phone_number, String password) {
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from parents Where phone_number = ? AND password = ?");
            ps.setString(1, phone_number);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ParentsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
}
