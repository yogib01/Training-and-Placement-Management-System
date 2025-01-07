package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ViewPlacement {
	
	
	public ArrayList<tps.Placement> viewPlacement() {
		ResultSet rs = null;
		Connection con = DBConnection.getConnection();
		ArrayList<tps.Placement> plist = new ArrayList<Placement>();
		try {
			PreparedStatement pstmt = con.prepareStatement("select * from Placement");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Placement pl = new Placement();

				pl.setDay(rs.getInt(1));
				pl.setMonth(rs.getString(2));
				pl.setYear(rs.getInt(3));
				pl.setAcademicyear(rs.getString(4));
				pl.setBranch(rs.getString(5));
				pl.setStudentname(rs.getString(6));
				pl.setCompany_name(rs.getString(7));

				plist.add(pl);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	}
	
	

}
