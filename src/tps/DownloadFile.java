package tps;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadFile
 */
public class DownloadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ServletContext sc;
	
    public DownloadFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
		sc = config.getServletContext();
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String filename = null;
		String uname = request.getParameter("uname");
		
		ServletOutputStream stream = null;
	    BufferedInputStream buf = null;
	    
		try {
			ResultSet rs =null;
			Connection con =DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select resume from StudentBasicInfo where uname=?");
			pstmt.setString(1, uname);
			rs=pstmt.executeQuery();
			if(rs.next()){
				filename = rs.getString(1);
			}
			//ResultSet rs = stmt.executeQuery("select resume from StudentBasicInfo where uname="+username);
			con.close();
			String filedir = sc.getInitParameter("filedir");
		    if (filedir == null || filedir.equals(""))
		      throw new ServletException(
		          "Invalid or non-existent 'pdf-Dir' context-param.");
		    
		    
		    stream = response.getOutputStream();
		      
		    File file = new File(filedir + "/" + filename);
		    
		    if(filename.lastIndexOf(".pdf") != -1){
		    	
		    	 response.setContentType("application/pdf");

			      response.addHeader("Content-Disposition", "attachment; filename="
			          + filename);
			      response.setContentLength((int) file.length());
			      
			      FileInputStream input = new FileInputStream(file);
			      
			      buf = new BufferedInputStream(input);
			      int readBytes = 0;

			      while ((readBytes = buf.read()) != -1)
			        stream.write(readBytes);
		    	
		    	
		    	
		    }
		    else
		    	if(filename.lastIndexOf(".doc") != -1 || filename.lastIndexOf(".docx") == -1){
		    		
		    		response.setContentType("application/word");

				      response.addHeader("Content-Disposition", "attachment; filename="
				          + filename);
				      response.setContentLength((int) file.length());
				      
				      FileInputStream input = new FileInputStream(file);
				      
				      buf = new BufferedInputStream(input);
				      int readBytes = 0;

				      while ((readBytes = buf.read()) != -1)
				        stream.write(readBytes);

		    		
		    	}
			
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new ServletException(e.getMessage());
			
		}
		finally {
		      if (stream != null)
		        stream.close();
		      if (buf != null)
		        buf.close();
		    }
		
		
		
	}

}
