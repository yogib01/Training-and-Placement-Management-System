<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Basic Information2</title>

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script type='text/javascript' src='student_menu.js'></script>
<script type='text/javascript' src='menu_com.js'></script>
<noscript>Your browser does not support script</noscript>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>

<script language="JavaScript">

function emptyFieldsValidation(){
      var stud_contact,parent_contact,landline,email;
      stud_contact=form1.stud_contact.value;
      parent_contact=form1.parent_contact.value;
	  landline=form1.landline.value;
	  email=form1.email.value;
	  
      if(stud_contact==null ||stud_contact==""){
          alert('Enter Personal Contact Number!');
          return false;
      }
      if(parent_contact==null ||parent_contact==""){
		alert("Enter Parent Contact Number!");
		return false;
      }
      if(email==null ||email==""){
  		alert("Enter Email ID!");
  		return false;
        }
	return true;
}
</script>
<script language="JavaScript">
function studContact()
{
var len,i,ch;
len=form1.stud_contact.value.length;
if(isNaN(form1.stud_contact.value))
{
	alert('Pincode number should be Numeric');
	document.getElementById("stud_contact").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function parentContact()
{
var len,i,ch;
len=form1.parent_contact.value.length;
if(isNaN(form1.parent_contact.value))
{
	alert('Pincode number should be Numeric');
	document.getElementById("parent_contact").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function landlineContact()
{
var len,i,ch;
len=form1.landline.value.length;
if(isNaN(form1.landline.value))
{
	alert('Pincode number should be Numeric');
	document.getElementById("landline").value="";
	return false;
}
return true;

}
</script>
<script language="JavaScript">
function checkMail(){
		var e_mail=document.form1.email.value;
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;		  

			if(!e_mail.match(mailformat)||e_mail.length==0||e_mail.length<6)
			{
				alert("You have entered an invalid email address!");
				//document.form1.email.focus();
				document.form1.email.value="";
				return false;
			}
			return true;
}
</script>
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
    </div> <!-- end of templatemo_menu -->
    
    <div id="slider_wrapper_n">
    	  	
<script type='text/javascript'></script>
   
  </div>
        
  <div id="templatemo_main">
    
<div class="col_w900 col_w900_last">

          <div class="cleaner">
		 <form action="paction2.jsp" method="get" enctype="multipart/form-data" name="form1">
<fieldset>
  <legend>Personal Information2</legend>
  <table width="696" height="167" border="0" align="center">
  <tr  bgcolor ="#E9E9D8">
    <td width="110" height="53"><div align="left">Student Mobile Number </div></td>
    <td width="221"><input name="stud_contact" type="text" id="stud_contact" onkeypress="return studContact()" onblur="return studContact()" ></td>
    <td width="129"><div align="right">Parent Mobile Number </div></td>
    <td width="218"><input name="parent_contact" type="text" id="parent_contact" onkeypress="return parentContact()" onblur="return parentContact()" ></td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td height="55"><div align="left">Landline Number </div></td>
    <td><input name="landline" type="text" id="landline" onkeypress="return landlineContact()" onblur="return landlineContact()" ></td>
    <td><div align="right">Student Email ID </div></td>
    <td><input name="email" type="text" id="email" onblur="return checkMail()"></td>
  </tr>
  <input type="hidden" value="ppath" name="photo_path"/>
  <input type="hidden" value="spath" name="signature_path"/>
  <input type="hidden" value="rpath" name="resume"/>
</table>
 
</fieldset>
<div align="center">
 <p>&nbsp;</p>
    <p><input type="submit" value="Next &gt;&gt;"  onclick="return emptyFieldsValidation()"> 
    <input name="Reset" type="reset" value="Reset">
    <input type="submit" name="Submit" value="Cancel">
   </p>
   </div>
</form>
          </div>
    </div>
        
        </div>
  <span class="bottom"><img src="images/content_bottom.jpg" width="960" height="15" /></span>  <!-- end of main -->

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer">
    
    	Copyright © 2022 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>