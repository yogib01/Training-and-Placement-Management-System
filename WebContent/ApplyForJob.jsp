<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.sql.Connection"%>
<%@page import="tps.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%String username = (String)session.getAttribute("uname"); %>

<jsp:useBean id="applyjob" class="tps.ViewExternalCompany" scope="session"/>
<jsp:setProperty property="*" name="l1"/>

<%
	ResultSet rs=null,rs1=null;
	String duname=null;
	Statement stmt=null,stmt1=null;
	int x=0;
	Connection con=DBConnection.getConnection();
	String temp="select count(*) from StudentBasicInfo s,StudentAcademicInfo1 a,LoginTable1 l where s.uname=l.uname and a.uname=l.uname and l.uname='"+username+"'";
	PreparedStatement pstmt1=con.prepareStatement(temp);
	rs1=pstmt1.executeQuery();
	if(rs1.next()){
		x=rs1.getInt(1);
	}
	if(x==1)
	{
		int job_id=Integer.parseInt(request.getParameter("job_id"));
		String companyname=request.getParameter("companyname");
			//System.out.println(request.getParameter("companyname"));
			//System.out.println(username);
		stmt=con.createStatement();
		rs=stmt.executeQuery("select uname from ApplyForJob where job_id='"+job_id+"'");
		while(rs.next()){
			duname=rs.getString(1);
		}
	
		if(username.equals(duname)){
			response.sendRedirect("AlreadyApplied.jsp");
		}
		else{
		
			PreparedStatement pstmt=con.prepareStatement("insert into ApplyForJob values ('"+username+"','"+companyname+"','"+job_id+"')");
			int i=pstmt.executeUpdate();
	
			if(i==0)
				response.sendRedirect("Failure.jsp");
			else
				response.sendRedirect("ApplyForJobSuccess.jsp");
		
		}
	}
	else{
		response.sendRedirect("FillInfoFirst.jsp");
	}
%>

