package connect;

import java.sql.Connection;
import java.sql.DriverManager;

 
public class DBConnect {

	    private static String DB_URL = "jdbc:mysql://localhost:3306/userdb";
	    private static String USER_NAME = "root";
	    private static String PASSWORD = "30bto7caudien";
	

	    	public static Connection getConnection() {
	        Connection conn = null;
	        try {
	        	System.out.println("Connect to MySQL database successfully!");
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
	           
	        } catch (Exception ex) {
	        	System.out.println("Connect Fail");
				// print error if failure
	            ex.printStackTrace();
	        }
	        return conn;
	    }
}
