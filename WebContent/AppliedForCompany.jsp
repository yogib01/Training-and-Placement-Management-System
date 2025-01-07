<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.util.ArrayList"%>
<%@page import="tps.Recruiter"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="tps.DBConnection"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click|Applied For Company</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<%
  response.setDateHeader("Expires", new java.util.Date().getTime());
%>

<script type="text/javascript">

var xmlhttp;
function showAppliedStudentRecord(){
	
	
	var select1= document.getElementById("company_name");
	
	var company_name = select1.options[select1.selectedIndex].value;
	
if(window.ActiveXObject){
	
	xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");//IE5,IE6
	//alert("It support activeX object");
}
else{
	xmlhttp = new XMLHttpRequest();//all latest browser
	//alert("It support XMLHttpRequest")
}


	xmlhttp.onreadystatechange = function(){
		
		if(xmlhttp.readyState==4 && xmlhttp.status==200)//4=response is ready 200=ok
		{
			document.getElementById("pid").innerHTML=xmlhttp.responseText;
		}
	}

	xmlhttp.open("GET","ViewAppliedStudent.jsp?company_name="+company_name,true);
	//xmlhttp.open("GET","ShowRecord.jsp?academicyear="+byear,true);
	
	xmlhttp.send();


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
   <% Connection con=null;
     Statement stmt=null,stmt1=null; 
     ResultSet rs=null,rs1=null;
 	 con=DBConnection.getConnection();
  		
  	 stmt=con.createStatement();
  		
  	 rs=stmt.executeQuery("select companyname from Recruiter");
  	 //rs1=stmt.executeQuery("select companyname from Recruiter");
  	 
  %>
  
  <fieldset style="background-color:#E9E9D8 "><legend>Select Company</legend>
	<div align="center"><select name="select" id="company_name" onclick="showAppliedStudentRecord()"></div>
   
   <% 
   String temp=null;
   int j=0;
   while(rs.next()){%>
   			<option value="<%=rs.getString(1) %>"><%out.print(rs.getString(1) );%></option>
   			<%}%>
   </select>
</fieldset>
<p id="pid"></p>
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
    
    	Copyright © 2022 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>

</div> <!-- end of templatemo_footer -->

</body>
</html>