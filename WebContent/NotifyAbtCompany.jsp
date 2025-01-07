<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="notify" class="tps.Notification" scope="session"></jsp:useBean>
    <jsp:setProperty property="*" name="notify"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="tps.DBConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int jid=Integer.parseInt(request.getParameter("job_id"));
	int flag=0;
	ResultSet rs=null;
	Connection con=DBConnection.getConnection();
	Statement stmt=con.createStatement();
	rs=stmt.executeQuery("select job_id from NotificationAbtCompany where job_id='"+jid+"'");
	
	while(rs.next()){
		flag=1;
	}
	
	if(flag==0){
		int i=notify.forNotify();
		if(i==1)
			response.sendRedirect("NotificationSent");
		else
			out.write("Notification Failed...");
	
	}
	else{
		//out.write("<html>");
		out.write("<head>");
		out.write("<script type='text/javascript'>");
		//out.write("function Already(){alert('Already Notified');return true;}");
		out.write("alert('Already Notified')");
		out.write("</script>");
		out.write("</head>");
		
		//out.write("</html>");
		response.sendRedirect("AlreadyNotified.jsp");
	}
%>
</body>
</html>