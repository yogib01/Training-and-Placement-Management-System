<jsp:useBean id="search" class="tps.SearchByCriteria" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="search"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.sql.ResultSet"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Search Criteria</title>
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
        
  <div id="templatemo_main" >
  
 <fieldset><legend>List of Candidate Satisfying the criteria</legend>
<form action="CriteriaList.jsp" method="post"><table width="887" height="97" border="3" align="center" cellpadding="0" cellspacing="0">
<tr bgcolor ="#E9E9D8">
<th width="100" height="38"><div align="center">College</div></th>
<th width="122"><div align="center">Name</div></th>
<th width="84"><div align="center">DOB</div></th>
<th width="121"><div align="center">Address</div></th>
<th width="132"><div align="center">Mobile Number</div></th>
<th width="175"><div align="center">Email</div></th>
<th width="133"><div align="center">Engg.Aggregate</div></th>
</tr>
 <%
	ResultSet rs1=search.searchByCriteria();
	
	while(rs1.next()){
		
%>


<tr bgcolor ="#FEF7E9">
<td><div align="center"><label><%=rs1.getString(1) %></label></div></td>
<td><div align="center"><label><%=rs1.getString(2) %>&nbsp;<%=rs1.getString(3) %>&nbsp;<%=rs1.getString(4) %></label></div></td>
<td><div align="center"><%=rs1.getString(5) %>/<%=rs1.getString(6) %>/<%=rs1.getString(7) %></div></td>
<td><div align="center"><%=rs1.getString(8) %></div></td>
<td><div align="center"><%=rs1.getString(9) %></div></td>
<td><div align="center"><%=rs1.getString(10) %></div></td>
<td><div align="center"><%=rs1.getString(11) %></div></td>
</tr>
<%} %>
<input type="hidden" value="<%=request.getParameter("academicyear")%>" name="academicyear"/>
<input type="hidden" value="<%=request.getParameter("branch")%>" name="branch"/>
<input type="hidden" value="<%=request.getParameter("aggregate")%>" name="aggregate"/>
<input type="hidden" value="<%=request.getParameter("lback")%>" name="lback"/>
<input type="hidden" value="<%=request.getParameter("dback")%>" name="dback"/>
<%
System.out.println(request.getParameter("academicyear"));
System.out.println(request.getParameter("branch"));
System.out.println(request.getParameter("aggregate"));
System.out.println(request.getParameter("lback"));
System.out.println(request.getParameter("dback"));

%>
</table><div align="center"><input type="submit" value="Print"/></div></form>
</fieldset>
 <div class="col_w900 col_w900_last">
          <div class="cleaner">
            
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
</div> 

</body>
</html>