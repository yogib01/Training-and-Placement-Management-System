
    
    <jsp:useBean id="place" class="tps.Placement" scope="request"></jsp:useBean>
    <jsp:setProperty property="*" name="place"/>

<%!
int count=0;
%>

<%
	count=place.placement();
	if(count==1)
		response.sendRedirect("FillPlacementInfoAddAnother.jsp");
	else
		out.write("Failed! Something went wrong.");
%>
