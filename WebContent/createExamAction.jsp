<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%String username = (String)session.getAttribute("uname"); %>
<jsp:useBean id="exam" class="tps.ExamModule" scope="session"></jsp:useBean> 
<jsp:setProperty property="uname" name="exam" value="<%=username %>"></jsp:setProperty>
<jsp:setProperty property="question" name="exam"/>
<jsp:setProperty property="totalquestion" name="exam"/>
<jsp:setProperty property="totaltime" name="exam"/>
<jsp:setProperty property="examname" name="exam"/>

<%
	int i=exam.examModule1();
	
	if(i==1)
		out.write("Exam Created...");
	else
		out.write("Exam Creation Failed... ");	
%>

<jsp:forward page="AddQuestion.jsp" ></jsp:forward>