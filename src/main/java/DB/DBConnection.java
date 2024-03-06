/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DBConnection {

   public static Connection connect() throws ClassNotFoundException, SQLException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        //Tao doi tuong Connection
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://OUTIS\\SQLEXPRESS:1433;databaseName=High_School_Scores_Management2;user=sa;password=0909577456az@;encrypt=true;trustServerCertificate=true;");
        return conn;
    }

  

}