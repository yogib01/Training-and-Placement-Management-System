<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.sql.Statement"%>
<%@page import="tps.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Placement Info</title>
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
            <li><a href="index.jsp">Home</a></li>
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
   <div class="cleaner">
<form action="FillPlacementAction.jsp" method="post"> <fieldset><legend>Store the Placed Student</legend>
  <table width="311" height="394" border="0" align="center">
  <tr bgcolor="#FEF7E9"><td height="42"><div align="center">Date:</div></td>
  <td> <select name="day">
<option>Day</option>
<option>01</option>
<option>02</option>
<option>03</option>
<option>04</option>
<option>05</option>
<option>06</option>
<option>07</option>
<option>08</option>
<option>09</option>
<option>10</option>
<option>11</option>
<option>12</option>
<option>13</option>
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
<option>21</option>
<option>22</option>
<option>23</option>
<option>24</option>
<option>25</option>
<option>26</option>
<option>27</option>
<option>28</option>
<option>29</option>
<option>30</option>
<option>31</option>

</select><select name="month">
<option>Month</option>
<option>Jan</option>
<option>Feb</option>
<option>Mar</option>
<option>Apr</option>
<option>May</option>
<option>June</option>
<option>July</option>
<option>Aug</option>
<option>Sep</option>
<option>Oct</option>
<option>Nov</option>
<option>Dec</option>
</select>
<select name="year">
<option>Year</option>


<option>2010</option>
<option>2011</option>
<option>2012</option>
<option>2013</option>
</select></td></tr>
  <tr  bgcolor ="#E9E9D8">
    <td width="107" height="67"><div align="center">Branch : </div></td>
    <td width="188">
      <div align="center">
        <select name="branch" id="branch" >
          <option>Computer</option>
          <option>Mechanical</option>
          <option>Information Tech.</option>
          <option>E &amp;TC</option>
          <option>Chemical</option>
          <option>MBA</option>
          <option>Civil</option>
          <option>Electrical</option>
          <option>Biotechnology</option>
        </select>
      </div></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="62"><div align="center">Academic Year : </div></td>
    <td>&nbsp;
      <div align="center">
       <select name="academicyear">
       <option value="First">First</option>
       <option value="Second">Second</option>
       <option value="Third">Third</option>
       <option value="Final">Final</option>
       </select>
      </div></td>
  </tr>
  <tr  bgcolor ="#E9E9D8">
    <td height="64"><div align="center">Student Name : </div></td>
    <td>
      <div align="center">
        <input type="text" name="studentname" />
      </div></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="57"><div align="center">Company Name : </div></td>
    <td>
      <div align="center">
	  <select name="company_name">
	  <%
	  		ResultSet rs=null;
	  		Connection con=DBConnection.getConnection();
	  		
	  		Statement stmt=con.createStatement();
	  		rs=stmt.executeQuery("SELECT companyname AS companyname FROM  recruiter UNION SELECT  company_name AS companyname FROM  company_info");
	  		while(rs.next()){
	  %>
          
		  <option value="<%=rs.getString(1) %>"><%out.print(rs.getString(1) );%></option>
		  <%}con.close(); %>
          </select>
      
      </div></td>
  </tr>
  <tr>
    <td height="88" colspan="2"   bgcolor ="#E9E9D8">
      <div align="center">
       <input type="submit" name="Submit" value="Save" />
        <input type="reset" name="Reset" value="Clear" />
  
       <input type="submit" name="Submit" value="Cancel" />
      </div>
   </td>
    </tr>
</table>
  <p>&nbsp;</p>
    
</fieldset></form> 
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