<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Upload</title>
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
    		<div id="site_title"><h1><a href="index.jsp"></a></h1></div>	
  	</div> <!-- end of header -->

     <div id="templatemo_menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="Logout.jsp">Log out</a></li>
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
        <p></p>
  </div>
        
  <div id="templatemo_main" >
    
<div class="col_w900 col_w900_last">

<div class="cleaner">
<fieldset><legend>Upload Your Documents</legend>
<form name="form1" id="form1" enctype="multipart/form-data" method="post" action="single_upload_page.jsp">
      <table width="472"  border="0" align="center">
	   
	<tr  bgcolor ="#E9E9D8">
    <td width="166" height="69"><div align="center">Your Passport Size Photo : </div></td>
    <td width="296">
        <div align="center">
        <input name="F1" type="file" /><br />
        <input type="submit" value="Upload"/>
        </div></td></tr></table></form>&nbsp;&nbsp;&nbsp;
<!--<form name="form1" id="form1" enctype="multipart/form-data" method="post" action="signuploadpage.jsp">-->
<!--   <table width="470" align="center">-->
<!--     <tr bgcolor="#FEF7E9"> <td width="165" height="69"><div align="center">Your Signature : </div></td>-->
<!--       <td width="293">        <div align="center">-->
<!--             <input name="" type="file"/>        -->
<!--             <br />        -->
<!--             <input type="submit" value="Upload"/>-->
<!--       </div></td>-->
<!--   </tr></table></form>&nbsp;&nbsp;&nbsp;-->
   <form name="form1" id="form1" enctype="multipart/form-data" method="post" action="resume_upload_page.jsp">
	 <table width="469" align="center">
	   <tr  bgcolor ="#E9E9D8">
    <td width="166" height="69"><div align="center">Upload Resume :</div></td>
    <td width="298">
        <div align="center">
          <input name="F1" type="file" /><br />
          <input type="submit" value="Upload"/>
        </div></td>
    
	 </tr>
        </table>
 </form>
 </fieldset>
</div>

</div>
</div>
        
        <div class="cleaner"></div>

  <div>
    <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>
  </div>
  <!-- end of main -->

<div id="templatemo_footer">
    Copyright � 2048 <a href="#">Arati|Khushbu|Yogesh|Pratik</a> - 
        Designed by <a href="sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>