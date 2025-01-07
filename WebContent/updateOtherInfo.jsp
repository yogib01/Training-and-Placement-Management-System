<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%String username = (String)session.getAttribute("uname"); %>


<jsp:useBean id="basic" class="tps.ViewStudBasicInfo" scope="session"/>
<jsp:setProperty property="uname" name="basic" value="<%=username %>"/>

<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>


<%! ResultSet rs=null;%>
<%
	ArrayList<tps.AdditionalAcademicInfoJB> list=basic.viewStudentOtherInfo();
	Iterator i=list.iterator();
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Update Other Information</title>
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
            <li><a href="Logout.jsp">Logout</a></li>
        </ul>    	
        <div id="search_box">
            <font color="#FFCC00"> Welcome <%=session.getAttribute("uname")%></font>
        </div>
        <div class="cleaner"></div>
    </div> 

<div id="slider_wrapper_n"><script type='text/javascript'></script>


  </div>
        
  <div id="templatemo_main" >
    
<div class="col_w900 col_w900_last">

          <div class="cleaner">
          <form action="UpdateOther.jsp" method="post">
		   <table width="669" height="167" border="0" align="center">
		  <%
		  while(i.hasNext()){
	 tps.AdditionalAcademicInfoJB ai=(tps.AdditionalAcademicInfoJB)i.next();
%>	     
      
            	<tr  bgcolor ="#E9E9D8">
            		<td width="351">Computer Literacy:</td>
       	          	<td><input name="cliteracy" type="text" value="<% out.write(ai.getCliteracy());%>"/></td>
                	<td width="418">Seminar/Paper Presentation :</td>
                  	<td><input name="sppt" type="text" value="<% out.write(ai.getSppt());%>"/></td>
               </tr>
				<tr bgcolor="#FEF7E9">
					<td width="351">Courses:</td>
                    <td><input name="courses" type="text" value="<% out.write(ai.getCourses());%>"/></td>
	                <td width="418">Other:</td>
                    <td><input name="others" type="text" value="<% out.write(ai.getOthers());%>"/></td>
                </tr>
                <tr bgcolor ="#E9E9D8">
					 <td >Project:</td>
					 <td><input name="project" type="text" value="<% out.write(ai.getProject());%>"/></td>
					 <td width="418"></td>
					 <td ></td>
                </tr>
				
				<tr bgcolor="#FEF7E9">
                <td colspan="4"><div align="center"></div>                  
                  <div align="center">
                    <input type="submit" name="Submit" value="Update" />
					&nbsp;
					<input type="reset" name="Submit" value="Clear" />
					&nbsp;
					<input type="submit" name="Submit" value="Cancel" />
				 </div></td>
              
				</tr>
	<%}%>
            </table></form>
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
    
    Copyright © 2048 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>