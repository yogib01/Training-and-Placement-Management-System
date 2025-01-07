<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String diplomaa=null;
	String radioval=request.getParameter("radiovalue");
	
	if(radioval.equals("Diploma")){
%>
		<fieldset>
<div align="center">Applied for HSC or not?</div>
<div align="center">
    <input name="yesno" type="radio" value="hscyes" onclick="displayResult2()">
    YES
    <input name="yesno" type="radio" value="0.0" onclick="displayResult(this.value)">
    NO
</div>
</fieldset>
	<script></script>	
		
<% }
%>

</body>
</html>