package tps;

import java.awt.Font;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.PieDataset;

public class PieChartJSP {

	// static String filename="E://Development//PiechartPNG//piechart.jpg";
	static String filename = "C://Users//GS-1226//Sangramsing//Projects//DemoProjects//OnlineTrainingandPlacement//WebContent//images//PiechartPNG//piechart.jpg";
	static int width = 600, height = 600;

	public PieChartJSP() {
		// TODO Auto-generated constructor stub
	}

	private static PieDataset createPieDataset() {
		ResultSet rs = null, rs1 = null;
		int count = 0, count2 = 0;
		Connection con = DBConnection.getConnection();
		// String query="select * from Placement";
		Statement stmt;
		try {
			stmt = con.createStatement();

			rs = stmt.executeQuery("select * from Placement");
			while (rs.next()) {
				count++;
				// rs.getString(1);
			}
			con.close();

			Connection con1 = DBConnection.getConnection();

			Statement stmt1 = con1.createStatement();
			rs1 = stmt1
					.executeQuery("select * from StudentAcademicInfo1 where branch='Computer' and academicyear='Second'");
			while (rs1.next()) {
				count2++;
				// rs.getString(1);
			}
			con1.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("NON SELECTED STUDENT", 1);
		dataset.setValue("SELECTED STUDENT", count2);

		return dataset;

	}

	private static JFreeChart createChart(PieDataset dataset) {
		JFreeChart chart = ChartFactory.createPieChart3D(
				"Student Placement Analysis", dataset, true, true, false);

		PiePlot3D plot = (PiePlot3D) chart.getPlot();
		plot.setLabelFont(new Font("SanSerif", Font.PLAIN, 12));
		plot.setNoDataMessage("No data available");
		plot.setCircular(false);
		plot.setLabelGap(0.02);
		plot.setDepthFactor(0.10);
		plot.setForegroundAlpha(0.5f);
		return chart;
	}

	public static void writeJpgBasedOnChart(JFreeChart Chart, String aFileName,
			int aWidth, int aHeight) {
		try {
			/*
			 * ChartUtilities.writeChartAsPNG( new FileOutputStream(filename),
			 * Chart, aWidth, aHeight);
			 */
			FileOutputStream fo = new FileOutputStream(filename);
			ChartUtilities.writeChartAsJPEG(fo, Chart, aWidth, aHeight);
			fo.close();
		} catch (IOException ioEx) {
			System.err.println("Error writing JPG file " + aFileName);
		}
	}

	public int pieCreated() {
		JFreeChart chart = createChart(createPieDataset());
		writeJpgBasedOnChart(chart, filename, width, height);
		return 1;
	}
}
