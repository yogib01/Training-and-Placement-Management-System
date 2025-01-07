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

  <table width="895" align="left">
  <th width="95" bgcolor ="#E9E9D8">Date</th>
  <th width="119" bgcolor ="#E9E9D8">Academic Year</th>
  <th width="162" bgcolor ="#E9E9D8">Branch</th>
  <th width="209" bgcolor ="#E9E9D8">Student Name</th>
  <th width="265" bgcolor ="#E9E9D8">Company Name</th>
 
  <%
  		ResultSet rs=null;
  		Connection con=DBConnection.getConnection();
  		Statement stmt=con.createStatement();
  		rs=stmt.executeQuery("select * from Placement where branch='"+request.getParameter("branch")+"' and company_name='"+request.getParameter("company_name")+"'");
  		while(rs.next()){
 %>
  <tr bgcolor="#FEF7E9">
    <td align="center">
    	<label>
      
      <% System.out.println(rs.getString(1));%>
      <%out.print(rs.getString(2)); %>
      <%out.print(rs.getString(3)); %>
      </label>
    </td>
    <td align="center"><label><%out.print(rs.getString(4)); %></label></td>
    <td align="center"><label><%out.print(rs.getString(5)); %></label></td>
    <td ><label><%out.print(rs.getString(6)); %></label></td>
    <td align="center"><label><%out.print(rs.getString(7)); %></label></td>
  </tr>
   <%} %>
</table>

</body>
</html>