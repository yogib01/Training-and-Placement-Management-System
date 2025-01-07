package tps;

import java.io.FileOutputStream;

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

public class CriteriaList {

	private static String FILE = "c:/temp/FirstPdf.pdf";
	private static Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 18,
			Font.BOLD);
	private static Font redFont = new Font(Font.FontFamily.TIMES_ROMAN, 12,
			Font.NORMAL, BaseColor.RED);
	private static Font subFont = new Font(Font.FontFamily.TIMES_ROMAN, 16,
			Font.BOLD);
	private static Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12,
			Font.BOLD);
	private String college;

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public int criteriaList() {
		int i = 0;
		try {
			Document document = new Document();
			PdfWriter.getInstance(document, new FileOutputStream(FILE));
			document.open();
			// addMetaData(document);
			// addTitlePage(document);
			addContent(document);
			document.close();
			i = 1;
		} catch (Exception e) {
			i = 0;
			e.printStackTrace();
		}
		return i;
	}

	/*
	 * private static void addMetaData(Document document) {
	 * document.addTitle("My first PDF"); document.addSubject("Using iText");
	 * document.addKeywords("Java, PDF, iText");
	 * document.addAuthor("SangramSing");
	 * document.addCreator("SSBT Developers"); }
	 */

	private static void addContent(Document document) throws DocumentException {

		Paragraph preface = new Paragraph();
		addEmptyLine(preface, 1);
		preface.add(new Paragraph(
				"List of students eligible for the given criteria", catFont));
		// Second parameter is the number of the chapter
		Chapter catPart = new Chapter(new Paragraph(), 1);

		Paragraph subPara = new Paragraph("", subFont);
		Section subCatPart = catPart.addSection(subPara);

		// Add a table
		createTable(subCatPart);

		// Now add all this to the document
		document.add(catPart);

	}

	private static void createTable(Section subCatPart)
			throws BadElementException {
		PdfPTable table = new PdfPTable(4);

		// Connection con=DBConnection.getConnection();

		// t.setBorderColor(BaseColor.GRAY);
		// t.setPadding(4);
		// t.setSpacing(4);
		// t.setBorderWidth(1);

		PdfPCell c1 = new PdfPCell(new Phrase("Sr No."));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);

		c1 = new PdfPCell(new Phrase("Name of Student"));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);

		c1 = new PdfPCell(new Phrase("Mobile Number"));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);
		table.setHeaderRows(1);

		c1 = new PdfPCell(new Phrase("Email Address"));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);
		table.setHeaderRows(1);

		table.addCell("rs.getString()");
		table.addCell("1.1");
		table.addCell("1.2");
		table.addCell("1.3");
		table.addCell("2.1");
		table.addCell("2.2");
		table.addCell("2.3");
		table.addCell("2.4");

		subCatPart.add(table);

	}

	private static void addEmptyLine(Paragraph paragraph, int number) {
		for (int i = 0; i < number; i++) {
			paragraph.add(new Paragraph(" "));
		}
	}
}
