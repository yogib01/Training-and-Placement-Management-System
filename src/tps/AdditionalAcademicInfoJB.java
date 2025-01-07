package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdditionalAcademicInfoJB {

	private String uname;
	private String cliteracy;
	private String courses;
	private String sppt;
	private String project;
	private String others;

	public AdditionalAcademicInfoJB() {
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUname() {
		return uname;
	}

	public void setCliteracy(String cliteracy) {
		this.cliteracy = cliteracy;
	}

	public String getCliteracy() {
		return cliteracy;
	}

	public void setCourses(String courses) {
		this.courses = courses;
	}

	public String getCourses() {
		return courses;
	}

	public void setSppt(String sppt) {
		this.sppt = sppt;
	}

	public String getSppt() {
		return sppt;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getProject() {
		return project;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public String getOthers() {
		return others;
	}

	public int additionalAcademicInfo() {
		int i = 0;
		Connection con = DBConnection.getConnection();
		try {
			String query = "insert into AdditionalAcademicInfo values(?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);

			pstmt.setString(1, uname);
			pstmt.setString(2, cliteracy);
			pstmt.setString(3, courses);
			pstmt.setString(4, sppt);
			pstmt.setString(5, project);
			pstmt.setString(6, others);

			i = pstmt.executeUpdate();
			con.close();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		return i;
	}
}