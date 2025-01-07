<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="clist" class="tps.CriteriaListJB"></jsp:useBean>
    <jsp:setProperty property="*" name="clist"/>
    <%
		int i=clist.printPdf();
    	if(i==1){
    		response.sendRedirect("DownloadCList.jsp");
    	}
    	else{
    		out.write("List Creation Failed......");
   	 	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> </title>
</head>
<body>

</body>
</html>