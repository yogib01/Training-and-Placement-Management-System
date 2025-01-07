<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
	int count;
%>
<%

	count=l1.NewUser();
	if(count==1)
	{
		response.sendRedirect("InsertSuccess.jsp");
	}
	else
	{
		response.sendRedirect("NewUserAlready.jsp");
	}
	
%>
</body>
</html>