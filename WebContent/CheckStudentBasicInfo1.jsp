
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="tps.DBConnection"%>
<%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String username = (String)session.getAttribute("uname"); %>
    
    
<%
		Connection con=DBConnection.getConnection();
		PreparedStatement pstmt=con.prepareStatement("select uname from StudentBasicInfo where uname='"+username+"'");
		ResultSet rs=pstmt.executeQuery();
		int flag=0;
		String temp=null;
		while(rs.next()){
			temp=rs.getString(1);
			flag=1;
		}
		System.out.println("Visited to Check Already Page...");
		if(flag==1){
			response.sendRedirect("AlreadyRegister.jsp");
		}
		else{
			response.sendRedirect("StudentBasicInfo1.jsp");
		}
%>