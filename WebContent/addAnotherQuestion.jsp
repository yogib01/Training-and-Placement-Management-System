<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="add" class="tps.ExamModule" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="add"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		int i=add.questionInsert();
		out.write("Question is added.....");
%>
</body>
</html>
<jsp:forward page="AddQuestion.jsp"></jsp:forward>