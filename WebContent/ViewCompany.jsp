<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.util.ArrayList"%>
<%@page import="tps.Company_InfoJB"%>
<%@page import="java.util.Iterator"%><html xmlns="http://www.w3.org/1999/xhtml">
<jsp:useBean id="view" class="tps.ViewCompany" scope="session"></jsp:useBean>
<% 
	ArrayList<Company_InfoJB> clist=view.viewCompanyInfo();
	Iterator i=clist.iterator();

%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Update Basic Information</title>
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
<fieldset><legend>Company Information</legend> <table width="898" height="111" align="left"><th height="67" bgcolor ="#E9E9D8">Company ID</th>
<th bgcolor ="#E9E9D8">Company Name</th>
<th width="124" bgcolor ="#E9E9D8">Contact Person</th>
<th width="70" bgcolor ="#E9E9D8">Address</th>
<th width="55" bgcolor ="#E9E9D8">City</th>
<th width="61" bgcolor ="#E9E9D8">Zipcode</th>
<th width="75" bgcolor ="#E9E9D8">Mobile No</th>
<th width="120" bgcolor ="#E9E9D8">Email</th>
<th width="126" bgcolor ="#E9E9D8">Website</th>


  <%
  		while(i.hasNext()){
  			tps.Company_InfoJB cjb=(Company_InfoJB)i.next();
  		
  %>
  
  <tr bgcolor="#FEF7E9"><td width="80"><div align="center">
    <%out.print(cjb.getCompany_id()); %>
</div></td><td width="147">
    <div align="left">
     <label>
      <%out.print(cjb.getCompany_name()); %>
      </label>
    </div></td>
	<td>
    <div align="left">
      <label>
      <%out.print(cjb.getContact_person()); %>
      </label>
    </div></td>
	<td>
    <div align="left">
      <label>
      <%out.print(cjb.getAddress()); %>
      </label>
    </div></td>
	<td>
    <div align="left">
      <label>	  
      <%out.print(cjb.getZipcode()); %>
      </label>
    </div></td>
	<td>
    <div align="left">
      <label>
      <%out.print(cjb.getCity()); %>
      </label>
    </div></td>
	<td>
    <div align="left">
      <label>
      <%out.print(cjb.getMobileno()); %>
      </label>
    </div></td>
	<td>
    <div align="left">
      <label>
      <%out.print(cjb.getEmail()); %>
      </label>
    </div></td>
 <td>
    <div align="left">
      <label>
      <%out.print(cjb.getWebsite()); %>
      </label>
    </div></td>
 </tr>
  <%}%>
  </table>
	
  
 
</fieldset>
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