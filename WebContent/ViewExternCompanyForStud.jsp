<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="apply" class="tps.ViewExternalCompany" scope="session"></jsp:useBean>
    <jsp:setProperty property="*" name="apply"/>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet"%>
<%@page import="tps.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tps.Recruiter"%>
<%@page import="tps.Notification"%><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click|View Extern For student</title>

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<style type="text/css">
<!--
.style2 {font-size: 18px}
.style4 {
	font-size: 14px;
	color: #EDBE32;
}
-->
</style>
<script type='text/javascript' src='student_menu.js'></script>
<script type='text/javascript' src='menu_com.js'></script>
<noscript>Your browser does not support script</noscript>
</head>
<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    		<div id="site_title"><h1><a href="index.jsp"></a></h1></div>	
  	</div> <!-- end of header -->
  	<div id="templatemo_menu">
  	  <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="Logout.jsp">Logout</a></li>
            
      </ul>    	
        <div id="search_box">
        	
          <font color="#FFCC00"> Welcome <%=session.getAttribute("uname")%></font>
         
        </div>
        <div class="cleaner"></div>
</div> 

     <div id="slider_wrapper_n">

      <h2 class="style2">

	  	
<script type='text/javascript'></script>
   
</h2>
        <p></p>
  </div>
        
<div id="templatemo_main" >   

<jsp:useBean id="studnotify" class="tps.StudentNotify" scope="request"></jsp:useBean>
<%
  
  		ArrayList<Notification> list2=studnotify.viewOnlyStudCompany();
  		Iterator i2=list2.iterator();
  %>
<div class="col_w900 col_w900_last">

<div class="col_w200 float_l">
<fieldset><legend>Upcoming Campus</legend>


	<%
	
	  while(i2.hasNext()){
Notification ai=(Notification)i2.next();
%>
	<form action="ViewExternCompanyForStud.jsp" method="post">		
	<table border="1">
	<%int job_id=ai.getJob_id(); %>
	<%String uname=ai.getUname(); %>
	<%String companyname=ai.getCompanyname(); %>
	
	
	
	<input type="hidden" name="job_id" value="<%=job_id%>"></input>
	<input type="hidden" name="uname" value="<%=uname%>"></input>
	<input type="hidden" name="companyname" value="<%=companyname %>"></input>
		<tr><td width="107"><label><%out.print(companyname) ;%></label></td>
		<td width="77"><input type="submit" value="View More"></input></td></tr>
		</table></form><% }%>	
		
</fieldset>

</div>
<div class="col_w800NI float_r">
<form action="ApplyForJob.jsp" method="post">
<fieldset><legend>Company Details & Job Profile</legend>
<table width="506" height="476" border="0" align="center">
<jsp:useBean id="studnotifying" class="tps.StudentNotify" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="studnotifying"/>
<%
  
  		ArrayList<Recruiter> list=studnotifying.viewAllInfo();
		Iterator i=list.iterator();
  %>  
  
  <%
		  while(i.hasNext()){
			  Recruiter ai=(Recruiter)i.next();
%>
<tr bgcolor ="#E9E9D8"><td width="150"><div align="center">Company Name</div></td><td width="340" height="46"><div align="center">
  <%String companyname1=ai.getCompanyname();%>
  <input type="hidden" name="companyname" value="<%=companyname1%>"/>
  <label>
  <% out.print(companyname1);%>
  </label>
</div></td></tr>
<tr bgcolor="#FEF7E9"><td height="41"><div align="center">Job Specification</div></td><td><div align="center">
  <label>
  <%out.print(ai.getJob_Specification()); %>
  </label>
</div></td></tr>
<tr bgcolor ="#E9E9D8"><td height="36"><div align="center">Branch</div></td><td><div align="center">
  <label>
  <%out.print(ai.getBranch()); %>
  </label>
</div></td></tr>
<tr bgcolor="#FEF7E9"><td height="38"><div align="center">Platform</div></td><td><div align="center">
  <label>
  <%out.print(ai.getPlatform()); %>
  </label>
</div></td></tr>
<tr bgcolor ="#E9E9D8"><td height="36"><div align="center">Required Courses</div></td><td><div align="center">
  <label>
  <%out.print(ai.getRequired_course()); %>
  </label>
</div></td></tr>
<tr bgcolor="#FEF7E9"><td height="36"><div align="center">Criteria</div></td><td><div align="center">
  <label>
  <%out.print(ai.getCriteria()); %>
  </label>
</div></td></tr>
<tr bgcolor ="#E9E9D8"><td height="34"><div align="center">Other Notification</div></td><td><div align="center">
  <label>
  <%out.print(ai.getOther_notification()); %>
  </label>
</div></td></tr>
<tr bgcolor="#FEF7E9"><td height="34"><div align="center">Annual Package</div></td><td><div align="center">
  <label>
  <%out.print(ai.getAnnual_package()); %>
  </label>
</div></td></tr>
<tr bgcolor ="#E9E9D8"><td height="41"><div align="center">Website</div></td><td><div align="center">
  <label>
  <%out.print(ai.getWebsite()); %>
  </label>
</div></td></tr>
<tr bgcolor="#FEF7E9"><td height="39"><div align="center">Required Candidates</div></td><td><div align="center">
  <label>
  <%out.print(ai.getRequired_candidates()); %>
  </label>
  <input type="hidden" name="job_id" value="<%=ai.getJob_id() %>"/>
  <input type="hidden" name="uname" value="<%=ai.getUname()%>"/>
  
</div></td></tr>
<%} %>
  
</div></td></tr>

<tr bgcolor ="#E9E9D8"><td colspan="2"><div align="center">
  <input type="submit" value="Apply For This Company"/>
</div></td></tr>

</table></fieldset></form>
</div>
<div class="cleaner"> </div>


</div>
</div>
        
        <div class="cleaner"></div>

  <div>
    <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>
  </div>
  <!-- end of main -->



<div id="templatemo_footer">
    
    	Copyright © 2048 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>