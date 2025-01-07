package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ShowByUname {
	ResultSet rs = null;

	public ResultSet showByUname() {
		try {
			Connection con = DBConnection.getConnection();
			String unamequery = "select uname from LoginTable1 where type='Student'";
			PreparedStatement pre = con.prepareStatement(unamequery);
			rs = pre.executeQuery();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		return rs;
	}

}
