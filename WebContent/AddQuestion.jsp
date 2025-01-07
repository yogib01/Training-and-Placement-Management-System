<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click - Recruiter</title>
<meta name="keywords" content="free css template, latest news, golden star, CSS, HTML" />
<meta name="description" content="Golden Star News - Free CSS Template provided by templatemo.com" />
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
<script type='text/javascript' src='company_menu.js'></script>
<script type='text/javascript' src='menu_com.js'></script>
<noscript>Your browser does not support script</noscript>
</head>
<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    		<div id="site_title"><h1><a href=""></a></h1></div>	
  	</div> <!-- end of header -->

     <div id="templatemo_menu">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="news.html">News</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
        </ul>    	
        <div id="search_box">
            <form  action="#" method="post">
			 <a href="Logout.jsp">Log out</a>
            </form>
        </div>
</div>
     <div id="slider_wrapper_n">
      <h2 class="style2">	  	
<script type='text/javascript'></script>
	   </h2>
       
  </div>
        
  <div id="templatemo_main" >
    
<div class="col_w900 col_w900_last">

          <fieldset><legend>Add questions</legend>
			<form name="form1" id="form1" method="post" action="addAnotherQuestion.jsp">	  <table width="404" height="170" align="center">
    <tr bgcolor="#FEF7E9">
    <input type="hidden" name="examid" value="<%=session.getAttribute("examid") %>"></input>
    <td><div align="center">Question No. </div></td>
    <td>          <input type="text" name="qno" />        </td>
    
  </tr>
  <tr bgcolor="#FEF7E9">
    <td><div align="center">Question </div></td>
    <td>
          <textarea name="question"></textarea>        </td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">Option 1 </div></td>
    <td>          <input type="text" name="op1" />        </td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">Option 2 </div></td>
    <td>       <input type="text" name="op2" />       </form>      </td>
  </tr>
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">Option 3 </div></td>
    <td>          <input type="text" name="op3" />        </td>
  </tr bgcolor ="#E9E9D8">
  <tr bgcolor ="#E9E9D8">
    <td><div align="center">Option 4 </div></td>
    <td>          <input type="text" name="op4" />        </td>
  </tr>
  <tr bgcolor="#FEF7E9">
    <td><div align="center">Answer</div></td>
    <td>          <input type="text" name="answer" />        </td>
  </tr>
  
  <tr bgcolor="#FEF7E9">
    <td height="37" colspan="2">
      
        <div align="center">
          <input type="submit" name="Submit" value="Add Another Question" />
          <input type="reset" name="Reset" value="Reset" />
          <input type="submit" name="Submit" value="Cancel"/>
        </div>
    </form></td>
    </tr>
</table>

			  
		  </fieldset>
</div>
</div>
        
        <div class="cleaner"></div>

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