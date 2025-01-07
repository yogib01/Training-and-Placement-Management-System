package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Company_InfoJB {

	private int company_id;
	private String company_name;
	private String contact_person;
	private String address;
	private String city;
	private int zipcode;
	private long mobileno;
	private String email;
	private String website;
	static Connection con;

	public Company_InfoJB() {

	}

	public int getCompany_id() {
		return company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getContact_person() {
		return contact_person;
	}

	public void setContact_person(String contact_person) {
		this.contact_person = contact_person;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public long getMobileno() {
		return mobileno;
	}

	public void setMobileno(long mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public int insertCompanyInfo() {
		int i = 0, lastcid = 0;
		ResultSet rs = null;
		Connection con = DBConnection.getConnection();
		try {

			String cid = "select max(company_id) from Company_Info";
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(cid);

			if (rs.next()) {
				lastcid = rs.getInt(1);
			}
			company_id = lastcid + 1;

			String query = "insert into Company_Info values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);

			pstmt.setInt(1, company_id);
			pstmt.setString(2, company_name);
			pstmt.setString(3, contact_person);
			pstmt.setString(4, address);
			pstmt.setString(5, city);
			pstmt.setInt(6, zipcode);
			pstmt.setLong(7, mobileno);
			pstmt.setString(8, email);
			pstmt.setString(9, website);

			i = pstmt.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;

	}

}
