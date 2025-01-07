<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.ArrayList"%>
<%@page import="tps.Placement"%>
<%@page import="java.util.Iterator"%>
<jsp:useBean id="place" class="tps.ViewPlacement" scope="request"></jsp:useBean>


<%
  response.setDateHeader("Expires", new java.util.Date().getTime());
%>

<script type="text/javascript">

var xmlhttp;
function showPlacedStudentRecord(){
	
	var select = document.getElementById("branch");
	var select1= document.getElementById("company_name");
	var branch = select.options[select.selectedIndex].value;
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

	xmlhttp.open("GET","SearchPlacedStudent.jsp?branch="+branch+"&company_name="+company_name,true);
	//xmlhttp.open("GET","ShowRecord.jsp?academicyear="+byear,true);
	xmlhttp.send();


}
</script>

<%
	ArrayList<Placement> pl=place.viewPlacement();
	Iterator i=pl.iterator();
%>

<%@page import="tps.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |View All Placed</title>
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
  <% Connection con=null;
     Statement stmt=null,stmt1=null; 
     ResultSet rs=null,rs1=null;
 	 con=DBConnection.getConnection();
  		
  	 stmt=con.createStatement();
  		
  	 rs=stmt.executeQuery("select company_name from company_info");
  	 
  %>
  
  <fieldset><legend>Search Info Using Following Keywords</legend>
 
  <table align="center"><tr>
  <td>
  	<label>Branch</label>
  		<select name="select" id="branch" onclick="showPlacedStudentRecord()">
                        <option>Electrical</option>
                        <option>Computer</option>
                        <option>Mechanical</option>
                        <option>E&TC</option>
                        <option>Electrical</option>
                        <option>IT</option>
                        <option>MBA</option>
                        <option>Chemical</option>
       </select>
 </td>
  <td>
  <label>Company Name</label><select name="select" id="company_name" onclick="showPlacedStudentRecord()">
   
   <% 
   String temp=null;
   int j=0;
   while(rs.next()){%>
   				
   			<option value="<%=rs.getString(1) %>"><%out.print(rs.getString(1) );%></option>
   			
   			<%}con.close();%>
   </select>
  </td><td><a href="ViewPlacementAll.jsp">View All</a></td>
  </tr></table>
  </fieldset>
  <fieldset><p id="pid"></p></fieldset>
  <fieldset><legend>Placed Student Information</legend>
  <table width="895" align="left">
  <th width="95" bgcolor ="#E9E9D8">Date</th>
  <th width="119" bgcolor ="#E9E9D8">Academic Year</th>
  <th width="162" bgcolor ="#E9E9D8">Branch</th>
  <th width="209" bgcolor ="#E9E9D8">Student Name</th>
  <th width="265" bgcolor ="#E9E9D8">Company Name</th>
  <%
  		while(i.hasNext()){
  			
  			tps.Placement plist=(Placement)i.next();
  		
 %>
  <tr bgcolor="#FEF7E9">
    <td align="center">
    	<label>
      <%out.print(plist.getDay()); %>
      <%out.print(plist.getMonth()); %>
      <%out.print(plist.getYear()); %>
      </label>
    </td>
    <td align="center"><label><%out.print(plist.getAcademicyear()); %></label></td>
    <td align="center"><label><%out.print(plist.getBranch()); %></label></td>
    <td ><label><%out.print(plist.getStudentname()); %></label></td>
    <td align="center"><label><%out.print(plist.getCompany_name()); %></label></td>
  </tr>
  
  
   <%}%>
</table>
  
  </fieldset>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
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