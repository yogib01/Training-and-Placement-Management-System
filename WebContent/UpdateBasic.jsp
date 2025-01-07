<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="basic" class="tps.ViewStudBasicInfo" scope="session"/>
<jsp:setProperty property="*" name="basic"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		int i=basic.updateBasicInfo();

		if(i==1){	
			response.sendRedirect("RecordUpdated.jsp");
			System.out.println("Updated Successfully....");
		}
		else{
			response.sendRedirect("UpdateFailed.jsp");	
		}

%>
</body>
</html>