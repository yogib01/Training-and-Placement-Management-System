<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |CompanyInfo</title>

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

</head>
<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    		<div id="site_title"><h1><a href="index.jsp">Career Click</a></h1></div>	
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
   
<script type='text/javascript' src='exmplmenu_var.js'></script>
<script type='text/javascript' src='menu_com.js'></script>
  </h2>
</div>
        
  <div id="templatemo_main" >



<fieldset><legend>Register the Company </legend>
<form name="form1" method="post" action="CompanyRegister.jsp">
  <table width="440" border="0" align="center">
  
  <tr bgcolor="#FEF7E9">
    <td height="43"><div align="center">Company Name </div></td>
    <td><div align="center">
      <input name="company_name" type="text" id="company_name">
    </div></td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td height="44"><div align="center">Contact Person</div></td>
    <td><div align="center">
      <input name="contact_person" type="text" id="contact_person">
    </div></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="42"><div align="center">Company Address </div></td>
    <td><div align="center">
      <textarea name="address" id="address"></textarea>
    </div></td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td height="46"><div align="center">City</div></td>
    <td><div align="center">
      <input name="city" type="text" id="city">
    </div></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="50"><div align="center">Zip Code </div></td>
    <td><div align="center">
      <input name="zipcode" type="text" id="zipcode">
    </div></td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td height="47"><div align="center">Mobile /Phone Number </div></td>
    <td><div align="center">
      <input name="mobileno" type="text" id="mobileno">
    </div></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="34"><div align="center">Email ID </div></td>
    <td><div align="center">
      <input name="email" type="text" id="email">
    </div></td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td height="34"><div align="center">Website</div></td>
    <td><div align="center">
      <input name="website" type="text" id="website">
    </div></td>
  </tr>
  <tr bgcolor="#FEF7E9"><td height="41" colspan="2">
  <div align="center">
  <input name="Submit" type="submit" value="Save" >    
  <input name="Submit" type="reset" value="Reset" >
    <input name="Submit" type="submit" value="Cancel" >
</div>
  </td></tr>
</table>

</form>
</fieldset>


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