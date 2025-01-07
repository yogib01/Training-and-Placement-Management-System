<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="place" class="tps.ViewPlacement" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.ArrayList"%>
<%@page import="tps.Placement"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="tps.DBConnection"%>
<%@page import="java.sql.ResultSet"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <table width="700" align="left">
<tr bgcolor="#E9E9D8 ">

<th width="122"><div align="center">Name</div></th>
<th width="84"><div align="center">DOB</div></th>
<th width="121"><div align="center">Address</div></th>
<th width="132"><div align="center">Mobile Number</div></th>
<th width="175"><div align="center">Email</div></th>
<th width="133"><div align="center">Engg.Aggregate</div></th>
</tr>
  <%
  		ResultSet rs=null;
  		Connection con=DBConnection.getConnection();
  		Statement stmt=con.createStatement();
  		rs=stmt.executeQuery("select s.first_name,s.mothername,s.fathername,s.day,s.month,s.year,s.permant_address,s.stud_contact,s.email,a.aggregate from StudentBasicInfo s,StudentAcademicInfo1 a,LoginTable1 l where l.uname=s.uname and l.uname=a.uname and s.uname=a.uname and l.uname in (select uname from ApplyForJob where companyname='"+request.getParameter("company_name")+"')");
  		int i=0;
  		while(rs.next()){
  			System.out.println(rs.getString(1));
 %>
<tr bgcolor ="#FEF7E9">

<td><div align="center"><label><%=rs.getString(1)%>&nbsp;<%=rs.getString(2)%>&nbsp;<%=rs.getString(3)%></label></div></td>
<td><div align="center"><label><%=rs.getString(4)%>/<%=rs.getString(5)%>/<%=rs.getString(6)%></label></div></td>
<td><div align="center"><label><%=rs.getString(7)%></label></div></td>
<td><div align="center"><label><%=rs.getString(8)%></label></div></td>
<td><div align="center"><label><%=rs.getString(9)%></label></div></td>
<td><div align="center"><label><%=rs.getString(10)%></label></div></td>
</tr>
<%} %>
<tr bgcolor="#E9E9D8"><td colspan="6"><div align="center"><input type="submit" value="Notify To Company_Recruiter"></input></div></td></tr>
</table>


</body>
</html>