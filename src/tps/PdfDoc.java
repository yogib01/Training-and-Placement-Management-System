package tps;

import java.io.File;
import java.io.FileOutputStream;

import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;

import com.lowagie.text.pdf.PdfWriter;

public class PdfDoc {

	public PdfDoc() throws Exception {
		Document pdfdoc = new Document();
		File pdffile = new File("E://HelloWorld.pdf");

		try {
			if (!pdffile.exists()) {
				pdffile.createNewFile();
			}
		} catch (Exception es) {
			es.printStackTrace();
		}

		PdfWriter.getInstance(pdfdoc, new FileOutputStream(pdffile));
		pdfdoc.open();
		pdfdoc.add(new Paragraph("Hello World this is iText API...."));
		pdfdoc.addTitle("Short Listed Candidates");

		pdfdoc.close();
	}

	public static void main(String args[]) {
		try {
			new PdfDoc();
		} catch (Exception es) {
			es.printStackTrace();
		}
	}
}
