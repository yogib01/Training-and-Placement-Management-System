<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="tps.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tps.Notification"%>
<%@page import="java.util.Iterator"%><html xmlns="http://www.w3.org/1999/xhtml">


<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>

<jsp:useBean id="studnotify" class="tps.StudentNotify" scope="request"></jsp:useBean>
<%
  
  		ArrayList<Notification> list=studnotify.viewOnlyStudCompany();
  		Iterator i=list.iterator();
  %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click|Notification</title>
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
    		<div id="site_title"><h1><a href=""></a></h1></div>	
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
    
<div class="col_w900 col_w900_last">
<div class="col_w200 float_l">
 <fieldset><legend>Upcoming Campus</legend>


	<%
	
	  while(i.hasNext()){
Notification ai=(Notification)i.next();
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
		</table>
	</form><% }%>	
		
</fieldset>
 </div>
  <div class="col_w800 float_r">
  </div>

<div class="cleaner"></div>
</div>
</div>
        
        <div class="cleaner"></div>

  <div>
    <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>
  </div>
  <!-- end of main -->



<div id="templatemo_footer">
    
    	Copyright � 2022 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>