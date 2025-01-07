package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginTPS {
	String uname, pass, type;
	int user_id;

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUname() {
		return uname;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPass() {
		return pass;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getType() {
		return type;
	}

	public ResultSet validate() throws Exception {

		Connection con = DBConnection.getConnection();
		ResultSet rs = null;
		String sql = "select * from LoginTable1 where uname=? and pass=? and type=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, uname);
		ps.setString(2, pass);
		ps.setString(3, type);
		rs = ps.executeQuery();

		// con.close();

		return rs;

	}

	public int NewUser() throws Exception {
		int i = 0, flag = 0;
		Connection con = DBConnection.getConnection();
		ResultSet rs = null;
		String uname1 = null;
		String cuname = this.getUname();
		try {
			String uquery = "select uname from LoginTable1";
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(uquery);
			while (rs.next()) {
				uname1 = rs.getString(1);
				if (cuname.equals(uname1)) {
					flag = 1;
				}
			}
			if (flag == 0) {
				String sql = "insert into LoginTable1 values(?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, uname);
				ps.setString(2, pass);
				ps.setString(3, type);

				i = ps.executeUpdate();
				con.close();
			} else {
				i = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

}
