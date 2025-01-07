<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Conduct Campus</title>
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
.style1 {color: #FFFFFF}
.style2 {font-size: 18px}
-->
</style>
<script type='text/javascript' src='company_menu.js'></script>
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
            <li><a href="index.jsp">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="Logout.jsp">Logout</a></li>
        </ul>    	
        <div id="search_box">
            <form  action="#" method="post">
			 <a href="Logout.jsp">Log out</a>
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

          <div class="cleaner">    </div>
<form name="form1" method="post" action="recruiterAction.jsp">
<fieldset><legend>Register Job Informaton</legend>
<fieldset>
<table width="627" border="0" align="center">
  <tr bgcolor ="#E9E9D8">
    <td width="107" height="69"><div align="center">Company Name</div></td>
    <td width="220"><input name="companyname" type="text" id="companyname"></td>
	<td width="91"><div align="center">Branch</div></td>
	<td width="181"><input name="branch" type="text" id="branch">
	<input type="hidden" name="uname" value="<%=session.getAttribute("uname")%>">
	</td>
	
  </tr>
  <tr bgcolor="#FEF7E9">
    
	<td height="47"><div align="center">Platform</div></td>
		<td><input name="platform" type="text" id="platform"></td><td colspan="2"></td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td height="110"><div align="center">Job Specification </div></td>
    <td><textarea name="job_Specification" id="job_Specification"></textarea></td>
	<td><div align="center">Required Courses </div></td>
		<td><textarea name="required_course" id="required_course"></textarea></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="63"><div align="center">Candidates Required</div></td>
    <td><input name="required_candidates" type="text" id="required_candidates"></td>
	<td><div align="center">Package</div></td>
		<td><input name="annual_package" type="text" id="annual_package"></td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td height="106"><div align="center">Criteria</div></td>
    <td><textarea name="criteria" id="criteria"></textarea></td>
	<td><div align="center">Other Notification</div></td>
		<td><textarea name="other_notification" id="other_notification"></textarea></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="51"><div align="center">Website</div></td>
    <td><input name="website" type="text" id="website"></td><td colspan="2"><div align="center"></div></td>
  </tr>
  
</table>

</fieldset>
&nbsp;
<div align="center">
 
  <input type="submit" value="Submit">
  <input type="reset" name="Reset" value="Clear">
  <input type="submit" name="Submit" value="Cancel">
  </div>
</fieldset>
</form>

</div>
</div>
        
        <div class="cleaner"></div>

  <div>
    <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>
  </div>
  <!-- end of main -->



<div id="templatemo_footer">
    
    	Copyright © 2022 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>

</div> <!-- end of templatemo_footer -->

</body>
</html>