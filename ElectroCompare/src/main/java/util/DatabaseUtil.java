package util;

import java.sql.*;
import java.sql.DriverManager;

public class DatabaseUtil {
	
	public static Connection getConnection() { //�����ͺ��̽��� ������� ����
		try {
			String dbURL = "jdbc:mysql://localhost:3306/elecequip";
			String dbID = "root";
			String dbPassword = "rjqnrdl711@";
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch(SQLException ex) {
			System.out.println("SQLException :"+ex);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}