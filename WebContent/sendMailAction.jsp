<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="send" class="tps.SendMail" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="send"/>

<jsp:getProperty property="rmail" name="send"/>
<jsp:getProperty property="subject" name="send"/>
<jsp:getProperty property="body" name="send"/>
<jsp:getProperty property="email" name="send"/>
<jsp:getProperty property="attachment" name="send"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		int i=send.sendMail();
		if(i==1)
			response.sendRedirect("EmailSent.jsp");
		else
			response.sendRedirect("EmailSentFailed.jsp");

%>
</body>
</html>