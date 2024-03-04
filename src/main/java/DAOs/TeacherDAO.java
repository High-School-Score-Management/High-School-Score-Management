/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import DB.DBConnection;
import Model.StudentScoreModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class TeacherDAO {
    
    Connection conn;

    public TeacherDAO() {
        try {
            conn = (Connection) DBConnection.connect();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean existAccount(String phone_number, String password) {
        try {
            PreparedStatement ps = conn.prepareStatement("Select * from teacher Where phone_number = ? AND password = ?");
            ps.setString(1, phone_number);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public ResultSet getAllClass(){
        ResultSet rs = null;
        
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select id from class");
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rs;
    }
    
    public ResultSet getAllSubject(){
        ResultSet rs = null;
        
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from subject");
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rs;
    }
    
    public ResultSet getAllSemester(){
        ResultSet rs = null;
        
        
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from semester");
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rs;
    }
    
    public String getTeacherNameById(int id){
        ResultSet rs = null;
        String name = "";
        
        try {
            PreparedStatement ps = conn.prepareStatement("select name from teacher where id = ?");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                name = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return name;
    }
    
    public int getTeacherByPhoneNumber(String phoneNumber){
        ResultSet rs = null;
        int id = 0;
        
        try {
            PreparedStatement ps = conn.prepareStatement("select id from teacher where phone_number = ?");
            ps.setString(1, phoneNumber);
            rs = ps.executeQuery();
            while(rs.next()){
                id = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return id;
    }
    
    public boolean getTeacherByClassAndSubject(String classes, int subject_id, int id){
        ResultSet rs = null;
        int newId = 0;
        try {
            PreparedStatement ps = conn.prepareStatement("select teacher_id from teaching where class_id = ? and subject_id = ?");
            ps.setString(1, classes);
            ps.setInt(2, subject_id);
            
            rs = ps.executeQuery();
            while(rs.next()){
                newId = rs.getInt(1);
            }
            if(newId == id)
                return true;
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
    }
    
    public ResultSet getStudent(String nameClass, int subject_id, int semester_id){
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT DISTINCT  score.student_id, student.phone_number, student.name, student.birthday, scoreMouth, scoreShortExam, scoreMidSemester, scoreSemester\n" +
"from studying\n" +
"JOIN student ON student.id = studying.student_id\n" +
"JOIN score ON student.id = score.student_id\n" +
"WHERE studying.class_id = ? AND score.subject_id = ? AND score.semester = ?\n" +
"order by score.student_id");
            
            ps.setString(1, nameClass);
            ps.setInt(2, subject_id);
            ps.setInt(3, semester_id);
            
            rs = ps.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rs != null? rs: null;
    }
    
    public void updateScoreById(int student_id, String scoreMouth, String scoreShortExam, String scoreMidSemester, String scoreSemester){
        try {
            PreparedStatement ps = conn.prepareStatement("update score set scoreMouth=?, scoreShortExam=?, scoreMidSemester=?, scoreSemester=? where student_id=?");
            if(scoreMouth.equals(""))
                ps.setNull(1, java.sql.Types.FLOAT);
            else
                ps.setFloat(1, Float.parseFloat(scoreMouth));
            
            if(scoreShortExam.equals(""))
                ps.setNull(2, java.sql.Types.FLOAT);
            else
                ps.setFloat(2, Float.parseFloat(scoreShortExam));
            
            if(scoreMidSemester.equals(""))
                ps.setNull(3, java.sql.Types.FLOAT);
            else
                ps.setFloat(3, Float.parseFloat(scoreMidSemester));
            
            if(scoreSemester.equals(""))
                ps.setNull(4, java.sql.Types.FLOAT);
            else
                ps.setFloat(4, Float.parseFloat(scoreSemester));       
            
            ps.setFloat(5, student_id);
            
            ps.executeUpdate();
           
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
