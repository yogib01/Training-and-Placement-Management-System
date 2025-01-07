package tps;

import java.sql.*;

import java.util.*;

public class ViewStudBasicInfo {

	private String uname, academicyear;
	private String first_name, fathername, surname, mothername, gender,
			permant_address, local_address, city, state, email;
	private int admission_year, current_year, lback, dback;
	private String college, branch;
	private String cliteracy, courses, sppt, others, project;
	private float hsc, ssc, diploma, fe1, fe2, se1, se2, te1, te2, be1, be2,aggregate;
	private String dob;
	private String day,month,year;
	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	ResultSet rs = null;

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAcademicyear() {
		return academicyear;
	}

	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}

	private int pin;
	private long stud_contact, parent_contact, landline;

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getFathername() {
		return fathername;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getMothername() {
		return mothername;
	}

	public void setMothername(String mothername) {
		this.mothername = mothername;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPermant_address() {
		return permant_address;
	}

	public void setPermant_address(String permant_address) {
		this.permant_address = permant_address;
	}

	public String getLocal_address() {
		return local_address;
	}

	public void setLocal_address(String local_address) {
		this.local_address = local_address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getStud_contact() {
		return stud_contact;
	}

	public void setStud_contact(long stud_contact) {
		this.stud_contact = stud_contact;
	}

	public long getParent_contact() {
		return parent_contact;
	}

	public void setParent_contact(long parent_contact) {
		this.parent_contact = parent_contact;
	}

	public long getLandline() {
		return landline;
	}

	public void setLandline(long landline) {
		this.landline = landline;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUname() {
		return uname;
	}

	public int getAdmission_year() {
		return admission_year;
	}

	public void setAdmission_year(int admissionYear) {
		admission_year = admissionYear;
	}

	public int getCurrent_year() {
		return current_year;
	}

	public void setCurrent_year(int currentYear) {
		current_year = currentYear;
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

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public float getHsc() {
		return hsc;
	}

	public void setHsc(float hsc) {
		this.hsc = hsc;
	}

	public float getSsc() {
		return ssc;
	}

	public void setSsc(float ssc) {
		this.ssc = ssc;
	}

	public float getDiploma() {
		return diploma;
	}

	public void setDiploma(float diploma) {
		this.diploma = diploma;
	}

	public float getFe1() {
		return fe1;
	}

	public void setFe1(float fe1) {
		this.fe1 = fe1;
	}

	public float getFe2() {
		return fe2;
	}

	public void setFe2(float fe2) {
		this.fe2 = fe2;
	}

	public float getSe1() {
		return se1;
	}

	public void setSe1(float se1) {
		this.se1 = se1;
	}

	public float getSe2() {
		return se2;
	}

	public void setSe2(float se2) {
		this.se2 = se2;
	}

	public float getTe1() {
		return te1;
	}

	public void setTe1(float te1) {
		this.te1 = te1;
	}

	public float getTe2() {
		return te2;
	}

	public void setTe2(float te2) {
		this.te2 = te2;
	}

	public float getBe1() {
		return be1;
	}

	public void setBe1(float be1) {
		this.be1 = be1;
	}

	public float getBe2() {
		return be2;
	}

	public void setBe2(float be2) {
		this.be2 = be2;
	}

	public float getAggregate() {
		return aggregate;
	}

	public void setAggregate(float aggregate) {
		this.aggregate = aggregate;
	}

	public String getCliteracy() {
		return cliteracy;
	}

	public void setCliteracy(String cliteracy) {
		this.cliteracy = cliteracy;
	}

	public String getCourses() {
		return courses;
	}

	public void setCourses(String courses) {
		this.courses = courses;
	}

	public String getSppt() {
		return sppt;
	}

	public void setSppt(String sppt) {
		this.sppt = sppt;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public ArrayList<tps.StudentBasicInfoJB> viewStudentInfo() {
		Connection con = DBConnection.getConnection();

		ArrayList<tps.StudentBasicInfoJB> list = new ArrayList<tps.StudentBasicInfoJB>();
		try {

			PreparedStatement pstmt = con
					.prepareStatement("select * from StudentBasicInfo where uname='"
							+ this.getUname() + "'");
			// pstmt.setString(1,uname);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				StudentBasicInfoJB ai = new StudentBasicInfoJB();
				ai.setUname(rs.getString(1));
				ai.setSurname(rs.getString(2));
				ai.setFirst_name(rs.getString(3));
				ai.setFathername(rs.getString(4));
				ai.setMothername(rs.getString(5));
				ai.setPhoto_path(rs.getString(6));
				ai.setSignature_path(rs.getString(7));
				ai.setDay(rs.getString(8));
				ai.setMonth(rs.getString(9));
				ai.setYear(rs.getString(10));
				ai.setGender(rs.getString(11));
				ai.setPermant_address(rs.getString(12));
				ai.setLocal_address(rs.getString(13));
				ai.setCity(rs.getString(14));
				ai.setPin(rs.getInt(15));
				ai.setState(rs.getString(16));
				ai.setStud_contact(rs.getLong(17));
				ai.setParent_contact(rs.getLong(18));
				ai.setLandline(rs.getLong(19));
				ai.setEmail(rs.getString(20));

				list.add(ai);
			}
			con.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public ArrayList<tps.StudentAcademicInfoJB> viewStudentAcademicInfo() {
		Connection con = DBConnection.getConnection();

		ArrayList<tps.StudentAcademicInfoJB> list = new ArrayList<tps.StudentAcademicInfoJB>();
		try {

			PreparedStatement pstmt = con
					.prepareStatement("select * from StudentAcademicInfo1 where uname='"
							+ this.getUname() + "'");
			// pstmt.setString(1,uname);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				StudentAcademicInfoJB ai = new StudentAcademicInfoJB();
				ai.setUname(rs.getString(1));
				ai.setAdmission_year(rs.getInt(2));
				ai.setCollege(rs.getString(3));
				ai.setBranch(rs.getString(4));
				ai.setHsc(rs.getFloat(5));
				ai.setSsc(rs.getFloat(6));
				ai.setDiploma(rs.getFloat(7));
				ai.setFe1(rs.getFloat(8));
				ai.setFe2(rs.getFloat(9));
				ai.setSe1(rs.getFloat(10));
				ai.setSe2(rs.getFloat(11));
				ai.setTe1(rs.getFloat(12));
				ai.setTe2(rs.getFloat(13));
				ai.setAggregate(rs.getFloat(14));
				ai.setLback(rs.getInt(15));
				ai.setDback(rs.getInt(16));
				ai.setCurrent_year(rs.getInt(17));
				ai.setBe1(rs.getFloat(18));
				ai.setBe2(rs.getFloat(19));
				ai.setAcademicyear(rs.getString(20));
				list.add(ai);
			}

			con.close();
			rs.close();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}

		return list;
	}

	public ArrayList<tps.AdditionalAcademicInfoJB> viewStudentOtherInfo() {
		Connection con = DBConnection.getConnection();

		ArrayList<tps.AdditionalAcademicInfoJB> list = new ArrayList<tps.AdditionalAcademicInfoJB>();
		try {

			PreparedStatement pstmt = con
					.prepareStatement("select * from AdditionalAcademicInfo where uname='"
							+ this.getUname() + "'");
			// pstmt.setString(1,uname);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				AdditionalAcademicInfoJB ai = new AdditionalAcademicInfoJB();
				ai.setUname(rs.getString(1));
				ai.setCliteracy(rs.getString(2));
				ai.setCourses(rs.getString(3));
				ai.setSppt(rs.getString(4));
				ai.setProject(rs.getString(5));
				ai.setOthers(rs.getString(6));

				list.add(ai);
			}
			con.close();
			rs.close();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		return list;
	}

	public int updateBasicInfo() {
		int i = 0;
		Connection con = DBConnection.getConnection();
		String updateQuery = "update StudentBasicInfo set surname=?,first_name=?,fathername=?,mothername=?,day=?,month=?,year=?,gender=?,permant_address=?,local_address=?,city=?,pin=?,state=?,stud_contact=?,parent_contact=?,landline=?,email=? where uname='"
				+ this.getUname() + "'";
		try {
			PreparedStatement pstmt = con.prepareStatement(updateQuery);
			// pstmt.setString(1,uname);
			pstmt.setString(1,surname);
			pstmt.setString(2,first_name);
			pstmt.setString(3,fathername);
			pstmt.setString(4,mothername);
			pstmt.setString(5,day);
			pstmt.setString(6,month);
			pstmt.setString(7,year);
			pstmt.setString(8,gender);
			pstmt.setString(9,permant_address);
			pstmt.setString(10,local_address);
			pstmt.setString(11,city);
			pstmt.setInt(12,pin);
			pstmt.setString(13,state);
			pstmt.setLong(14,stud_contact);
			pstmt.setLong(15,parent_contact);
			pstmt.setLong(16,landline);
			pstmt.setString(17,email);

			i = pstmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public int updateAcademicInfo() {
		Connection con = DBConnection.getConnection();
		int i = 0;
		String updateAcademic = "update StudentAcademicInfo1 set admission_year=?,college=?,branch=?,hsc=?,ssc=?,diploma=?,fe1=?,fe2=?,se1=?,se2=?,te1=?,te2=?,aggregate=?,lback=?,dback=?,current_year=?,be1=?,be2=?,academicyear=? where uname='"
				+ this.getUname() + "'";
		try {
			PreparedStatement pstmt = con.prepareStatement(updateAcademic);

			pstmt.setInt(1, admission_year);
			pstmt.setString(2, college);
			pstmt.setString(3, branch);
			pstmt.setFloat(4, hsc);
			pstmt.setFloat(5, ssc);
			pstmt.setFloat(6, diploma);
			pstmt.setFloat(7, fe1);
			pstmt.setFloat(8, fe1);
			pstmt.setFloat(9, se1);
			pstmt.setFloat(10, se2);
			pstmt.setFloat(11, te1);
			pstmt.setFloat(12, te2);
			pstmt.setFloat(13, aggregate);
			pstmt.setInt(14, lback);
			pstmt.setInt(15, dback);
			pstmt.setInt(16, current_year);
			pstmt.setFloat(17, be1);
			pstmt.setFloat(18, be2);
			pstmt.setString(19, academicyear);
			i = pstmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	public int updateOtherInfo() {
		int i = 0;
		Connection con = DBConnection.getConnection();
		String updateOther = "update AdditionalAcademicInfo set cliteracy=?,courses=?,sppt=?,project=?,others=? where uname='"
				+ this.getUname() + "'";
		try {
			PreparedStatement pstmt = con.prepareStatement(updateOther);

			pstmt.setString(1, cliteracy);
			pstmt.setString(2, courses);
			pstmt.setString(3, sppt);
			pstmt.setString(4, project);
			pstmt.setString(5, others);
			i = pstmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
}