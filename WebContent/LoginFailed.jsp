<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Carrier Click |LoginFailed</title>

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
    
   	  	<div id="site_title"><h1><a href=""></a></h1></div>
        
       
        
    </div> <!-- end of header -->
    
     <div id="templatemo_menu">
        <ul>
            <li><a href="index.jsp" class="current">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="news.html">News</a></li>
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
             <!--<a href="#"><img src="images/slideshow/01.jpg" alt="01" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit." /></a>
            <a href="#"><img src="images/slideshow/04.jpg" alt="04" title="Nulla faucibus luctus quam eget placerat." /></a>
		    <a href="#"><img src="images/slideshow/02.jpg" alt="02" title="Nullam ante leo, consectetur eget adipiscing." /></a>-->
  <a href="#"><img src="images/slideshow/07.jpg" alt="05" title="Welcomes to Carrier Click World!!!!!!!!!!!!!!" /></a>
  <a href="#"><img src="images/slideshow/09.jpg" alt="05" title="This is our Administrative Building" /></a>
			
		   <a href="#"><img src="images/slideshow/08.jpg" alt="05" title="Your Placement Solution is here....." /></a>
            <a href="#"><img src="images/slideshow/03.jpg" alt="03" title="" /></a>
          
            <a href="#"><img src="images/slideshow/05.jpg" alt="05" title="" /></a>
			
			 
        </div>
	</div>
        
  <div id="templatemo_main">
    
        <div class="col_w900">
            <div class="col_allw280 frontpage_box">
                <h2>Online Training </h2>
                <span class="tagline">Crack the aptitude </span>
                <img src="images/icon2.jpg" alt="Image" />
                <p>Here our site provides  some 
                online training program for the student which helps them to crack the campus drives....</p>
                <a class="more" href="#">More</a>
       	  </div>
            <div class="col_allw280 frontpage_box">
			<marquee direction="up" onmouseover="this.stop()" onmouseout="this.start()">
				Hello its glad to have 25 upcoming campus in our institute.....Hello its glad to have 25 upcoming campus in our institute.....Hello its glad to have 25 upcoming campus in our institute.....
				Hello its glad to have 25 upcoming campus in our institute.....Hello its glad to have 25 upcoming campus in our institute.....
			  </marquee>
                
            </div>
          <div class="col_allw280 frontpage_box col_last">
              <h2> Members Login</h2>
             <form action="LoginTPS.jsp" name="login" method="post">
				<table border="0" >
				<tr><td colspan="2"> <font color="red"> Your User Name or Password or Type May Be Incorrect Please Try Again !!!</td></tr>
				<tr><td>Enter Username:</td><td><input type="text" name="uname"></input></td></tr>
				<tr><td>Enter Password:</td><td><input type="password" name="pass"></input></td></tr>
				<tr><td>Type of Member:</td><td> <select name="type">
					<option >Administrator</option>
					<option >Student</option>
					<option >Company-Recruiter</option>
					</select></td>
				</tr>
				<tr><td colspan="2" align="center"><input type="submit" value="Login"/><input type="reset" value="Clear" /></td>
				  </tr>
				</table>
			</form>
			
          </div>
            <div class="cleaner"></div>
        </div>
    
        <div class="col_w900 col_w900_last">
          <div class="col_w420 float_l">
           	  <h2>Introduction to Carrier Click </h2>
                <p align="justify">The Carrier Click is not only the web based application but it is the mediator between the three main objects of the Campus recruitment Proccess i.e Student , Company-Recruiter and the TPO of the College.....</p>
               <!-- <ul class="tmo_list">
                	<li><a href="#">Nullam eget magna tellus</a></li>
                    <li><a href="#">Quisque a sapien tortor</a></li>
                    <li><a href="#">Aenean sit amet libero augue</a></li>
                    <li><a href="#">Suscipit tincidunt gravida</a></li>
                    <li><a href="#">Diam accumsan a auctor metus</a></li>
			</ul>-->
                <a class="more" href="#">More</a>
          </div>
            
            <div class="col_w420 float_r">
            	<h2>Ongoing Campus Drives </h2>
                <div class="lbe_box">
                    <h3><a href="#">Campus Drive by Tridat India....</a></h3>
                    <p class="date">March 08, 2013</p>
                </div>
                <div class="lbe_box">
                    <h3><a href="#">Campus Drive by Synergy Pvt, Ltd.</a></h3>
                    <p class="date">June 18, 2048</p>
                    <div class="cleaner"></div>
                </div>
            </div>
      
		</div>
        
    <div class="cleaner"></div>
  </div>
  <p><span class="bottom"></span><img src="images/content_bottom.jpg" width="960" height="15" align="absmiddle" /></p>
    <p>&nbsp;</p>    <!-- end of main -->

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer">
    
    	Copyright © 2022 <a href="#">Arati|Khushbhu|Yogesh|Pratik</a> - 
        Designed by <a href="http://sgdcoe_comp_te_22.com" target="_parent">Arati|Khushbhu|Yogesh|Pratik</a>

</div> <!-- end of templatemo_footer -->
<span class="style1"></span>
</body>
</html>