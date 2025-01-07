<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%String username = (String)session.getAttribute("uname"); %>
<jsp:useBean id="um" class="tps.ViewStudBasicInfo" scope="session"/>
<jsp:setProperty property="uname" name="um" />

<jsp:useBean id="basic" class="tps.ViewStudBasicInfo" scope="session"/>
<jsp:setProperty property="uname" name="basic" value="<%=username %>"/>

<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>


<%! ResultSet rs=null;%>
<%
	ArrayList<tps.StudentAcademicInfoJB> list=basic.viewStudentAcademicInfo();
	Iterator i=list.iterator();
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Update Academic</title>
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

<script language="javascript">
function faggregate()
{
var first,sec,res;
type=document.cal.studtype.value;
f1=parseFloat(document.cal.fe1.value);
f2=parseFloat(document.cal.fe2.value);
s1=parseFloat(document.cal.se1.value);
s2=parseFloat(document.cal.se2.value);
t1=parseFloat(document.cal.te1.value);
t2=parseFloat(document.cal.te2.value);
b1=parseFloat(document.cal.be1.value);
b2=parseFloat(document.cal.be2.value);
if(f1)
{
res=(f1+f2+s1+s2+t1+t2+b1+b2)/8;

}
else
{
res=(s1+s2+t1+t2+b1+b2)/6;
}

document.cal.txtresult.value=res;

}
function displayResult(studtype)
{
document.getElementById("result").value=studtype;
document.getElementById("result1").value=studtype;
document.getElementById("dip").value="";
document.cal.fe1.disabled=true;
document.cal.fe2.disabled=true;
document.cal.dip.disabled=false;
}
function displayResult2(studtype)
{
document.getElementById("dip").value=studtype;
document.getElementById("result").value="";
document.getElementById("result1").value="";
document.cal.dip.disabled=true;
document.cal.fe1.disabled=false;
document.cal.fe2.disabled=false;
}

</script>

<script language="JavaScript">

function cname()
{
var len,i,ch;
len=cal.college.value.length;
for(i=0;i<len;i++)
{
	ch=cal.college.value.charAt(i);
	if(ch==''||ch=='#'||ch=='*'||ch=='@'||ch=='$'||ch=='%'||ch=='1'||ch=='2'||ch=='3'||ch=='4'||ch=='5'||ch=='6'||ch=='7'||ch=='8'||ch=='9'||ch=='0')
	{
	alert('Name cannot contain @,#,$,%,&,*,0,1,2,3,4,5,6,7,8,9');
		document.getElementById("college").value="";
	return false;
	}
	
}
return true;
}
</script>
<script language="JavaScript">
function hsc1()
{
var len,i,ch;
len=cal.hsc.value.length;
if(isNaN(cal.hsc.value))
{
	alert('Marks should be Numeric');
	document.getElementById("hsc").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function ssc1()
{
var len,i,ch;
len=cal.ssc.value.length;
if(isNaN(cal.ssc.value))
{
	alert('Marks should be Numeric');
	document.getElementById("ssc").value="";
	return false;
}
return true;

}
</script>

<script language="JavaScript">
function diploma1()
{
var len,i,ch;
len=cal.diploma.value.length;
if(isNaN(cal.diploma.value))
{
	alert('Marks should be Numeric');
	document.getElementById("diploma").value="";
	return false;
}
return true;

}
</script>

<script language="JavaScript">
function fejs1()
{
var len,i,ch;
len=cal.fe1.value.length;
if(isNaN(cal.fe1.value))
{
	alert('Marks should be Numeric');
	document.getElementById("result").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function fejs2()
{
var len,i,ch;
len=cal.result1.value.length;
if(isNaN(cal.result1.value))
{
	alert('Marks should be Numeric');
	document.getElementById("result1").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function sejs1()
{
var len,i,ch;
len=cal.se1.value.length;
if(isNaN(cal.se1.value))
{
	alert('Marks should be Numeric');
	document.getElementById("se1").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function sejs2()
{
var len,i,ch;
len=cal.se2.value.length;
if(isNaN(cal.se2.value))
{
	alert('Marks should be Numeric');
	document.getElementById("se2").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function tejs1()
{
var len,i,ch;
len=cal.te1.value.length;
if(isNaN(cal.te1.value))
{
	alert('Marks should be Numeric');
	document.getElementById("te1").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function tejs2()
{
var len,i,ch;
len=cal.te2.value.length;
if(isNaN(cal.te2.value))
{
	alert('Marks should be Numeric');
	document.getElementById("te2").value="";
	return false;
}
return true;

}
</script>

<script language="JavaScript">
function bejs1()
{
var len,i,ch;
len=cal.be1.value.length;
if(isNaN(cal.be1.value))
{
	alert('Marks should be Numeric');
	document.getElementById("be1").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function bejs2()
{
var len,i,ch;
len=cal.be2.value.length;
if(isNaN(cal.be2.value))
{
	alert('Marks should be Numeric');
	document.getElementById("be2").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function ayear()
{
var len,i,ch;
len=cal.admission_year.value.length;
if(isNaN(cal.admission_year.value))
{
	alert('Year should be Numeric');
	document.getElementById("admission_year").value="";
	return false;
}
return true;

}
</script>

<script language="JavaScript">
function cyear()
{
var len,i,ch;
len=cal.current_year.value.length;
if(isNaN(cal.current_year.value))
{
	alert('Year should be Numeric');
	document.getElementById("current_year").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function lb()
{
var len,i,ch;
len=cal.lback.value.length;
if(isNaN(cal.lback.value))
{
	alert('Year should be Numeric');
	document.getElementById("lback").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function db()
{
var len,i,ch;
len=cal.dback.length;
if(isNaN(cal.dback.value))
{
	alert('Year should be Numeric');
	document.getElementById("dback").value="";
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

      <script type='text/javascript'></script>
        
  </div>
        
  <div id="templatemo_main" >
    
<div class="col_w900 col_w900_last">

          <div class="cleaner">
          <form action="UpdateAcademic.jsp" method="post">
		 <fieldset><legend>Update Academic Info</legend> <table width="633" height="439" border="0" align="center">
		  <%
		  while(i.hasNext()){
	 tps.StudentAcademicInfoJB ai=(tps.StudentAcademicInfoJB)i.next();
%>	     
     
  <tr bgcolor ="#E9E9D8">
    <td width="133"><div align="center">Admission Year</div></td>
    <td width="175">
          <div align="center">
            <input type="text" name="admission_year" value="<%out.print(ai.getAdmission_year());%>" id="admission_year" onkeypress="return ayear()"/>          
              </div></td>
    <td width="95"><div align="center">Current Year </div></td>
    <td width="212"><div align="center">
      <input type="text" name="current_year" value="<%out.print(ai.getCurrent_year()); %>" id="current_year" onkeypress="return cyear()"/>
</div></td>
    </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">Branch</div></td>
    <td>
        <div align="center">
          <input type="text" name="branch" value="<%out.write(ai.getBranch());%>"/>    
              </div></td>
    <td><div align="center">College</div></td>
    <td><div align="center">
      <input type="text" name="college" value="<%out.write(ai.getCollege());%>" onkeypress="return cname()"/>
    </div></td>
    </tr>
  <tr bgcolor="#FEF7E9">
    <td><div align="center">Diploma % </div></td>
    <td>
        <div align="center">
          <input type="text" name="diploma" value="<%out.print(ai.getDiploma());%>" onkeypress="return diploma1()"/>
        </div></td>
    <td><div align="center">   
    Select Year</div> </td>
    <td><div align="center">
      <select name="academicyear" id="academicyear">
       <option value="First">First</option>
       <option value="Second">Second</option>
       <option value="Third">Third</option>
       <option value="Final">Final</option>
       </select>
    </div></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td><div align="center">HSC % </div></td>
    <td>
        <div align="center">
          <input type="text" name="hsc" value="<%out.print(ai.getHsc());%>" onkeypress="return hsc1()"/>
        </div></td>
    <td><div align="center">SSC % </div></td>
    <td><div align="center">
      <input type="text" name="ssc" value="<%out.print(ai.getSsc());%>" onkeypress="return ssc1()"/>
    </div></td>
    </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">FE I </div></td>
    <td>
        <div align="center">
          <input type="text" name="fe1" value="<%out.print(ai.getFe1());%>" id="result" onkeypress="return fejs1()"/>
        </div></td>
    <td><div align="center">FE II</div></td>
    <td><div align="center">
      <input type="text" name="fe2" value="<%out.print(ai.getFe2());%>" id="result1" onkeypress="return fejs2()"/>
    </div></td>
    </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">SE I </div></td>
    <td>
        <div align="center">
         <input type="text" name="se1" value="<%out.print(ai.getSe1());%>"/>
        </div></td>
    <td><div align="center">SE II </div></td>
    <td><div align="center">
      <input type="text" name="se2" value="<%out.print(ai.getSe2());%>"/>
    </div></td>
    </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">TE I </div></td>
    <td>
        <div align="center">
          <input type="text" name="te1" value="<%out.print(ai.getTe1());%>"/>
        </div></td>
    <td><div align="center">TE II</div></td>
    <td><div align="center">
      <input type="text" name="te2" value="<%out.print(ai.getTe2());%>"/>
    </div></td>
  </tr>
  <tr  bgcolor ="#E9E9D8">
    <td height="45"><div align="center">BE I </div></td>
    <td>
        <div align="center">
          <input type="text" name="be1" value="<%out.print(ai.getBe1());%>"/>
        </div></td>
    <td><div align="center">BE II </div></td>
    <td><div align="center">
      <input type="text" name="be2" value="<%out.print(ai.getBe2());%>"/>
    </div></td>
    </tr>
	 <tr bgcolor="#FEF7E9">
    <td><div align="center">AGGREGATE % </div></td>
    <td>
        <div align="center">
          <input type="text" name="aggregate" value="<%out.print(ai.getAggregate()) ;%>"/>
        </div></td>
    <td><div align="center"></div></td>
    <td><div align="center"></div></td>
	 </tr>
	 <tr bgcolor="#FEF7E9">
    <td><div align="center">Live Backlogs </div></td>
    <td>
        <div align="center">
          <input type="text" name="lback" value="<%out.print(ai.getLback());%>"/>
        </div></td>
    <td><div align="center">Dead Backlogs </div></td>
    <td><div align="center">
      <input type="text" name="dback" value="<%out.print(ai.getDback());%>"/>
    </div></td>
    </tr>
	<tr  bgcolor ="#E9E9D8">
	<td height="52" colspan="4">
      <div align="center">
  		<input type="submit" name="Submit" value="Update" />
		&nbsp;
		<input type="reset" name="Submit" value="Clear" />
        &nbsp;
        <input type="submit" name="Submit" value="Cancel" />
      </div></td>
	</tr>
 
            	
 
	<%}%>
            </table></fieldset> 
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
    Copyright © 2048 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>