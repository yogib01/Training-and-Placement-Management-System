<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.util.ArrayList"%>
<%@page import="tps.Recruiter"%>
<%@page import="java.util.Iterator"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Career Click |View External Company</title>

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<jsp:useBean id="viewext" class="tps.ViewExternalCompany" scope="request"></jsp:useBean>
    <jsp:setProperty property="uname" name="viewext"/>
<%
  
  		ArrayList<Recruiter> list=viewext.viewExternalCompany();
  		Iterator i=list.iterator();
  %>

<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {font-size: 18px}
-->
</style>

<script type='text/javascript' src='exmplmenu_var.js'></script>
<script type='text/javascript' src='menu_com.js'></script>
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
            <form  action="#" method="post">
            <font color="#FFCC00"> Welcome <%=session.getAttribute("uname")%></font>
            </form>
        </div>
        <div class="cleaner"></div>
    </div> 
<div id="slider_wrapper_n">
  <h2 class="style2">
   
<script type='text/javascript'></script>
   
  </h2>
</div>
        
  <div id="templatemo_main" >

<div class="col_w900 col_w900_last">
  <div class="col_w200 float_l">
 <a href="temp.jsp" target="_self"> View External Recruiters</a>
 <a> Notify Students</a>
 </div>
  <div class="col_w800NI float_r">
  <form action="NotifyAbtCompany.jsp" method="post">
 <fieldset><legend>External Company Profile</legend><table width="506" height="476" border="0" align="center">
	  <%
		  while(i.hasNext()){
	 Recruiter ai=(Recruiter)i.next();
%>
<tr bgcolor ="#E9E9D8"><td width="150"><div align="center">Company Name</div></td><td width="340" height="46"><div align="center">
  <%String companyname= ai.getCompanyname();%>
  <input type="hidden" name="companyname" value="<%=companyname%>"/>
  <label>
  <% out.print(companyname);%>
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
</div></td></tr>
<tr bgcolor ="#E9E9D8"><td height="41"><div align="center">Job ID</div></td><td><div align="center">
  <label>
  <%int jid=ai.getJob_id(); %>
  <input type="hidden" name="job_id" value="<%=jid%>"/>
  <%out.print(ai.getJob_id()); %>
  </label>
</div></td></tr>
<tr bgcolor="#FEF7E9"><td height="26"><div align="center">User Name</div></td><td><div align="center">
<%String uname= ai.getUname();%>
  <input type="hidden" name="uname" value="<%=uname%>"/>
  <label>
  <%out.print(ai.getUname()); %>
  </label>
</div></td></tr>

<tr bgcolor ="#E9E9D8"><td colspan="2"><div align="center">
  <input type="submit" value="Notify To Students"/>
</div></td></tr>
<%} %>
</table> 
 <p>&nbsp;</p>
 </fieldset>  </form>
  </div>
  <div class="cleaner"></div>
  
</div>
</div>
  <div>
    <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>
  </div>
  <!-- end of main -->



<div id="templatemo_footer">
    
    	Copyright © 2048 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by sing&amp;yog

</div> <!-- end of templatemo_footer -->

</body>
</html>