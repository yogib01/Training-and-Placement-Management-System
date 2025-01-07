<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="show" class="tps.ShowByUname"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Search By Criteria</title>
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
</div>
        
  <div id="templatemo_main">
   <div class="col_w900 col_w900_last">
   <div class="cleaner">
		<form name="form1"  method="post" action="SearchCriteria1.jsp">
		<table width="905" height="120" border="0" align="center">
  <tr>
    
   <td> 
     <fieldset ><legend>Search Student For Following Criteria</legend>
        <table width="399" height="314" border="0" align="center">
<tr  bgcolor ="#E9E9D8">
 
<tr bgcolor="#FEF7E9"><td height="43"><div align="center">Select Semister</div></td><td>
      <div align="left">
        <select name="academicyear">
                        <option value="First" style="background-color: #FEF7E9">Select Year</option>
                        <option value="First" style="background-color: #FEF7E9">First</option>
                        <option value="Second" style="background-color: #FEF7E9">Second</option>
                        <option value="Third" style="background-color: #FEF7E9">Third</option>
                        <option value="Fourth" style="background-color: #FEF7E9">Fourth</option>
                        <option value="Fifth" style="background-color: #FEF7E9">Fifth</option>
                        <option value="Sixth" style="background-color: #FEF7E9">Sixth</option>
                        <option value="Seventh" style="background-color: #FEF7E9">Seventh</option>
                        <option value="Eighth" style="background-color: #FEF7E9">Eighth</option>
               </select>
      </div></td></tr>
	   
	   <tr bgcolor ="#E9E9D8"><td height="41"><div align="center">Select Branch</div></td>
	   	   <td>
	   	         <div align="left">
	   	           <select name="branch">
                        <option>Electrical</option>
                        <option>Computer</option>
                        <option>Mechanical</option>
                        <option>E&TC</option>
                        <option>Electrical</option>
                        <option>IT</option>
                        <option>MBA</option>
                        <option>Chemical</option>
                   </select>
                 </div></td>
		</tr>
	   
<tr bgcolor="#FEF7E9"><td height="45"><div align="center">Aggt. Marks.</div></td>
  <td>
        <div align="left">
          <input type="text" name="aggregate"  />
        </div></td>
</tr>
<tr  bgcolor ="#E9E9D8"><td height="47"><div align="center">Current Back</div></td><td>
      <div align="left">
        <input type="text" name="lback" onkeypress="return lback1()">
      </div></td></tr>
<tr bgcolor="#FEF7E9"><td height="43"><div align="center">Dead Back</div></td><td>
      <div align="left">
        <input type="text" name="dback" onkeypress="return dback1()">
      </div></td></tr>
<tr  bgcolor ="#E9E9D8"><td colspan="2">
      <div align="center">
      <input name="submit" type="submit"  value="Search" >&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Clear" value="Clear">&nbsp;&nbsp;&nbsp;
		<input type="submit" name="Clear" value="Cancel">
      </div></td> </tr>

</table>

</fieldset>
</td>
 </tr>

</table></form>

       
        </div>
  </div>
</div>

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