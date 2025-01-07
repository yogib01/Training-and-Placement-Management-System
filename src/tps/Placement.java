package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Placement {
	private String branch, company_name, studentname, academicyear, month;
	private int day, year;

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getAcademicyear() {
		return academicyear;
	}

	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}

	public int placement() {
		Connection con = DBConnection.getConnection();
		int i = 0;
		try {
			String qry = "insert into Placement values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(qry);
			pstmt.setInt(1, day);
			pstmt.setString(2, month);
			pstmt.setInt(3, year);
			pstmt.setString(4, academicyear);
			pstmt.setString(5, branch);
			pstmt.setString(6, studentname);
			pstmt.setString(7, company_name);

			i = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

}
