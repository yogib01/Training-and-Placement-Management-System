<jsp:useBean id="recruiter" class="tps.Recruiter"  scope="session"/>
<jsp:setProperty property="*" name="recruiter"/>



<%!
int count=0;
%>

<%
	count=recruiter.recruiterInfo();
	if(count==1)
		response.sendRedirect("RecruiterRegSuccess.jsp");
	else
		response.sendRedirect("RecruiterRegFailed.jsp");
%>