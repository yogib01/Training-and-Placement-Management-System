package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Recruiter {

	private String companyname;
	private int job_id;
	private String job_Specification;
	private String branch;
	private String platform;
	private String required_course;
	private int required_candidates;
	private String criteria;
	private String other_notification;
	private float annual_package;
	private String website;
	private String uname;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getJob_id() {
		return job_id;
	}

	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}

	public String getJob_Specification() {
		return job_Specification;
	}

	public void setJob_Specification(String job_Specification) {
		this.job_Specification = job_Specification;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getRequired_course() {
		return required_course;
	}

	public void setRequired_course(String required_course) {
		this.required_course = required_course;
	}

	public int getRequired_candidates() {
		return required_candidates;
	}

	public void setRequired_candidates(int required_candidates) {
		this.required_candidates = required_candidates;
	}

	public String getCriteria() {
		return criteria;
	}

	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}

	public String getOther_notification() {
		return other_notification;
	}

	public void setOther_notification(String other_notification) {
		this.other_notification = other_notification;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public float getAnnual_package() {
		return annual_package;
	}

	public void setAnnual_package(float annual_package) {
		this.annual_package = annual_package;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public int recruiterInfo() {
		int i = 0, lastcid = 0;
		ResultSet rs = null;
		Connection con = DBConnection.getConnection();
		try {

			String cid = "select max(job_id) from Recruiter";
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(cid);

			if (rs.next()) {
				lastcid = rs.getInt(1);
			}
			job_id = lastcid + 1;

			String query = "insert into Recruiter values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);

			pstmt.setString(1, companyname);
			pstmt.setString(2, job_Specification);
			pstmt.setString(3, branch);
			pstmt.setString(4, platform);
			pstmt.setString(5, required_course);
			pstmt.setString(6, criteria);
			pstmt.setString(7, other_notification);
			pstmt.setFloat(8, annual_package);
			pstmt.setString(9, website);
			pstmt.setInt(10, required_candidates);
			pstmt.setInt(11, job_id);
			pstmt.setString(12, uname);
			i = pstmt.executeUpdate();
			con.close();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		return i;
	}
}
