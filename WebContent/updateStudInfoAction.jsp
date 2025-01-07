<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%String username = (String)session.getAttribute("uname"); %>


<jsp:useBean id="basic" class="tps.ViewStudBasicInfo" scope="session"/>
<jsp:setProperty property="uname" name="basic" value="<%=username%>"/>

<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>


<%! ResultSet rs=null;%>
<%
	ArrayList<tps.StudentBasicInfoJB> list=basic.viewStudentInfo();
	Iterator i=list.iterator();
%><head>
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

<script language="JavaScript">
function first_name1()
{
var len,i,ch;
len=form1.first_name.value.length;
for(i=0;i<len;i++)
{
	ch=form1.first_name.value.charAt(i);
	if(ch==''||ch=='#'||ch=='*'||ch=='@'||ch=='$'||ch=='%'||ch=='1'||ch=='2'||ch=='3'||ch=='4'||ch=='5'||ch=='6'||ch=='7'||ch=='8'||ch=='9'||ch=='0')
	{
	alert('Name cannot contain @,#,$,%,&,*,0,1,2,3,4,5,6,7,8,9');
		document.getElementById("first_name").value=" ";
	return false;
	}
	
}
return true;
}
</script>

<script language="JavaScript">
function  father_name()
{
var len,i,ch;
len=form1.fathername.value.length;
for(i=0;i<len;i++)
{
	ch=form1.fathername.value.charAt(i);
	if(ch==''||ch=='#'||ch=='*'||ch=='@'||ch=='$'||ch=='%'||ch=='1'||ch=='2'||ch=='3'||ch=='4'||ch=='5'||ch=='6'||ch=='7'||ch=='8'||ch=='9'||ch=='0')
	{
	alert('Name cannot contain @,#,$,%,&,*,0,1,2,3,4,5,6,7,8,9');
		document.getElementById("fathername").value="";
	return false;
	}
	
}
return true;
}
</script>

<script language="JavaScript">
function  mother_name()
{
var len,i,ch;
len=form1.mothername.value.length;
for(i=0;i<len;i++)
{
	ch=form1.mothername.value.charAt(i);
	if(ch==''||ch=='#'||ch=='*'||ch=='@'||ch=='$'||ch=='%'||ch=='1'||ch=='2'||ch=='3'||ch=='4'||ch=='5'||ch=='6'||ch=='7'||ch=='8'||ch=='9'||ch=='0')
	{
	alert('Name cannot contain @,#,$,%,&,*,0,1,2,3,4,5,6,7,8,9');
		document.getElementById("mothername").value="";
	return false;
	}
	
}
return true;
}
</script>

<script language="JavaScript">
function  last_name()
{
var len,i,ch;
len=form1.surname.value.length;
for(i=0;i<len;i++)
{
	ch=form1.surname.value.charAt(i);
	if(ch==''||ch=='#'||ch=='*'||ch=='@'||ch=='$'||ch=='%'||ch=='1'||ch=='2'||ch=='3'||ch=='4'||ch=='5'||ch=='6'||ch=='7'||ch=='8'||ch=='9'||ch=='0')
	{
	alert('Name cannot contain @,#,$,%,&,*,0,1,2,3,4,5,6,7,8,9');
		document.getElementById("surname").value="";
	return false;
	}
	
}
return true;
}
</script>

<script language="JavaScript">
function  city_name()
{
var len,i,ch;
len=form1.city.value.length;
for(i=0;i<len;i++)
{
	ch=form1.city.value.charAt(i);
	if(ch==''||ch=='#'||ch=='*'||ch=='@'||ch=='$'||ch=='%'||ch=='1'||ch=='2'||ch=='3'||ch=='4'||ch=='5'||ch=='6'||ch=='7'||ch=='8'||ch=='9'||ch=='0')
	{
	alert('Name cannot contain @,#,$,%,&,*,0,1,2,3,4,5,6,7,8,9');
		document.getElementById("city").value="";
	return false;
	}
	
}
return true;
}
</script>

<script language="JavaScript">
function  state_name()
{
var len,i,ch;
len=form1.state.value.length;
for(i=0;i<len;i++)
{
	ch=form1.state.value.charAt(i);
	if(ch==''||ch=='#'||ch=='*'||ch=='@'||ch=='$'||ch=='%'||ch=='1'||ch=='2'||ch=='3'||ch=='4'||ch=='5'||ch=='6'||ch=='7'||ch=='8'||ch=='9'||ch=='0')
	{
	alert('Name cannot contain @,#,$,%,&,*,0,1,2,3,4,5,6,7,8,9');
		document.getElementById("state").value="";
	return false;
	}
	
}
return true;
}
</script>

<script language="JavaScript">
function pincode()
{
var len,i,ch;
len=form1.pin.value.length;
if(isNaN(form1.pin.value))
{
	alert('Pincode number should be Numeric');
	document.getElementById("pin").value="";
	return false;
}
return true;

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
            <font color="#FFCC00"> Welcome <%=session.getAttribute("uname")%></font>
        </div>
        <div class="cleaner"></div>
    </div> 

     <div id="slider_wrapper_n">
		
     <script type="text/javascript" ></script>
       <p></p>
  </div>
        
  <div id="templatemo_main" >
    
<div class="col_w900 col_w900_last">

    <div class="cleaner">
    <form action="UpdateBasic.jsp" method="post">
   
  <table width="828" height="327" border="0" align="center" cellspacing="0" >
	    <%
		  while(i.hasNext()){
	 tps.StudentBasicInfoJB ai=(tps.StudentBasicInfoJB)i.next();
%>	     
      
           	
 <tr  bgcolor ="#E9E9D8">
          <td width="124" height="56"><div align="left" class="style5">
            <div align="center">First Name </div>
          </div></td>
                <td width="180">                  
                  <div align="center">
                    <input type="text" name="first_name" value="<% out.write(ai.getFirst_name());%>" />                
                  </div></td>
                <td width="94"><div align="center">Middle Name </div></td>
                <td width="172">                  
                  <div align="center">
                    <input type="text" name="fathername" value="<% out.write(ai.getFathername());%>"/>                
                  </div></td>
                <td width="70"><div align="center">Last Name </div></td>
                <td width="176">                  
                  <div align="center">
                    <input type="text" name="surname" value="<% out.write(ai.getSurname());%>"/>                
                  </div></td>
             </tr>
              <tr  bgcolor="#FEF7E9">
                <td height="52"><div align="center">Mother Name </div></td>
                <td>                  
                  <div align="center">
                    <input type="text" name="mothername" value="<% out.write(ai.getMothername());%>"/>                
                    </div></td>
                <td><div align="center">DOB</div></td>
                <td><select name="day">
                <% String temp=ai.getDay();%>
			<option value="<%out.write(temp);%>"><%out.write(temp);%></option>
			<option value="01">01</option>
			<option value="02">02</option>
			<option value="03">03</option>
			<option value="04">04</option>
			<option value="05">05</option>
			<option value="06">06</option>
			<option value="07">07</option>
			<option value="08">08</option>
			<option value="09">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
 			</select>
 			<% String month=ai.getMonth(); %>
		 <select name="month"><option value="<%out.write(month);%>"><%out.write(month);%></option>
			<option value="Month">Month</option>
			<option value="Jan">Jan</option>
			<option value="Feb">Feb</option>
			<option value="Mar">Mar</option>
			<option value="Apr">Apr</option>
			<option value="May">May</option>
			<option value="June">June</option>
			<option value="July">July</option>
			<option value="Aug">Aug</option>
			<option value="Sep">Sep</option>
			<option value="Oct">Oct</option>
			<option value="Nov">Nov</option>
			<option value="Dec">Dec</option></select>
			<% String year=ai.getYear(); %>
		<select name="year"><option value="<%out.write(year);%>"><%out.write(year);%></option>
			<option value="1980">1980</option>
			<option value="1981">1981</option>
			<option value="1982">1982</option>
			<option value="1983">1983</option>
			<option value="1984">1984</option>
			<option value="1985">1985</option>
			<option value="1986">1986</option>
			<option value="1987">1987</option>
			<option value="1988">1988</option>
			<option value="1989">1989</option>
			<option value="1990">1990</option>
			<option value="1991">1991</option>
			<option value="1992">1992</option>
			<option value="1993">1993</option>
			<option value="1994">1994</option>
			<option value="1995">1995</option>
			<option value="1996">1996</option>
			<option value="1997">1997</option>
			<option value="1998">1998</option>
			<option value="1999">1999</option>
			<option value="2000">2000</option>
			<option value="2001">2001</option>
			<option value="2002">2002</option>
			<option value="2003">2003</option>
			<option value="2004">2004</option>
			<option value="2005">2005</option>

		</select></td>
		<td><div align="center">Gender</div></td>
                <td>                  
                  <div align="center">
				    <input type="text" name="gender" value="<%out.write(ai.getGender());%>"/>
                  </div></td>
              </tr>
              <tr bgcolor ="#E9E9D8">
                <td height="69"><div align="center">Permanent Address </div></td>
                <td>                  
                  <div align="center">
                     <textarea rows="3" cols="" name="permant_address"><% out.write(ai.getPermant_address());%></textarea>                
                    </div></td>
                <td><div align="center">Local Address </div></td>
                <td>                  
                  <div align="center">
                                  
                    <textarea rows="3" cols="" name="local_address"><%out.write(ai.getLocal_address());%></textarea>
                    </div></td>
                <td><div align="center">City</div></td>
                <td>                  
                  <div align="center">
                    <input type="text" name="city" value="<% out.write(ai.getCity());%>"/>                
                    </div></td>
              </tr>
              <tr bgcolor="#FEF7E9">
                <td height="52"><div align="center">Pin Code </div></td>
                <td>                  
                  <div align="center">
                    <input type="text" name="pin" value="<% out.print(ai.getPin());%>"/>                
                    </div></td>
                <td><div align="center">State</div></td>
                <td>                  
                  <div align="center">
                    <input type="text" name="state" value="<% out.write(ai.getState());%>"/>                
                    </div></td>
                <td><div align="center">Email</div></td>
                <td>                  
                  <div align="center">
                    <input type="text" name="email" value="<%out.write(ai.getEmail());%>"/>                
                    </div></td>
              </tr>
              <tr bgcolor ="#E9E9D8">
                <td height="54"><div align="center">Personal Contact </div></td>
                <td><div align="center">
                  <input type="text" name="stud_contact" value="<% out.print(ai.getStud_contact());%>"/>
                </div></td>
                <td><div align="center">Parent Contact </div></td>
                <td><div align="center">
                  <input type="text" name="parent_contact" value="<% out.print(ai.getParent_contact());%>"/>
                </div></td>
                <td><div align="center">Landline</div></td>
                <td><div align="center">
                  <input type="text" name="landline" value="<% out.print(ai.getLandline());%>"/>
                </div></td>
              </tr>
              <tr bgcolor="#FEF7E9">
                <td colspan="2"><div align="center"></div>                  
                  <div align="center">                    </div></td>
                <td colspan="2"><div align="center"></div>
				
                  <div align="center">
                  <p>&nbsp;</p>
                   <input type="submit" name="Submit" value="Update" />
                   &nbsp;
                    <input type="reset" name="Submit" value="Clear" />
                    &nbsp;
					<input type="submit" name="Submit" value="Cancel" />
				     
                  </div></td>
                <td colspan="2"><div align="center"></div>                  
                  <div align="center"></div></td>
              </tr>
	<%}%>
            </table>
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
    
    	Copyright � 2048 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>