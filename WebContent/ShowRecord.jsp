<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="tps.DBConnection"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table width="887" height="97" border="3" align="center" cellpadding="0" cellspacing="0">
<tr bgcolor ="#E9E9D8">
<th width="100" height="38"><div align="center">College</div></th>
<th width="122"><div align="center">Name</div></th>
<th width="84"><div align="center">DOB</div></th>
<th width="121"><div align="center">Address</div></th>
<th width="132"><div align="center">Mobile Number</div></th>
<th width="175"><div align="center">Email</div></th>
<th width="133"><div align="center">Engg.Aggregate</div></th>
</tr>

<tr bgcolor ="#FEF7E9">
<%! ResultSet rs=null; %>
<%
	String branch=request.getParameter("branch");
	String academicyear=request.getParameter("academicyear");
	String uname=request.getParameter("uname");
	String query = "select college,surname,first_name,fathername,day,month,year,permant_address,stud_contact,email,aggregate from StudentAcademicInfo1 s,StudentBasicInfo b where s.uname=b.uname and branch=? and academicyear=?";
	Connection con=DBConnection.getConnection();
	PreparedStatement pstmt = con.prepareStatement(query);
	pstmt.setString(1, branch);
	pstmt.setString(2,academicyear);

	rs = pstmt.executeQuery();

while(rs.next()){
%>
<tr>
<td><div align="center"><%=rs.getString(1) %></div></td>
<td><div align="center"><%=rs.getString(2) %>&nbsp;<%=rs.getString(3) %>&nbsp;<%=rs.getString(4) %></div></td>
<td><div align="center"><%=rs.getString(5) %>/<%=rs.getString(6) %>/<%=rs.getString(7) %></div></td>
<td><div align="center"><%=rs.getString(8) %></div></td>
<td><div align="center"><%=rs.getString(9) %></div></td>
<td><div align="center"><%=rs.getString(10) %></div></td>
<td><div align="center"><%=rs.getString(11) %></div></td></tr>
<%} System.out.println("Academic...."+academicyear);
System.out.println("Branch...."+branch);

%>

</table>
</body>
</html>