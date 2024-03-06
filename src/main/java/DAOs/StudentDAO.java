/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import DB.DBConnection;
import static DB.DBConnection.connect;
import Model.student;
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
public class StudentDAO {

    Connection conn;

    public StudentDAO() {
        try {
            conn = DBConnection.connect();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean existAccount(String phone_number, String password) {
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from student Where phone_number = ? AND password = ?");
            ps.setString(1, phone_number);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public student getStudent_ByID(String email) {
        String sql = " select *from student st where st.email = ?";

        try {
            PreparedStatement ps = connect().prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                student t = new student(rs.getInt("id"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("name"),
                        rs.getString("gender"),
                        rs.getString("birthday"),
                        rs.getString("phone_number"),
                        rs.getString("address"),
                        rs.getString("status"));
                return t;
            }
        } catch (Exception e) {
            System.out.println("Error in getStudent_ById : " + e);
        }
        return null;
    }

    public student upDateStudent_ByID(student st) {
        String sql = "UPDATE [dbo].[student]\n"
                + "   SET [email] =? \n"
                + "      ,[password] =? \n"
                + "      ,[name] = ?\n"
                + "      ,[gender] =? \n"
                + "      ,[birthday] =? \n"
                + "      ,[phone_number] =? \n"
                + "      ,[address] =? \n"
                + "      ,[status] = ?\n"
                + " WHERE student.id = ?";
        try {
            PreparedStatement rs = connect().prepareStatement(sql);
            rs.setString(1, st.getEmail());
            rs.setString(2, st.getPassword());
            rs.setString(3, st.getName());
            rs.setString(4, st.getGender());
            rs.setString(5, st.getBirthday());
            rs.setString(6, st.getPhone_number());
            rs.setString(7, st.getAddress());
            rs.setString(8, st.getStatus());
            rs.setInt(9, st.getId());
            rs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error in Update Student By ID : " + e);
        }
        return null;
    }

    public boolean checkDUplicate_Phone_Number(String number) {
        String sql = "select phone_number from student where phone_number  = ?";
        try {
            PreparedStatement st = connect().prepareStatement(sql);
            st.setString(1, number);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Check Duplicate phone Number Fails " + e);
        }
        return false;
    }

    public static void main(String[] args) {
        StudentDAO t = new StudentDAO();
        String student_email = "student35@gmail.com";
        System.out.println(t.getStudent_ByID(student_email).toString());
    }

}
