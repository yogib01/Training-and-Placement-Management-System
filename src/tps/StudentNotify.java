package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class StudentNotify {

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

	public ArrayList<tps.Notification> viewOnlyStudCompany() {
		ResultSet rs = null;
		Connection con = DBConnection.getConnection();
		int job_id = 0;

		ArrayList<tps.Notification> list = new ArrayList<tps.Notification>();
		try {
			Statement stmt = con.createStatement();
			rs = stmt
					.executeQuery("select job_id,uname,companyname from NotificationAbtCompany");

			while (rs.next()) {
				Notification nf = new Notification();

				nf.setJob_id(rs.getInt(1));
				nf.setUname(rs.getString(2));
				nf.setCompanyname(rs.getString(3));

				list.add(nf);
			}
		} catch (SQLException es) {
			es.printStackTrace();
		}
		return list;
	}

	public ArrayList<tps.Recruiter> viewAllInfo() {

		Connection con = DBConnection.getConnection();
		ResultSet rs = null;
		ArrayList<tps.Recruiter> list = new ArrayList<tps.Recruiter>();
		try {
			PreparedStatement pstmt = con
					.prepareStatement("select * from Recruiter where uname='"
							+ this.getUname() + "' and companyname='"
							+ this.getCompanyname() + "' and job_id='"
							+ this.getJob_id() + "'");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Recruiter rc = new Recruiter();
				rc.setCompanyname(rs.getString(1));
				rc.setJob_Specification(rs.getString(2));
				rc.setBranch(rs.getString(3));
				rc.setPlatform(rs.getString(4));
				rc.setRequired_course(rs.getString(5));
				rc.setCriteria(rs.getString(6));
				rc.setOther_notification(rs.getString(7));
				rc.setAnnual_package(rs.getFloat(8));
				rc.setWebsite(rs.getString(9));
				rc.setRequired_candidates(rs.getInt(10));
				rc.setJob_id(rs.getInt(11));
				rc.setUname(rs.getString(12));

				list.add(rc);
			}
			con.close();
		} catch (SQLException es) {
			es.printStackTrace();
		}

		return list;
	}
	
	
}
