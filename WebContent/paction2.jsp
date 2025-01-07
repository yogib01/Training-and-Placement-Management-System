<jsp:useBean id="personal" class="tps.StudentBasicInfoJB" scope="session"/>
<jsp:setProperty property="*" name="personal"/>
  
<%! int count=0;%>
<%
	count=personal.basicInfo();
	if(count==0)
		response.sendRedirect("RecordInserted.jsp");
	else
		response.sendRedirect("RecordInsertionFailed.jsp");
%>