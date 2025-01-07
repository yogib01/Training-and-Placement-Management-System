<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Mail Sending</title>
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


<script type='text/javascript' src='exmplmenu_var.js'></script>
<script type='text/javascript' src='menu_com.js'></script>
<noscript>Your browser does not support script</noscript>
</head>
<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    		<div id="site_title"><h1><a href="index.jsp">Carrier Click</a></h1></div>	
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
    <form name="form1" id="form1" method="post" action="sendMailAction.jsp">

 <table height="325" align="center">
     <tr><td width="146" height="42">Recipients Email Id :</td>
     <td width="188"><input type="text" name="rmail" /></td></tr>
	 <tr><td height="41">Subject :</td>
	 <td><input type="text" name="subject" /></td></tr>
	 <tr><td height="39">Body: </td>
	 <td><textarea name="body"></textarea></td>
	 </tr>
	 <tr><td height="47">Email:</td>
	 <td> <input type="text" name="email" /></td></tr>
	 <tr><td height="55">Password:</td>
	 <td><input type="password" name="password" /></td></tr>
	 <tr><td>Attach File</td><td height="50"><input type="file" name="attachment"></input></td>
	 </tr>
	 <tr><td colspan="2"><div align="center"><input type="submit" value="Send"/></div></td></tr>
	 
	 </table>
  
  </div>
  </div>
        
        <div class="cleaner"></div>

  <div>
    <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>
  </div>
  <!-- end of main -->



<div id="templatemo_footer">
    
    	Copyright © 2022 <a href="#">Arati|Khushbu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>