<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="show" class="tps.ShowByUname"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
  
  response.setDateHeader("Expires", new java.util.Date().getTime());
  
  %>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Search Particular Candidate</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script type="text/javascript">
var xmlhttp;
function showStudentRecord(){
	var select = document.getElementById("uid");
	var uname = select.options[select.selectedIndex].value;
	if(window.ActiveXObject){
	
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");//IE5,IE6
	}
	else{
		xmlhttp = new XMLHttpRequest();//all latest browser
	}
	xmlhttp.onreadystatechange = function(){
		if(xmlhttp.readyState==4 && xmlhttp.status==200)//4=response is ready 200=ok
		{
			document.getElementById("pid").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","ShowRecordParticular.jsp?uname="+uname,true);
	xmlhttp.send();
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
    			
  	</div> <!-- end of header -->

     <div id="templatemo_menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
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
        
  <div id="templatemo_main">
    
<div class="col_w900 col_w900_last">

          <div class="cleaner">
		  
      <table width="905" height="120" border="0" align="center">
  <tr >
    
   <td> <form name="form1" id="form1" method="post" action="">
     <fieldset style="background-color:#E9E9D8"><legend>View Candidate Using Username</legend>
	   <div align="center">
	   Select User Name <select name="uname" id="uid" onchange="showStudentRecord()">
	   <option>Select User Name</option>
<%
ResultSet rs=show.showByUname();
while(rs.next()){
%>
<option value="<%=rs.getString(1)%>"> <%=rs.getString(1) %> </option>
<%} %>

</select>
</div>
      </fieldset>
    </form></td>
  </tr>
  <tr >
    <td>&nbsp;</td>
  </tr>
   <tr>
   		
   </tr>

</table>

</div>
<p id="pid"></p>

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