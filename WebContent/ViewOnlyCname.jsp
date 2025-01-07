<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.util.ArrayList"%>
<%@page import="tps.Recruiter"%>
<%@page import="java.util.Iterator"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Career Click |View Only Company</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<jsp:useBean id="viewext" class="tps.ViewExternalCompany" scope="request"></jsp:useBean>
<%
  
  		ArrayList<Recruiter> list=viewext.viewOnlyCompName();
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
 <a href="ViewOnlyCname.jsp" target="_self" style="text-decoration: none;"> View External Recruiters</a><br/>
 <a href="AppliedForCompany.jsp"> Students Applied</a>
 </div>
  <div class="col_w800NI float_r">
  <fieldset style="background-color:#E9E9D8 "><legend>List of External Recruiter</legend>
	 <table width="362" height="50" border="1" align="center" bgcolor="#FEF7E9" >
	  <th width="124">User Name</th>
	  <th width="124">Company Name</th>
	  <th width="92">Action</th>
	  <%
		  while(i.hasNext()){
	 Recruiter ai=(Recruiter)i.next();
%> 
<%String t1=ai.getCompanyname() ;%>
<form action="ViewExtern.jsp" method="post">
 <table width="362" height="50" border="1" align="center" bgcolor="#FEF7E9" >
 
<tr>
<td width="124"><div align="center">
  <label>
  <% out.print(t1);%>
  </label>
</div></td>
<input type="hidden" name="uname" value="<%=t1%>" ></input>
<td width="124"><div align="center">
  <label>
  <%out.print(ai.getUname()); %>
  </label>
</div></td>
<td width="92"><div align="center"><input type="submit" value="View More"></input></div></td>
</tr>
</table> </form>
<%} %>
</fieldset> 
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