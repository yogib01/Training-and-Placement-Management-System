<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>
<head>

<%
  
  response.setDateHeader("Expires", new java.util.Date().getTime());
  
  %>


<%String username = (String)session.getAttribute("uname"); %>
<jsp:useBean id="um" class="tps.ViewStudBasicInfo" scope="session"/>
<jsp:setProperty property="uname" name="um" />

<jsp:useBean id="basic" class="tps.ViewStudBasicInfo" scope="session"/>
<jsp:setProperty property="uname" name="basic" value="<%=username %>"/>



<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>


<%! ResultSet rs=null;%>
<%
	ArrayList<tps.StudentAcademicInfoJB> list=basic.viewStudentAcademicInfo();
	Iterator i=list.iterator();
%>






<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Academic Information</title>

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
-->
</style>
<script language="JavaScript">
function admissionValidate()
{
var len,i,ch;
len=form1.admission_year.value.length;
if(isNaN(form1.admission_year.value))
{
	alert('Only Numeric value is allowed!');
	document.getElementById("admission_year").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function currentValidate()
{
var len,i,ch;
len=form1.current_year.value.length;
if(isNaN(form1.current_year.value))
{
	alert('Only Numeric value is allowed!');
	document.getElementById("current_year").value="";
	return false;
}
return true;
}
</script>


<script language="JavaScript">

function emptyFieldsValidation(){
	alert('In empty checking');
      var admissionyear,current_year,college,ssc,hsc,aggrgate,fe1,fe2,se1,se2,te1,te2,be1,be2,lback,dback,diploma;
  	  admissionyear=cal.academicyear.value;
      current_year=cal.current_year.value;
	  college=cal.college.value;
	  ssc=cal.ssc.value;
	  aggrgate=cal.aggregate.value;
	  hsc=cal.hsc.value;
	  diploma=cal.diploma.value;
	  fe1=cal.fe1.value;
	  fe2=cal.fe2.value;
	  se1=cal.se1.value;
	  se2=cal.se2.value;
	  te1=cal.te1.value;
	  te2=cal.te2.value;
	  be1=cal.be1.value;
	  be2=cal.be2.value;
	  lback=cal.lback.value;
	  dback=cal.dback.value;
	  aggregate=cal.aggregate.value;
      if((cal.studtype[0].checked == false)&&(cal.studtype[1].checked == false)){
          alert('Select Diploma or Regular!');
          return false;
      }
      if(admissionyear==null || admissionyear==""){
          alert('Enter ');
          return false;
      }
      if(current_year==null || current_year==""){
		alert("Enter current year");
		return false;
      }

      if(college==null || college==""){
          alert('Enter college Name');
          return false;
      }
      if(ssc==null ||ssc ==""){
		alert("Enter SSC Marks");
		return false;
      }
      if(hsc==null ||hsc ==""){
  		alert("Enter HSC Marks");
  		return false;
       }
      if(fe1==null || fe1==""){
  		alert("Enter FE-I Marks");
  		return false;
       }
      if(fe2==null ||fe2==""){
  		alert("Enter FE-II Marks");
  		return false;
      }
      if(se1==null ||se1 ==""){
    		alert("Enter SE-I Marks");
    		return false;
        }
        if(se2==null ||se2 ==""){
    		alert("Enter SE-II Marks");
    		return false;
        }
      if(te1==null ||te1 ==""){
  		alert("Enter TE-I Marks");
  		return false;
      }
      if(te2==null ||te2 ==""){
  		alert("Enter TE-II Marks");
  		return false;
      }
      if(be1==null ||be1 ==""){
  		alert("Enter BE-I Marks");
  		return false;
      }
      if(be2==null ||be2==""){
  		alert("Enter BE-II Marks");
  		return false;
      }
      
        if(aggregate==null ||aggregate==""){
    		alert("Enter Aggregate Marks");
    		return false;
        }
}
</script>
<script type="text/javascript">
function selectAcademicYear()
{
	
	var select=document.getElementById("academicyear");
	var academicyear = select.options[select.selectedIndex].value;

	if(academicyear=="First"){
			document.cal.fe1.disabled=false;
			document.cal.fe2.value="0.0";
			document.cal.fe2.disabled=true;
			document.cal.se1.value="0.0";
			document.cal.se1.disabled=true;
			document.cal.se2.value="0.0";
			document.cal.se2.disabled=true;
			document.cal.te1.value="0.0";
			document.cal.te1.disabled=true;
			document.cal.te2.value="0.0";
			document.cal.te2.disabled=true;
			document.cal.be1.value="0.0";
			document.cal.be1.disabled=true;
			document.cal.be2.value="0.0";
			document.cal.be2.disabled=true;
			
		}
		if(academicyear=="Second"){
			document.cal.fe1.disabled=false;
			document.cal.fe2.value="";
			document.cal.fe2.disabled=false;
			document.cal.se1.value="0.0";
			document.cal.se1.disabled=true;
			document.cal.se2.value="0.0";
			document.cal.se2.disabled=true;
			document.cal.te1.value="0.0";
			document.cal.te1.disabled=true;
			document.cal.te2.value="0.0";
			document.cal.te2.disabled=true;
			document.cal.be1.value="0.0";
			document.cal.be1.disabled=true;
			document.cal.be2.value="0.0";
			document.cal.be2.disabled=true;
			
		}
		if(academicyear=="Third"){
			document.cal.fe1.disabled=false;
			document.cal.fe2.value="";
			document.cal.fe2.disabled=false;
			document.cal.se1.value="";
			document.cal.se1.disabled=false;
			document.cal.se2.value="0.0";
			document.cal.se2.disabled=true;
			document.cal.te1.value="0.0";
			document.cal.te1.disabled=true;
			document.cal.te2.value="0.0";
			document.cal.te2.disabled=true;
			document.cal.be1.value="0.0";
			document.cal.be1.disabled=true;
			document.cal.be2.value="0.0";
			document.cal.be2.disabled=true;
			
		}
		if(academicyear=="Fourth"){
			document.cal.fe1.disabled=false;
			document.cal.fe2.value="";
			document.cal.fe2.disabled=false;
			document.cal.se1.value="";
			document.cal.se1.disabled=false;
			document.cal.se2.value="";
			document.cal.se2.disabled=false;
			document.cal.te1.value="0.0";
			document.cal.te1.disabled=true;
			document.cal.te2.value="0.0";
			document.cal.te2.disabled=true;
			document.cal.be1.value="0.0";
			document.cal.be1.disabled=true;
			document.cal.be2.value="0.0";
			document.cal.be2.disabled=true;
			
		}
		if(academicyear=="Fifth"){
			document.cal.fe1.disabled=false;
			document.cal.fe2.value="";
			document.cal.fe2.disabled=false;
			document.cal.se1.value="";
			document.cal.se1.disabled=false;
			document.cal.se2.value="";
			document.cal.se2.disabled=false;
			document.cal.te1.value="";
			document.cal.te1.disabled=false;
			document.cal.te2.value="0.0";
			document.cal.te2.disabled=true;
			document.cal.be1.value="0.0";
			document.cal.be1.disabled=true;
			document.cal.be2.value="0.0";
			document.cal.be2.disabled=true;
			
		}
		if(academicyear=="Sixth"){
			document.cal.fe1.disabled=false;
			document.cal.fe2.value="";
			document.cal.fe2.disabled=false;
			document.cal.se1.value="";
			document.cal.se1.disabled=false;
			document.cal.se2.value="";
			document.cal.se2.disabled=false;
			document.cal.te1.value="";
			document.cal.te1.disabled=false;
			document.cal.te2.value="";
			document.cal.te2.disabled=false;
			document.cal.be1.value="0.0";
			document.cal.be1.disabled=true;
			document.cal.be2.value="0.0";
			document.cal.be2.disabled=true;
			
		}
		if(academicyear=="Seventh"){
			document.cal.fe1.disabled=false;
			document.cal.fe2.value="";
			document.cal.fe2.disabled=false;
			document.cal.se1.value="";
			document.cal.se1.disabled=false;
			document.cal.se2.value="";
			document.cal.se2.disabled=false;
			document.cal.te1.value="";
			document.cal.te1.disabled=false;
			document.cal.te2.value="";
			document.cal.te2.disabled=false;
			document.cal.be1.value="";
			document.cal.be1.disabled=false;
			document.cal.be2.value="0.0";
			document.cal.be2.disabled=true;
			
		}
		
		if(academicyear=="Eighth"){
			document.cal.fe1.disabled=false;
			document.cal.fe2.value="";
			document.cal.fe2.disabled=false;
			document.cal.se1.value="";
			document.cal.se1.disabled=false;
			document.cal.se2.value="";
			document.cal.se2.disabled=false;
			document.cal.te1.value="";
			document.cal.te1.disabled=false;
			document.cal.te2.value="";
			document.cal.te2.disabled=false;
			document.cal.be1.value="";
			document.cal.be1.disabled=false;
			document.cal.be2.value="";
			document.cal.be2.disabled=false;
			
		}
}
</script>

<script type="text/javascript">
var xmlhttp;
function showApplied(){
	
	var radiovalue = document.getElementById("rid").value;

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

	xmlhttp.open("GET","ShowApplied.jsp?radiovalue="+radiovalue,true);
	//xmlhttp.open("GET","ShowRecord.jsp?academicyear="+byear,true);
	//alert("value is"+byear);
	xmlhttp.send();


}

var xmlhttp1;
function showNothing(){
	
	document.getElementById("result").value="";
	document.getElementById("result1").value="";
	document.getElementById("hsc").value="";
	document.cal.dip.disabled=true;
	document.cal.fe1.disabled=false;
	document.cal.fe2.disabled=false;
	document.cal.hsc.disabled=false;
	var radiovalue2=document.getElementById("regid").value;
	//alert("Radio:"+radiovalue2);
	if(window.ActiveXObject){
	
	xmlhttp1 = new ActiveXObject("Microsoft.XMLHTTP");//IE5,IE6
	
	}
	else{
		xmlhttp1 = new XMLHttpRequest();//all latest browser
	
	}


	xmlhttp1.onreadystatechange = function(){
		
		if(xmlhttp1.readyState==4 && xmlhttp1.status==200)//4=response is ready 200=ok
		{
			document.getElementById("pid").innerHTML=xmlhttp1.responseText;
			//document.getElementById("dip").innerHTML=xmlhttp1.responseText;
		}
	}

	xmlhttp1.open("GET","ShowNothing.jsp?radiovalue2="+radiovalue2,true);
	
	xmlhttp1.send();


}
</script>
<script language="javascript">
function faggregate()
{

	
	var select=document.getElementById("academicyear");
	var academicyear = select.options[select.selectedIndex].value;
	
	var temp="First";
	var temptwo="Second";
	var tempthree="Third";
	var tempfour="Fourth";
	var tempfive="Fifth";
	var tempsix="Sixth";
	var tempseven="Seventh";
	var tempeight="Eighth";
	
	var f1,f2,f3,f4,f5,f6,f7,f8,res;
	
	if(academicyear=="First"){
		f1=parseFloat(document.cal.fe1.value);
	//	f2=parseFloat(document.cal.fe2.value);
		res=f1;
		
		
	}
	if(academicyear=="Second"){
		f1=parseFloat(document.cal.fe1.value);
		f2=parseFloat(document.cal.fe2.value);
		res=(f1+f2)/2;
		
	}
	if(academicyear=="Third"){
		f1=parseFloat(document.cal.fe1.value);
		f2=parseFloat(document.cal.fe2.value);
		f3=parseFloat(document.cal.se1.value);
		res=(f1+f2+f3)/3;
		
	}
	if(academicyear=="Fourth"){
		f1=parseFloat(document.cal.fe1.value);
		f2=parseFloat(document.cal.fe2.value);
		f3=parseFloat(document.cal.se1.value);
		f4=parseFloat(document.cal.se2.value);
		res=(f1+f2+f3+f4)/4;
		
	}
	if(academicyear=="Fifth"){
		f1=parseFloat(document.cal.fe1.value);
		f2=parseFloat(document.cal.fe2.value);
		f3=parseFloat(document.cal.se1.value);
		f4=parseFloat(document.cal.se2.value);
		f5=parseFloat(document.cal.te1.value);
		res=(f1+f2+f3+f4+f5)/5;
		
	}
	if(academicyear=="Sixth"){
		f1=parseFloat(document.cal.fe1.value);
		f2=parseFloat(document.cal.fe2.value);
		f3=parseFloat(document.cal.se1.value);
		f4=parseFloat(document.cal.se2.value);
		f5=parseFloat(document.cal.te1.value);
		f6=parseFloat(document.cal.te2.value);
		res=(f1+f2+f3+f4+f5+f6)/6;
		
	}
	if(academicyear=="Seventh"){
		f1=parseFloat(document.cal.fe1.value);
		f2=parseFloat(document.cal.fe2.value);
		f3=parseFloat(document.cal.se1.value);
		f4=parseFloat(document.cal.se2.value);
		f5=parseFloat(document.cal.te1.value);
		f6=parseFloat(document.cal.te2.value);
		f7=parseFloat(document.cal.be1.value);
		res=(f1+f2+f3+f4+f5+f6+f7)/7;
		
	}
	if(academicyear=="Eighth"){
		f1=parseFloat(document.cal.fe1.value);
		f2=parseFloat(document.cal.fe2.value);
		f3=parseFloat(document.cal.se1.value);
		f4=parseFloat(document.cal.se2.value);
		f5=parseFloat(document.cal.te1.value);
		f6=parseFloat(document.cal.te2.value);
		f7=parseFloat(document.cal.be1.value);
		f8=parseFloat(document.cal.be2.value);
		res=(f1+f2+f3+f4+f5+f6+f7+f8)/8;
		
	}
document.cal.txtresult.value=res;
}

function displayResult(studtype)
{
document.getElementById("result").value=studtype;
document.getElementById("result1").value=studtype;
document.getElementById("hsc").value=studtype;
document.getElementById("dip").value="";
document.cal.fe1.disabled=true;
document.cal.fe2.disabled=true;
document.cal.dip.disabled=false;
document.cal.hsc.disabled=true;
}
function displayResult2()
{
//document.getElementById("dip").value=studtype;
document.getElementById("result").value="";
document.getElementById("result1").value="";
document.getElementById("hsc").value="";
document.cal.dip.disabled=false;
document.cal.fe1.disabled=false;
document.cal.fe2.disabled=false;
document.cal.hsc.disabled=false;
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
	document.getElementById("dip").value="";
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
  
		
        <div id="twitter"></div>
        
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
    </div> <!-- end of templatemo_menu -->
    
    <div id="slider_wrapper_n">
    	
	  	
<script type='text/javascript'></script>
   
       
  </div>
        
  <div id="templatemo_main">
  <div class="col_w900 col_w900_last">
   <form name="cal" action="UpdateAcademic.jsp" method="post">
<fieldset>
<legend>Academic Details</legend>
<fieldset><input type="hidden" name="uname" value="<%=session.getAttribute("uname")%>" />
<%
		  while(i.hasNext()){
	 tps.StudentAcademicInfoJB ai=(tps.StudentAcademicInfoJB)i.next();
%>	 

<table width="584" border="0" align="center" >

  <tr bgcolor ="#E9E9D8">
    <td width="130" height="38"><div align="center">Admission Year </div></td>
    <td width="179"><input name="admission_year"  value="<%out.print(ai.getAdmission_year());%>" type="text" id="admission_year" onchange="return ayear()" onblur="return admissionValidate()"/></td>
    <td width="104"><div align="center">Current year </div></td>
    <td width="179"><input name="current_year" value="<%out.print(ai.getCurrent_year()); %>"  type="text" id="current_year" onchange="return cyear()" onblur="return currentValidate()" onkeypress="return currentValidate()"/></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td><div align="center">Branch</div></td>
    <td width="179"><select name="branch" id="branch">
    <%String temp=ai.getBranch(); %>
    <option value="<%=temp%>"><%=temp%></option>
      <option value="Computer">Computer</option>
      <option value="Mechanical">Mechanical</option>
      <option value="Information Tech.">Information Tech.</option>
      <option value="E&TC">E &amp;TC</option>
      <option value="Chemical">Chemical</option>
      <option value="MBA">MBA</option>
      <option value="Civil">Civil</option>
      <option value="Electrical">Electrical</option>
      <option value="Biotechnology">Biotechnology</option>
    </select></td>
<td><div align="center">Select Semister :</div></td><td><select name="academicyear" id="academicyear" onchange="selectAcademicYear()" >
       <%String temp2=ai.getAcademicyear(); %>
       <option value="<%=temp2 %>"><%=temp2 %></option> 
       <option value="First" >First</option>
       <option value="Second">Second</option>
       <option value="Third">Third</option>
       <option value="Fourth" >Fourth</option>
       <option value="Fifth">Fifth</option>
       <option value="Sixth">Sixth</option>
       <option value="Seventh">Seventh</option>
       <option value="Eighth">Eighth</option>
       </select></td>
  </tr>
<tr bgcolor ="#E9E9D8">
	<td><div align="center">College</div></td>
	<td><input type="text" name="college"  value="<%out.write(ai.getCollege());%>"  id="college" onblur="return cname()" onkeypress="return cname()"/></td><td colspan="2"></td>
</tr>
</table>
</fieldset>
&nbsp;
&nbsp;

<fieldset><table width="584" border="0" align="center" cellpadding="1">
  <tr bgcolor="#FEF7E9">
    <td width="286" height="30"><div align="right">Select Diploma or Regular : </div></td>
    <td width="288"><div align="left">
         <!-- <input name="studtype" type="radio" onclick="displayResult2(this.value)"  value="0.0">-->
         <input name="studtype" type="radio" onclick="showNothing()" onselect="displayResult2()" value="Regular" id="regid"/>
      Regular
      
	   <input name="studtype" type="radio" onclick="showApplied()" value="Diploma" id="rid"/>
      Diploma</div></td>
  </tr>
</table>
<p id="pid"></p>



</fieldset>
&nbsp;
&nbsp;
&nbsp;

&nbsp;
&nbsp;
<fieldset>
<table width="584" border=0" align="center">
  <tr bgcolor ="#E9E9D8">
    <td width="130"><div align="center">SSC</div></td>
    <td width="145"><input name="ssc"  value="<%out.print(ai.getSsc());%>"  type="text" id="ssc" onkeypress="return ssc1()" onblur="return ssc1()"/></td>
    <td width="109"><div align="center">HSC</div></td>
    <td width="182"><input name="hsc"  value="<%out.print(ai.getHsc());%>"  type="text" id="hsc" onkeypress="return hsc1()" onblur="return hsc1()"/></td>
    </tr>
  <tr>
   
  
    </tr>
  <tr bgcolor="#FEF7E9">
    <td height="39"> <div align="center">Diploma</div></td>
    <td><input name="diploma" type="text" id="dip" onkeypress="return diploma1()" onblur="return diploma1()"/></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td height="48"><div align="center">FEI</div></td>
    <td><input name="fe1"  value="<%out.print(ai.getFe1());%>"  type="text" id="result" onkeypress="return fejs1()" onblur="return fejs1()"/></td>
    <td><div align="center">FEII</div></td>
    <td><input name="fe2" type="text"  value="<%out.print(ai.getFe2());%>"  id="result1" onkeypress="return fejs2()" onblur="return fejs2()"/></td>
    </tr>
  <tr bgcolor="#FEF7E9">
    <td height="43"><div align="center">SEI</div></td>
    <td><input name="se1"  value="<%out.print(ai.getSe1());%>"  type="text" id="se1" onkeypress="return sejs1()" onblur="return sejs1()" /></td>
    <td><div align="center">SEII</div></td>
    <td><input name="se2"  value="<%out.print(ai.getSe2());%>"  type="text" id="se2" onkeypress="return sejs2()" onblur="return sejs2()"/></td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td height="47"><div align="center">TEI</div></td>
    <td><input name="te1"  value="<%out.print(ai.getTe1());%>"  type="text" id="te1" onkeypress="return tejs1()" onblur="return tejs1()"/></td>
    <td><div align="center">TEII</div></td>
    <td><input name="te2"  value="<%out.print(ai.getTe2());%>"  type="text" id="te2" onkeypress="return tejs2()" onblur="return tejs2()"/></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="40"><div align="center">BEI</div></td>
    <td><input name="be1"  value="<%out.print(ai.getBe1());%>"  type="text" id="be1" onkeypress="return bejs1()" onblur="return bejs1()"/></td>
    <td><div align="center">BEII</div></td>
    <td><input name="be2"  value="<%out.print(ai.getBe2());%>"  type="text" id="be2" onkeypress="return bejs2()" onblur="return bejs2()"/></td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    
    <td height="39"><div align="center">Aggregate</div></td>
    <td><input name="aggregate"  value="<%out.print(ai.getAggregate()) ;%>" type="text" id="txtresult" onfocus="return faggregate()"/></td>
    <td height="39">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr bgcolor="#FEF7E9">
    <td height="37"><div align="center">Live Backlogs</div></td>
    <td><input name="lback"  value="<%out.print(ai.getLback());%>" type="text" id="lback" onkeypress="return lb()"  onblur="return lb()" /></td>
    <td><div align="center">Dead Backlogs </div></td>
    <td><input name="dback"  value="<%out.print(ai.getDback());%>" type="text" id="dback" onkeypress="return db()" onblur="return db()"/></td>
  </tr>
  <%} %>
</table>
</fieldset>
<div align="center"><input name="Submit" type="submit" value="Submit" onclick="return emptyFieldsValidation()"/>
  <input name="Submit" type="reset" value="Reset"/>
  <input name="Submit" type="submit" value="Cancel" />
</div>
</fieldset>

</form></div></div>
   <div>
    <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
  </div>
	
  <!-- end of main -->

<div id="templatemo_footer">
    
    	Copyright � 2048 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>