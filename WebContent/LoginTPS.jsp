<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>
<%@page import="java.sql.ResultSet"%><html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	ResultSet rs=l1.validate();
	session.setAttribute("uname",l1.getUname());
	boolean flag=rs.next();
	if(flag==true && rs.getString(3).equals("Administrator"))
	{
		response.sendRedirect("Administrator.jsp");
	}
	else if(flag==true && rs.getString(3).equals("Student"))
	{
		response.sendRedirect("Student.jsp");
	}
	else if(flag==true && rs.getString(3).equals("Company-Recruiter")){	
		response.sendRedirect("Recruiter.jsp");
	}
	else{
		response.sendRedirect("LoginFailed.jsp");
	}
	%></body>
</html>