<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="tps.DBConnection"%><html xmlns="http://www.w3.org/1999/xhtml">

<%String username = (String)session.getAttribute("uname"); %>
<jsp:useBean id="basic" class="tps.ViewStudBasicInfo" scope="session"/>
<jsp:setProperty property="uname" name="basic" value="<%=username %>"/>


<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>


<%! ResultSet rs=null,rs1=null;%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click|Student Profile</title>

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

<script type='text/javascript'></script>

  </div>
        
  <div id="templatemo_main" >
    
<div class="col_w900 col_w900_last">

          <div class="cleaner">  <form action="#" method="post">
          
          
          <%
	ArrayList<tps.StudentBasicInfoJB> list=basic.viewStudentInfo();
	Iterator i=list.iterator();
%>
   
  <fieldset><legend>Personal Information</legend>
  <table width="828" height="325" border="0" align="center">
	    <%
		  while(i.hasNext()){
	 tps.StudentBasicInfoJB ai=(tps.StudentBasicInfoJB)i.next();
%>
           	
 <tr  bgcolor ="#E9E9D8">
          <td width="124" height="49"><div align="left" class="style5">
            <div align="center">Full Name </div>
          </div></td>
                <td colspan="3">                  
                  <div align="left">
                      <label>
                      <% out.write(ai.getFirst_name());%>
                      </label>                
                    <label>
                    <% out.write(ai.getFathername());%>
                    </label> 
                    <label>
                    <% out.write(ai.getSurname());%>
                    </label>  
                </div></td>
                <td colspan="2" rowspan="3"><div align="center"></div>                  
                <div align="center">
                
                 <%
			    	Connection con=DBConnection.getConnection();
			    	Statement stmt=con.createStatement();
			    	rs=stmt.executeQuery("select photo_path from StudentBasicInfo where uname='"+username+"'");
			   		if(rs.next()){
			   			
			    %>
                
                  <input name="imageField" type="image" src="images/StudentPhoto/<%=rs.getString(1)%>" width="150" height="150"/><%} %>
                </div>                <div align="center"></div>                  
                <div align="center">                  </div>                <div align="center"></div>                  
                <div align="center">                  </div></td>
          </tr>
              <tr  bgcolor="#FEF7E9">
                <td height="47"><div align="center">Mother Name </div></td>
                <td width="180">                  
                  <div align="center">
                    <label><% out.write(ai.getMothername());%></label>                
                  </div></td>
                <td width="98"><div align="center">DOB</div></td>
                <td width="168">
               <div align="center"> <label><% out.print(ai.getDay());%>/<% out.print(ai.getMonth());%>/<% out.print(ai.getYear());%>  </label></div></td>
              </tr>
              <tr bgcolor ="#E9E9D8">
                <td height="69"><div align="center">Permanent Address </div></td>
                <td>                  
                  <div align="center">
                 <label> <% out.write(ai.getPermant_address());%></label>                
                  </div></td>
                <td><div align="center">Local Address </div></td>
                <td>                  
                  <div align="center">
                    <label><% out.write(ai.getLocal_address());%></label>                
                  </div></td>
              </tr>
			  <tr  bgcolor="#FEF7E9"><td><div align="center">Gender</div></td>
			    <td><div align="center">
			      <label><% out.write(ai.getGender());%></label>
		        </div></td>
			    <td><div align="center">City</div></td>
			    <td><div align="center">
			      <label><% out.write(ai.getCity());%></label>
		        </div></td>
			    <!-- <td width="47">Sign</td> -->
			    <%
			    	Connection con1=DBConnection.getConnection();
			    	Statement stmt1=con.createStatement();
			    	rs1=stmt1.executeQuery("select signature_path from StudentBasicInfo where uname='"+username+"'");
			   		if(rs1.next()){
			   			String photo_path=rs.getString(1);
			   		
			    %>
			    
			 <!-- <td width="199"><input name="imageField" type="image" src="/images/StudentSign/<%rs.getString(1);%>" width="150" height="70"/></td>
			  -->
			 <%} %>
			  </tr>
              <tr bgcolor ="#E9E9D8">
                <td height="52"><div align="center">Pin Code </div></td>
                <td>                  
                  <div align="center">
                    <label><% out.print(ai.getPin());%></label>                
                  </div></td>
                <td><div align="center">State</div></td>
                <td>                  
                  <div align="center">
                    <label><% out.write(ai.getState());%></label>                
                  </div></td>
                <td><div align="center">Email</div></td>
                <td>                  
                  <div align="center">
                    <label><% out.write(ai.getEmail());%></label>                
                  </div></td>
              </tr>
              <tr bgcolor="#FEF7E9">
                <td height="48"><div align="center">Personal Contact </div></td>
                <td><div align="center">
                  <label><% out.print(ai.getStud_contact());%></label>
                </div></td>
                <td><div align="center">Parent Contact </div></td>
                <td><div align="center">
                  <label><% out.print(ai.getParent_contact());%></label>
                </div></td>
                <td><div align="center">Landline</div></td>
                <td><div align="center">
                  <label><% out.print(ai.getLandline());%></label>
                </div></td>
              </tr>
              
			  
        
            	
 
	<%}%>
        </table>
			
			<p>&nbsp;</p>
  </fieldset>
           </form> 
<form action="UpdateAcademic.jsp" method="post">

<%
	ArrayList<tps.StudentAcademicInfoJB> list2=basic.viewStudentAcademicInfo();
	Iterator i2=list2.iterator();
%>
<fieldset><legend>Academic Information</legend>
		   <table width="832" height="439" border="0" align="center">
		  <%
		  while(i2.hasNext()){
	 tps.StudentAcademicInfoJB ai=(tps.StudentAcademicInfoJB)i2.next();
%>	     
     
  <tr bgcolor ="#E9E9D8">
    <td width="133"><div align="center">Admission Year</div></td>
    <td width="175">
          <div align="center">
            <label><%out.print(ai.getAdmission_year());%></label>          
              </div></td>
    <td width="209"><div align="center">Current Year </div></td>
    <td width="297"><div align="center">
      <label><%out.print(ai.getCurrent_year()); %></label>
</div></td>
    </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">Branch</div></td>
    <td>
        <div align="center">
          <label><%out.write(ai.getBranch());%></label>    
              </div></td>
    <td><div align="center">College</div></td>
    <td><div align="center">
      <label><%out.write(ai.getCollege());%></label>
    </div></td>
    </tr>
  <tr bgcolor="#FEF7E9">
    <td><div align="center">Diploma % </div></td>
    <td>
        <div align="center">
          <label><%out.print(ai.getDiploma());%></label>
        </div></td>
    <td><div align="center"></div>  
      <div align="center">
         
      Select Year </div></td>
    <td><div align="center">
      <label><%out.print(ai.getAcademicyear());%></label>
    </div></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td><div align="center">HSC % </div></td>
    <td>
        <div align="center">
          <label><%out.print(ai.getHsc());%></label>
        </div></td>
    <td><div align="center">SSC % </div></td>
    <td><div align="center">
      <label><%out.print(ai.getSsc());%></label>
    </div></td>
    </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">FE I </div></td>
    <td>
        <div align="center">
          <label><%out.print(ai.getFe1());%></label>
        </div></td>
    <td><div align="center">FE II</div></td>
    <td><div align="center">
      <label><%out.print(ai.getFe2());%></label>
    </div></td>
    </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">SE I </div></td>
    <td>
        <div align="center">
         <label><%out.print(ai.getSe1());%></label>
        </div></td>
    <td><div align="center">SE II </div></td>
    <td><div align="center">
      <label><%out.print(ai.getSe2());%></label>
    </div></td>
    </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">TE I </div></td>
    <td>
        <div align="center">
          <label><%out.print(ai.getTe1());%></label>
        </div></td>
    <td><div align="center">TE II</div></td>
    <td><div align="center">
      <label><%out.print(ai.getTe2());%></label>
    </div></td>
  </tr>
  <tr  bgcolor ="#E9E9D8">
    <td height="45"><div align="center">BE I </div></td>
    <td>
        <div align="center">
          <label><%out.print(ai.getBe1());%></label>
        </div></td>
    <td><div align="center">BE II </div></td>
    <td><div align="center">
      <label><%out.print(ai.getBe2());%></label>
    </div></td>
    </tr>
	 <tr bgcolor="#FEF7E9">
    <td><div align="center">AGGREGATE % </div></td>
    <td>
        <div align="center">
          <label><%out.print(ai.getAggregate()) ;%></label>
        </div></td>
    <td><div align="center"></div></td>

    <td><div align="center"></div></td>
	 </tr>
	 <tr bgcolor="#FEF7E9">
    <td><div align="center">Live Backlogs </div></td>
    <td>
        <div align="center">
          <label><%out.print(ai.getLback());%></label>
        </div></td>
    <td><div align="center">Dead Backlogs </div></td>
    <td><div align="center">
      <label><%out.print(ai.getDback());%></label>
    </div></td>
    </tr>
 
            	
 
	<%}%>
            </table>
           <p>&nbsp;</p>
</fieldset>
            </form>		   
		<form action="UpdateOther.jsp" method="post">
		
		
<%
	ArrayList<tps.AdditionalAcademicInfoJB> list3=basic.viewStudentOtherInfo();
	Iterator i3=list3.iterator();
%>
<fieldset><legend>Extra Curricular</legend>
		   <table width="831" height="167" border="0" align="center">
		  <%
		  while(i3.hasNext()){
	 tps.AdditionalAcademicInfoJB ai=(tps.AdditionalAcademicInfoJB)i3.next();
%>	     
      
            	<tr  bgcolor ="#E9E9D8"><td width="337"><div align="left">Computer Literacy:
   	              <label><% out.write(ai.getCliteracy());%></label>
            	</div></td>
                <td width="484"><div align="left">Seminar/Paper Presentation :
                  <label><% out.write(ai.getSppt());%></label>
                                        
                </div></td></tr>
				<tr bgcolor="#FEF7E9"><td width="337"><div align="left">Courses:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <label><% out.write(ai.getCourses());%></label>
				</div></td>
                <td width="484"><div align="left">Other:
                    <label><% out.write(ai.getOthers());%></label>
                </div></td></tr>
				<tr  bgcolor ="#E9E9D8">
				  <td colspan="2"><div align="left">Project:
		            <label><% out.write(ai.getProject());%></label>
				  </div></td>
		     </tr>
	<%}%>
          </table>
           <p>&nbsp;</p>
</fieldset>
		</form>   
		   
		   
		   
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
    
    	Copyright © 2022 <a href="#">Arati|Khushbu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>