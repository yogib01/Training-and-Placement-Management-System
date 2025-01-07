package tps;

import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chapter;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Section;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class CriteriaListJB {

	private static String FILE = "C://Users//GS-1226//Sangramsing//Projects//DemoProjects/OnlineTrainingandPlacement/WebContent/PdfDoc/ListOfStudent.pdf";
	private static Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 18,
			Font.BOLD);
	private static Font redFont = new Font(Font.FontFamily.TIMES_ROMAN, 12,
			Font.NORMAL, BaseColor.RED);
	private static Font subFont = new Font(Font.FontFamily.TIMES_ROMAN, 16,
			Font.BOLD);
	private static Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12,
			Font.BOLD);

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

	public int printPdf() {
		int i = 0;
		try {
			Document document = new Document();
			PdfWriter.getInstance(document, new FileOutputStream(FILE));
			document.open();
			addContent(document);
			document.close();
			i = 1;
		} catch (Exception e) {
			i = 0;
			e.printStackTrace();
		}

		return i;
	}

	private void addContent(Document document) throws DocumentException {

		Paragraph preface = new Paragraph(
				"List of students eligible for the given criteria", catFont);
		// addEmptyLine(preface, 1);
		// preface.add(new
		// Paragraph("List of students eligible for the given criteria",
		// catFont));
		// Second parameter is the number of the chapter
		Chapter catPart = new Chapter(preface, 1);
		// addEmptyLine(preface, 1);
		Paragraph preface1 = new Paragraph();
		Section subCatPart = catPart.addSection(preface1);

		// Add a table
		createTable(subCatPart);

		// Now add all this to the document
		document.add(catPart);

	}

	private void createTable(Section subCatPart) throws BadElementException {
		PdfPTable table = new PdfPTable(7);

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

			// t.setBorderColor(BaseColor.GRAY);
			// t.setPadding(4);
			// t.setSpacing(4);
			// t.setBorderWidth(1);

			PdfPCell c1 = new PdfPCell(new Phrase("College"));
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);

			c1 = new PdfPCell(new Phrase("Name of Student"));
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);

			c1 = new PdfPCell(new Phrase("Date of Birth"));
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			table.setHeaderRows(1);

			c1 = new PdfPCell(new Phrase("Address"));
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			table.setHeaderRows(1);

			c1 = new PdfPCell(new Phrase("Mobile Number"));
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			table.setHeaderRows(1);

			c1 = new PdfPCell(new Phrase("Email Address"));
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			table.setHeaderRows(1);

			c1 = new PdfPCell(new Phrase("Aggregate"));
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c1);
			table.setHeaderRows(1);
			int i = 1;

			while (rs.next()) {

				table.addCell(rs.getString(1));
				table.addCell(rs.getString(2) + " " + rs.getString(3) + " "+ rs.getString(4));
				table.addCell(rs.getString(5)+" "+ rs.getString(6)+" "+rs.getString(7));
				table.addCell(rs.getString(8));
				table.addCell(rs.getString(9));
				table.addCell(rs.getString(10));
				table.addCell(rs.getString(11));
			}
			con.close();
		} catch (SQLException sql) {
			sql.printStackTrace();
		}
		;
		subCatPart.add(table);

	}

	private static void addEmptyLine(Paragraph paragraph, int number) {
		for (int i = 0; i < number; i++) {
			paragraph.add(new Paragraph(" "));
		}
	}

}
