package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentAcademicInfoJB {

	private String uname;
	private int admission_year;
	private int current_year;
	private String college;
	private String branch;
	private float hsc;
	private float ssc;
	private float diploma;
	private float fe1;
	private float fe2;
	private float se1;
	private float se2;
	private float te1;
	private float te2;
	private float be1;
	private float be2;
	private float aggregate;
	private int lback;
	private int dback;
	private String academicyear;
	private LoginTPS login;

	public void setLogin(LoginTPS login) {
		this.login = login;
	}

	public LoginTPS getLogin() {
		return login;
	}

	private String pass;

	public StudentAcademicInfoJB() {
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUname() {
		return uname;
	}

	public void setAdmission_year(int admission_year) {
		this.admission_year = admission_year;
	}

	public int getAdmission_year() {
		return admission_year;
	}

	public void setCurrent_year(int current_year) {
		this.current_year = current_year;
	}

	public int getCurrent_year() {
		return current_year;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getCollege() {
		return college;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getBranch() {
		return branch;
	}

	public void setHsc(float hsc) {
		this.hsc = hsc;
	}

	public float getHsc() {
		return hsc;
	}

	public void setSsc(float ssc) {
		this.ssc = ssc;
	}

	public float getSsc() {
		return ssc;
	}

	public void setFe1(float fe1) {
		this.fe1 = fe1;
	}

	public float getFe1() {
		return fe1;
	}

	public void setFe2(float fe2) {
		this.fe2 = fe2;
	}

	public float getFe2() {
		return fe2;
	}

	public void setSe1(float se1) {
		this.se1 = se1;
	}

	public float getSe1() {
		return se1;
	}

	public void setSe2(float se2) {
		this.se2 = se2;
	}

	public float getSe2() {
		return se2;
	}

	public void setTe1(float te1) {
		this.te1 = te1;
	}

	public float getTe1() {
		return te1;
	}

	public void setTe2(float te2) {
		this.te2 = te2;
	}

	public float getTe2() {
		return te2;
	}

	public void setBe1(float be1) {
		this.be1 = be1;
	}

	public float getBe1() {
		return be1;
	}

	public void setBe2(float be2) {
		this.be2 = be2;
	}

	public float getBe2() {
		return be2;
	}

	public void setAggregate(float aggregate) {
		this.aggregate = aggregate;
	}

	public float getAggregate() {
		return aggregate;
	}

	public void setLback(int lback) {
		this.lback = lback;
	}

	public int getLback() {
		return lback;
	}

	public void setDback(int dback) {
		this.dback = dback;
	}

	public int getDback() {
		return dback;
	}

	public void setDiploma(Float diploma) {
		this.diploma = diploma;
	}

	public Float getDiploma() {
		return diploma;
	}

	public String getAcademicyear() {
		return academicyear;
	}

	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}

	public int academicInfo() {
		int i = 0;
		Connection con = DBConnection.getConnection();
		ResultSet rs = null;
		try {

			String query2 = "select uname from LoginTable1 where uname=? and pass=?";
			PreparedStatement pstmt1 = con.prepareStatement(query2);
			pstmt1.setString(1, uname);
			pstmt1.setString(2, pass);
			rs = pstmt1.executeQuery();
			if (rs.next()) {
				uname = rs.getString(1);
			}

			String query = "insert into StudentAcademicInfo1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);

			// user_id=lastuserid+1;

			pstmt.setString(1, uname);
			pstmt.setInt(2, admission_year);
			pstmt.setString(3, college);
			pstmt.setString(4, branch);
			pstmt.setFloat(5, hsc);
			pstmt.setFloat(6, ssc);
			pstmt.setFloat(7, diploma);
			pstmt.setFloat(8, fe1);
			pstmt.setFloat(9, fe2);
			pstmt.setFloat(10, se1);
			pstmt.setFloat(11, se2);
			pstmt.setFloat(12, te1);
			pstmt.setFloat(13, te2);
			pstmt.setFloat(14, aggregate);
			pstmt.setInt(15, lback);
			pstmt.setInt(16, dback);
			pstmt.setInt(17, current_year);
			pstmt.setFloat(18, be1);
			pstmt.setFloat(19, be2);
			pstmt.setString(20, academicyear);
			i = pstmt.executeUpdate();
			con.close();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		return i;
	}
}