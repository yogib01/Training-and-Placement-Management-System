<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<jsp:useBean id="l1" class="tps.LoginTPS" scope="session"/>
<jsp:setProperty property="*" name="l1"/>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |Upload Photo Sign Resume</title>
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
			 <a href="Logout.jsp">Log out</a>
            </form>
        </div>
        <div class="cleaner"></div>
    </div> 

     <div id="slider_wrapper_n">
Hello <%=session.getAttribute("uname")%>
      <h2 class="style2">

	  	<a href="StudentRegister.jsp" class="style1">Register</a>
	  	<a href="ViewStudInfo.jsp">View</a>
	    	<a href="UpdateStudInfo.jsp">Update</a>
		<a href="UploadStudResume.jsp">Upload Resume</a>
		<a href="ApplyForJob.jsp">Apply For Job</a>
	   </h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris iaculis nulla vitae ante congue iaculis. Nunc vitae sapien sed n</p>
  </div>
        
  <div id="templatemo_main" >
    
<div class="col_w900 col_w900_last">

          <div class="cleaner">    </div>


</div>
</div>
        
        <div class="cleaner"></div>

  <div>
    <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>
  </div>
  <!-- end of main -->



<div id="templatemo_footer">
    Copyright � 2022 <a href="#">Arati|Khushbu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbu|Yogesh|Pratik</a>
</div> <!-- end of templatemo_footer -->

</body>
</html>