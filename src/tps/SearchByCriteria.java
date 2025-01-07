package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SearchByCriteria {

	private float aggregate;
	private String branch, uname, academicyear;
	private int lback, dback;

	public float getAggregate() {
		return aggregate;
	}

	public void setAggregate(float aggregate) {
		this.aggregate = aggregate;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public int getLback() {
		return lback;
	}

	public void setLback(int lback) {
		this.lback = lback;
	}

	public int getDback() {
		return dback;
	}

	public void setDback(int dback) {
		this.dback = dback;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getAcademicyear() {
		return academicyear;
	}

	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}

	public ResultSet searchByCriteria() {
		ResultSet rs = null;
		Connection con = DBConnection.getConnection();
		// ArrayList<tps.SearchByCriteria> list=new
		// ArrayList<tps.SearchByCriteria>();
		String criteria = "select college,surname,first_name,fathername,day,month,year,permant_address,stud_contact,email,aggregate from StudentAcademicInfo1 s,StudentBasicInfo b,LoginTable1 l where l.uname=b.uname and l.uname=s.uname and s.aggregate>=? and s.dback<=? and lback<=? and s.academicyear=? and s.branch=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(criteria);
			// pstmt.setString(1,uname);
			pstmt.setFloat(1, aggregate);
			pstmt.setInt(2, dback);
			pstmt.setInt(3, lback);
			pstmt.setString(4, academicyear);
			pstmt.setString(5, branch);

			rs = pstmt.executeQuery();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		
		return rs;
	}

}
