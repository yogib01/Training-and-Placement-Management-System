<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>

<jsp:useBean id="academic" class="tps.StudentAcademicInfoJB" scope="session"/>
<jsp:setProperty property="*" name="academic" />


<%! int count=0;%>
<%
	
	count=academic.academicInfo();
	if(count==1)
//		out.write("Record Inserted Successfully!!!!");
response.sendRedirect("RecordInserted.jsp");
	else
		response.sendRedirect("RecordInsertionFailed.jsp");

%>