<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click -Administrator</title>
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
<script type='text/javascript' src='student_menu.js'></script>
<script type='text/javascript' src='menu_com.js'></script>
<noscript>Your browser does not support script</noscript>
</head>
<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    		<div id="site_title"><h1><a></a></h1></div>	
  	</div> <!-- end of header -->

     <div id="templatemo_menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="news.html" class="current">News</a></li>
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
       	
<script type='text/javascript'></script>
   
  </div>
        
  <div id="templatemo_main">
    
<div class="col_w900 col_w900_last">

          <div class="cleaner"></div>
<form name="form1" method="get" action="additionalAcademicInfoAction.jsp">
<fieldset><legend>Additional Academic Information</legend>
<p>&nbsp;</p>
<fieldset>
<table width="580" border="0" align="center">
<input type="hidden" name="uname" value="<%=session.getAttribute("uname")%>">
  <tr>
    
	<td width="76"><div align="center">Seminar/PPT</div></td>
    <td width="191"><textarea name="sppt" id="sppt"></textarea></td>
	
      </tr>
  <tr>
    <td height="72"><div align="center">Computer Literacy</div></td>
    <td><textarea name="cliteracy" id="cliteracy"></textarea></td>
    <td width="76"><div align="center">Courses</div></td>
    <td width="191"><textarea name="courses" id="courses"></textarea></td>
  </tr>
  <tr>
    <td height="74"><div align="center">Project</div></td>
    <td><textarea name="project" id="project"></textarea></td>
    <td><div align="center">Other</div></td>
    <td><textarea name="others" id="others"></textarea></td>
  </tr>
</table>
<div align="center"><input name="Submit" type="submit" value="Save" >
  <input name="Submit" type="reset" value="Reset">
  <input name="Submit" type="submit" value="Cancel">
</div>

</fieldset>
  
</fieldset>
</form>

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