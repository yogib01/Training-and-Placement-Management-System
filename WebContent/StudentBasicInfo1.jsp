<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:useBean id="l1" class="tps.LoginTPS" scope="session" />
<jsp:setProperty property="*" name="l1" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Basic Information1</title>
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
.style1 {
	color: #FFFFFF
}

.style2 {
	font-size: 18px
}
-->
</style>
<script language="JavaScript">

function emptyFieldsValidation(){
      var firstname,fathername,mothername,surname,city,state,pincode;
      firstname=form1.first_name.value;
      fathername=form1.fathername.value;
	  mothername=form1.mothername.value;
	  surname=form1.surname.value;
	  city=form1.city.value;
	  state=form1.state.value;
	  pincode=form1.pin.value;
      

      if((form1.gender[0].checked == false)&&(form1.gender[1].checked == false)){
          alert('Select male or female');
          return false;
      }
      if(firstname==null || firstname==""){
          alert('Enter First Name');
          return false;
      }
      if(fathername==null || fathername==""){
		alert("Enter Father name");
		return false;
      }

      if(mothername==null || mothername==""){
          alert('Enter mothername Name');
          return false;
      }
      if(surname==null || surname==""){
		alert("Enter Surname name");
		return false;
      }
      if(city==null || city==""){
          alert('Enter City');
          return false;
      }
       if(pincode==null || pincode==""){
  		alert("Enter Pincode");
  		return false;
        }
       if(state==null || state==""){
   		alert("Enter State");
   		return false;
         }
      return true;
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
		document.getElementById("first_name").value="";
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
<script type='text/javascript' src='student_menu.js'></script>
<script type='text/javascript' src='menu_com.js'></script>
<noscript>Your browser does not support script</noscript>
</head>
<body>

<div id="templatemo_wrapper">
<div id="templatemo_header">
<div id="site_title">
<h1><a href=""></a></h1>
</div>
</div>
<!-- end of header -->

<div id="templatemo_menu">
<ul>
	<li><a href="index.html">Home</a></li>
	<li><a href="gallery.html">Gallery</a></li>
		<li><a href="blog.html">Blog</a></li>
	<li><a href="contact.html">Contact</a></li>
	<li><a href="Logout.jsp">Logout</a></li>
</ul>
<div id="search_box"><font color="#FFCC00"> Welcome <%=session.getAttribute("uname")%></font>
</div>
<div class="cleaner"></div>
</div>
<div id="slider_wrapper_n"><script type='text/javascript'></script>

</div>

<div id="templatemo_main">

<div class="col_w900 col_w900_last">

<div class="cleaner"></div>
<form action="paction1.jsp" method="post" name="form1">
<fieldset><legend>Personal Information</legend>
<fieldset>&nbsp;


<table width="752" border="0" align="center">
	<input type="hidden" name="uname"
		value="<%=session.getAttribute("uname")%>">
	<tr bgcolor="#E9E9D8">
		<td height="48">First Name</td>
		<td><input id="first_name" name="first_name" type="text" onkeypress="return first_name1()" onblur="return first_name1()"/></td>
		<td width="123" height="46">
		<div align="left">Date Of Birth</div>
		</td>
		<td><select name="day">
			<option>Day</option>
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

		</select> <select name="month">
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
			<option value="Dec">Dec</option>
		</select> <select name="year">
			<option value="">Year</option>
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

		</select>
		
	</tr>
	<tr bgcolor="#FEF7E9">
		<td height="48">Middle name</td>
		<td><input type="text" id="fathername" name="fathername" onblur="return father_name()" onkeypress="return father_name()"/></td>
		<td height="46">
		<div align="left">Gender</div>
		</td>
		<td><input name="gender" type="radio" value="male" id="gender"/> Male 
		<input name="gender" type="radio" value="female" id="gender"/> Female</td>
	</tr>
	<tr bgcolor="#E9E9D8">
		<td height="42">
		<div align="left">Mother Name</div>
		</td>
		<td><input id="mothername" name="mothername" type="text" onkeypress="return mother_name()" onblur="return mother_name()"></td>
		<td>
		<div align="left">Local Address</div>
		</td>
		<td width="274" height="86">
		<div align="left"><textarea name="local_address"></textarea></div>
		</td>
	</tr>
	<tr bgcolor="#FEF7E9">
		<td width="109">
		<div align="left">Last Name</div>
		</td>
		<td width="228"><input id="surname" name="surname" type="text" onkeypress="return last_name()" onblur="return last_name()"></td>
		<td height="43">
		<div align="left">Permanant Address</div>
		</td>
		<td><textarea name="permant_address" id="permant_address"></textarea></td>
	</tr>
	<tr bgcolor="#E9E9D8">
		<td height="39">
		<div align="left">City</div>
		</td>
		<td><input name="city" type="text" id="city" onkeypress="return city_name()" onblur="return city_name()"></td>
		<td>
		<div align="left">Pin Code</div>
		</td>
		<td><input name="pin" type="text" id="pin" onkeypress="return pincode()" onblur="return pincode()"></td>
	</tr>
	<tr bgcolor="#FEF7E9">
		<td>
		<div align="left">State</div>
		</td>
		<td><input name="state" type="text" id="state" onkeypress="return state_name()" onblur="return state_name()"></td>
		<td>
		<div align="left"></div>
		<td>
	</tr>
</table>
</fieldset>
<div align="center"><input type="submit" value="Next &gt;&gt;" onclick="return emptyFieldsValidation()"><input name="Reset" type="reset" value="Reset"><input type="submit" name="Submit" value="Cancel"></div>
</form>
</div>
</div>
</fieldset>
<div>
<p><span class="bottom"></span><img src="images/content_bottom.jpg"
	width="960" height="15" align="absmiddle" /></p>

</div>
<!-- end of main -->



<div id="templatemo_footer">Copyright © 2022 <a href="#">Arati|Khushbu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbu|Yogesh|Pratik</a></div>
<!-- end of templatemo_footer -->
</body>
</html>