package tps;

import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JButton;
import javax.swing.JPanel;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.PieDataset;
import org.jfree.ui.ApplicationFrame;

public class PieChart extends ApplicationFrame implements ActionListener {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	JButton jb = new JButton("OK");
	static String filename = "E://Development//PiechartPNG//piechart.png";
	static int width = 600, height = 600;

	public PieChart(String title) {
		super(title);

		jb.setText("OK");
		jb.addActionListener(this);
		setContentPane(createDemoPanel());
		setLayout(null);
		jb.setBounds(310, 365, 80, 25);
		add(jb);

	}

	private static PieDataset createDataset() {
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

			Connection con1 = DBConnection.getConnection();

			Statement stmt1 = con1.createStatement();
			rs1 = stmt1
					.executeQuery("select * from StudentAcademicInfo1 where branch='Computer' and academicyear='Final'");
			while (rs1.next()) {
				count2++;
				// rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("NON SELECTED STUDENT", count2);
		dataset.setValue("SELECTED STUDENT", count);

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
		plot.setDepthFactor(0.35);
		plot.setForegroundAlpha(0.5f);
		return chart;
	}

	public static JPanel createDemoPanel() {
		JFreeChart chart = createChart(createDataset());
		writePngBasedOnChart(chart, filename, width, height);
		return new ChartPanel(chart);
	}

	public static void writePngBasedOnChart(JFreeChart Chart, String aFileName,
			int aWidth, int aHeight) {
		try {
			ChartUtilities.writeChartAsPNG(new FileOutputStream(filename),
					Chart, aWidth, aHeight);
		} catch (IOException ioEx) {
			System.err.println("Error writing PNG file " + aFileName);
		}
	}

	public static void main(String[] args) {

		PieChart demo = new PieChart("Student management System");
		// demo.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		demo.pack();
		// RefineryUtilities.centerFrameOnScreen(demo);
		demo.setVisible(true);

	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		this.dispose();
	}
}
