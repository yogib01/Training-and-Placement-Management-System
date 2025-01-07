<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |New User</title>

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:500,
		pauseTime:3000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, 
		directionNavHide:false, //Only show on hover
		controlNav:true, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>

<style type="text/css">
<!--
.style1 {color: #F0F0F0}
-->
</style>
</head>
<body>

<div id="templatemo_wrapper">
	
    <div id="templatemo_header">
    
   	  	<div id="site_title"><h1><a href="index.jsp"></a></h1></div>
        
        <div id="twitter"></div>
        
    </div> <!-- end of header -->
    
     <div id="templatemo_menu">
        <ul>
            <li><a href="index.jsp" class="current">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="NewUser.jsp">New User</a></li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
        <div id="search_box">
            <form action="#" method="post">
              <input name="q" type="text" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" value="Search" size="10" maxlength="60" />
            </form>
        </div>
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="slider_wrapper">
        <div id="slider">
             <!--<a href="#"><img src="images/slideshow/01.jpg" alt="01" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit." /></a>-->
           
  <a href="#"><img src="images/slideshow/07.jpg" alt="05" title="Welcomes to Carrier Click World!!!!!!!!!!!!!!" /></a>
  <a href="#"><img src="images/slideshow/09.jpg" alt="05" title="This is our Administrative Building" /></a>
			
		   <a href="#"><img src="images/slideshow/08.jpg" alt="05" title="Your Placement Solution is here....." /></a>
            <a href="#"><img src="images/slideshow/03.jpg" alt="03" title="" /></a>
          
            <a href="#"><img src="images/slideshow/05.jpg" alt="05" title="" /></a>
			
			 
        </div>
	</div>
       <div id="templatemo_main">
          
    <div class="col_w900 col_w900_last">
          <div class="col_w420 float_l">
           	 
           	    <input name="imageField" type="image" src="images/SignUp.jpg" width="300" height="250" border="0"/>
           	 
          </div>
            
            <div class="col_w420 float_r">
            	<form action="NewUserLogic.jsp" method="post">
              <table width="368" >
  <tr>
    <td>Enter your name</td>
    <td><input type="text" name="uname" onkeypress="return uname1()" /></td>
  </tr>
  <tr>
    <td height="47">Create password</td>
    <td><input type="password" name="pass" /></td>
  </tr>
  <tr>
    <td height="47">Select your type</td>
    <td><select name="type">
      <option>Student</option>
      <option>Company-Recruiter</option>
    </select></td>
  </tr>
  <tr>
    <td height="47" colspan="2"><div align="center">
        <input type="submit" value="Submit" />
        <input type="reset" value="Clear" />
    </div></td>
    </tr>
  
</table>

			  
			</form>  
			  
			  <div class="lbe_box">    
              </div>
                <div class="lbe_box">
                  <div class="cleaner"></div>
              </div>
            </div>
      
		</div>
        
    <div class="cleaner"></div>
     </div>
  <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>  
      <!-- end of main -->

</div> <!-- end of templatemo_wrapper -->


</body>
</html>