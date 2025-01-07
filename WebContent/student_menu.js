/***********************************************************************************
*	(c) Ger Versluis 2000 version 5.411 24 December 2001 (updated Jan 31st, 2003 by Dynamic Drive for Opera7)
*	For info write to menus@burmees.nl		          *
*	You may remove all comments for faster loading	          *		
***********************************************************************************/

	var NoOffFirstLineMenus=5;			// Number of first level items
	var LowBgColor='#DAAB17';			// Background color when mouse is not over
	var LowSubBgColor='#99CC33';			// Background color when mouse is not over on subs
	var HighBgColor='#CC6600';			// Background color when mouse is over
	var HighSubBgColor='#CC6600';			// Background color when mouse is over on subs
	var FontLowColor='black';			// Font color when mouse is not over
	var FontSubLowColor='black';			// Font color subs when mouse is not over
	var FontHighColor='white';			// Font color when mouse is over
	var FontSubHighColor='white';			// Font color subs when mouse is over
	var BorderColor='black';			// Border color
	var BorderSubColor='black';			// Border color for subs
	var BorderWidth=1;				// Border width
	var BorderBtwnElmnts=1;			// Border between elements 1 or 0
	var FontFamily="arial,comic sans ms,technical"	// Font family menu items
	var FontSize=9;				// Font size menu items
	var FontBold=1;				// Bold menu items 1 or 0
	var FontItalic=0;				// Italic menu items 1 or 0
	var MenuTextCentered='center';			// Item text position 'left', 'center' or 'right'
	var MenuCentered='center';			// Menu horizontal position 'left', 'center' or 'right'
	var MenuVerticalCentered='top';		// Menu vertical position 'top', 'middle','bottom' or static
	var ChildOverlap=.2;				// horizontal overlap child/ parent
	var ChildVerticalOverlap=.2;			// vertical overlap child/ parent
	var StartTop=150;				// Menu offset x coordinate
	var StartLeft=1;				// Menu offset y coordinate
	var VerCorrect=0;				// Multiple frames y correction
	var HorCorrect=0;				// Multiple frames x correction
	var LeftPaddng=3;				// Left padding
	var TopPaddng=2;				// Top padding
	var FirstLineHorizontal=1;			// SET TO 1 FOR HORIZONTAL MENU, 0 FOR VERTICAL
	var MenuFramesVertical=1;			// Frames in cols or rows 1 or 0
	var DissapearDelay=500;			// delay before menu folds in
	var TakeOverBgColor=1;			// Menu frame takes over background color subitem frame
	var FirstLineFrame='navig';			// Frame where first level appears
	var SecLineFrame='space';			// Frame where sub levels appear
	var DocTargetFrame='space';			// Frame where target documents appear
	var TargetLoc='';				// span id for relative positioning
	var HideTop=0;				// Hide first level when loading new document 1 or 0
	var MenuWrap=1;				// enables/ disables menu wrap 1 or 0
	var RightToLeft=0;				// enables/ disables right to left unfold 1 or 0
	var UnfoldsOnClick=0;			// Level 1 unfolds onclick/ onmouseover
	var WebMasterCheck=0;			// menu tree checking on or off 1 or 0
	var ShowArrow=1;				// Uses arrow gifs when 1
	var KeepHilite=1;				// Keep selected path highligthed
	var Arrws=[,0,0,,0,,,,0];	// Arrow source, width and height

function BeforeStart(){return}
function AfterBuild(){return}
function BeforeFirstOpen(){return}
function AfterCloseAll(){return}


// Menu tree
//	MenuX=new Array(Text to show, Link, background image (optional), number of sub elements, height, width);
//	For rollover images set "Text to show" to:  "rollover:Image1.jpg:Image2.jpg"

Menu1=new Array("Register","Student.jsp","",3,20,138);
	Menu1_1=new Array("Personal Info","CheckStudentBasicInfo1.jsp","",0,20,150);	
	Menu1_2=new Array("Academic Info","CheckAcademicInfo.jsp","",0);
	Menu1_3=new Array("Other Info","CheckAdditionalInfo.jsp","",0);
Menu2=new Array("Profile","Student.jsp","",2);
	Menu2_1=new Array("View","StudentProfile.jsp","",0,20,150);
	Menu2_2=new Array("Update","UpdateStudInfo.jsp","",3);
		Menu2_2_1=new Array("Academic","updateAcademicInfo1.jsp","",0,20,150);
		Menu2_2_2=new Array("Personal","updateStudInfoAction.jsp","",0,20,150);
		Menu2_2_3=new Array("Other","updateOtherInfo.jsp","",0,20,150);
Menu3=new Array("Upload","Upload.jsp","",0);
	//Menu3_1=new Array("Fill Placed Student Info","http://www.dynamicdrive.com","",0,20,180);
	//Menu3_2=new Array("View","http://www.javascriptkit.com","",0);

Menu4=new Array("Company","#","",1);
	Menu4_1=new Array("View","ViewCompanyForStud.jsp","",0,20,180);

Menu5=new Array("Notification","Notification.jsp","",0,20,138);