package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class StudentBasicInfoJB {

	private String uname;
	private String surname;
	private String first_name;
	private String fathername;
	private String mothername;
	private String photo_path;
	private String signature_path;
	private String day;
	private String month;
	private String year;
	private String gender;
	private String permant_address;
	private String local_address;
	private String city;
	private int pin;
	private String state;
	private long stud_contact;
	private long parent_contact;
	private long landline;
	private String email;
	private String password;
	private String resume;

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public StudentBasicInfoJB() {

	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUname() {
		return uname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getSurname() {
		return surname;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}

	public String getFathername() {
		return fathername;
	}

	public void setMothername(String mothername) {
		this.mothername = mothername;
	}

	public String getMothername() {
		return mothername;
	}

	public void setPhoto_path(String photo_path) {
		this.photo_path = photo_path;
	}

	public String getPhoto_path() {
		return photo_path;
	}

	public void setSignature_path(String signature_path) {
		this.signature_path = signature_path;
	}

	public String getSignature_path() {
		return signature_path;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getDay() {
		return day;
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

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGender() {
		return gender;
	}

	public void setPermant_address(String permant_address) {
		this.permant_address = permant_address;
	}

	public String getPermant_address() {
		return permant_address;
	}

	public void setLocal_address(String local_address) {
		this.local_address = local_address;
	}

	public String getLocal_address() {
		return local_address;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCity() {
		return city;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	public int getPin() {
		return pin;
	}

	public void setStud_contact(long stud_contact) {
		this.stud_contact = stud_contact;
	}

	public long getStud_contact() {
		return stud_contact;
	}

	public void setParent_contact(long parent_contact) {
		this.parent_contact = parent_contact;
	}

	public long getParent_contact() {
		return parent_contact;
	}

	public void setLandline(long landline) {
		this.landline = landline;
	}

	public long getLandline() {
		return landline;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

	public void setEmail(String email) {

		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setState(String state) {

		this.state = state;
	}

	public String getState() {
		return state;
	}

	public int basicInfo() throws Exception {
		int i = 0, flag = 0, temp = 1;
		Connection con = DBConnection.getConnection();
		try {

			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select uname from StudentBasicInfo where uname='" + uname + "'");
			if (rs.next()) {
				flag = 1;
			}
			if (flag == 0) {
				String query = "insert into StudentBasicInfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstmt = con.prepareStatement(query);

				pstmt.setString(1, uname);
				pstmt.setString(2, surname);
				pstmt.setString(3, first_name);
				pstmt.setString(4, fathername);
				pstmt.setString(5, mothername);
				pstmt.setString(6, photo_path);
				pstmt.setString(7, signature_path);
				pstmt.setString(8, day);
				pstmt.setString(9, month);
				pstmt.setString(10, year);
				pstmt.setString(11, gender);
				pstmt.setString(12, permant_address);
				pstmt.setString(13, local_address);
				pstmt.setString(14, city);
				pstmt.setInt(15, pin);
				pstmt.setString(16, state);
				pstmt.setLong(17, stud_contact);
				pstmt.setLong(18, parent_contact);
				pstmt.setLong(19, landline);
				pstmt.setString(20, email);
				pstmt.setString(21, resume);

				i = pstmt.executeUpdate();
				con.close();
				temp = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}

}