package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ViewCompany {
	ResultSet rs = null;

	public ArrayList<tps.Company_InfoJB> viewCompanyInfo() {
		Connection con = DBConnection.getConnection();
		String viewCompany = "select * from Company_Info";
		ArrayList<tps.Company_InfoJB> clist = new ArrayList<Company_InfoJB>();
		try {
			PreparedStatement pst = con.prepareStatement(viewCompany);
			rs = pst.executeQuery();

			while (rs.next()) {
				Company_InfoJB cjb = new Company_InfoJB();

				cjb.setCompany_id(rs.getInt(1));
				cjb.setCompany_name(rs.getString(2));
				cjb.setContact_person(rs.getString(3));
				cjb.setAddress(rs.getString(4));
				cjb.setCity(rs.getString(5));
				cjb.setZipcode(rs.getInt(6));

				cjb.setMobileno(rs.getLong(7));
				cjb.setEmail(rs.getString(8));
				cjb.setWebsite(rs.getString(9));

				clist.add(cjb);
			}
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		return clist;
	}
}
