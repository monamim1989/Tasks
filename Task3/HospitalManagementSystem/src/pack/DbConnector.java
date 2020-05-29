package pack;

import java.sql.*;

public class DbConnector {
	
	public static Connection getConnection() {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "hospital";
        String driver = "com.mysql.cj.jdbc.Driver";
        String userName = "root";
        String password = "root";
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected to the database");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
	
    public static void main(String arg[]){
        DbConnector.getConnection();
    }
}
