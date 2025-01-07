package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Notification {

	private String uname, companyname;
	private int job_id;

	public int getJob_id() {
		return job_id;
	}

	public void setJob_id(int jobId) {
		job_id = jobId;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public int forNotify() {

		Connection con = DBConnection.getConnection();
		int i = 0, job_id = 0;
		PreparedStatement pstmt1;
		try {
			pstmt1 = con
					.prepareStatement("select job_id from Recruiter where uname='"
							+ uname + "' and companyname='" + companyname + "'");

			ResultSet rs = pstmt1.executeQuery();
			while (rs.next()) {
				job_id = rs.getInt(1);
			}

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// Date dt=new Date();
		// int dte=dt.;
		String query = "insert into NotificationAbtCompany values('" + job_id
				+ "','" + uname + "','" + companyname + "','" + new Date()
				+ "')";
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
			i = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

}
