<jsp:useBean id="additionalAcademic" class="tps.AdditionalAcademicInfoJB"  scope="session"/>
<jsp:setProperty property="*" name="additionalAcademic"/>



<%!
int count=0;
%>

<%
	count=additionalAcademic.additionalAcademicInfo();
	if(count==1)
		response.sendRedirect("RecordInserted.jsp");
	else
		response.sendRedirect("RecordInsertionFailed.jsp");

%>