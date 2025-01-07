<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="register" class="tps.Company_InfoJB" scope="session"/>
<jsp:setProperty property="*" name="register"/>

<%
	int i=0;
	i=register.insertCompanyInfo();
	if(i==1){
		out.write("Registered Successfully....");
	}
	else{
		out.write("Registered Failled....");
	}
		
	

%>