package tps;

import java.sql.*;
import java.sql.DriverManager;

public class DBConnection {

	static Connection con = null;

	public static Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// DriverManager.registerDriver(new
			// oracle.jdbc.driver.OracleDriver);
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1523:xe", "tps", "tps");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}