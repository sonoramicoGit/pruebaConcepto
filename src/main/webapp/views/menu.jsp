<html>
<head>
	<title>Coolmenus example - CoolMenus4 DHTML script made by Thomas Brattli from DHTMLCentral.com. Visit for more great scripts.</title>
<style>
/* CoolMenus 4 - default styles - do not edit */
.clCMAbs{position:absolute; visibility:hidden; left:0; top:0}
/* CoolMenus 4 - default styles - end */
  
/*Style for the background-bar*/
.clBar{position:absolute; width:10; height:10; background-color:Navy; layer-background-color:Navy; visibility:hidden}

/*Styles for level 0*/
.clLevel0,.clLevel0over{position:absolute; padding:2px; font-family:tahoma,arial,helvetica; font-size:12px; font-weight:bold}
.clLevel0{background-color:Navy; layer-background-color:Navy; color:white;}
.clLevel0over{background-color:#336699; layer-background-color:#336699; color:Yellow; cursor:pointer; cursor:hand; }
.clLevel0border{position:absolute; visibility:hidden; background-color:#006699; layer-background-color:#006699}

/*Styles for level 1*/
.clLevel1, .clLevel1over{position:absolute; padding:2px; font-family:tahoma, arial,helvetica; font-size:11px; font-weight:bold}
.clLevel1{background-color:Navy; layer-background-color:Navy; color:white;}
.clLevel1over{background-color:#336699; layer-background-color:#336699; color:Yellow; cursor:pointer; cursor:hand; }
.clLevel1border{position:absolute; visibility:hidden; background-color:#006699; layer-background-color:#006699}

/*Styles for level 2*/
.clLevel2, .clLevel2over{position:absolute; padding:2px; font-family:tahoma,arial,helvetica; font-size:10px; font-weight:bold}
.clLevel2{background-color:Navy; layer-background-color:Navy; color:white;}
.clLevel2over{background-color:#0099cc; layer-background-color:#0099cc; color:Yellow; cursor:pointer; cursor:hand; }
.clLevel2border{position:absolute; visibility:hidden; background-color:#006699; layer-background-color:#006699}
</style>
<script language="JavaScript1.2" src="<%=request.getContextPath()%>/resources/js/coolmenus4.js"></script>
</script>
</head>
<body>
<script>

/*** 
This is the menu creation code - place it right after you body tag
Feel free to add this to a stand-alone js file and link it to your page.
**/

//Menu object creation
oCMenu=new makeCM("oCMenu") //Making the menu object. Argument: menuname

oCMenu.frames = 0

//Menu properties   
oCMenu.pxBetween=30
oCMenu.fromLeft=20 
oCMenu.fromTop=0   
oCMenu.rows=1 
oCMenu.menuPlacement="center"
                                                             
oCMenu.offlineRoot="file:///C|/Inetpub/wwwroot/dhtmlcentral/projects/coolmenus/examples/" 
oCMenu.onlineRoot="<%=request.getContextPath()%>" 
oCMenu.resizeCheck=1 
oCMenu.wait=1000 
oCMenu.fillImg="cm_fill.gif"
oCMenu.zIndex=0

//Background bar properties
oCMenu.useBar=1
oCMenu.barWidth="100%"
oCMenu.barHeight="menu" 
oCMenu.barClass="clBar"
oCMenu.barX=0 
oCMenu.barY=0
oCMenu.barBorderX=0
oCMenu.barBorderY=0
oCMenu.barBorderClass=""

//Level properties - ALL properties have to be spesified in level 0
oCMenu.level[0]=new cm_makeLevel() //Add this for each new level
oCMenu.level[0].width=110
oCMenu.level[0].height=25 
oCMenu.level[0].regClass="clLevel0"
oCMenu.level[0].overClass="clLevel0over"
oCMenu.level[0].borderX=1
oCMenu.level[0].borderY=1
oCMenu.level[0].borderClass="clLevel0border"
oCMenu.level[0].offsetX=0
oCMenu.level[0].offsetY=0
oCMenu.level[0].rows=0
oCMenu.level[0].arrow=0
oCMenu.level[0].arrowWidth=0
oCMenu.level[0].arrowHeight=0
oCMenu.level[0].align="bottom"

//EXAMPLE SUB LEVEL[1] PROPERTIES - You have to specify the properties you want different from LEVEL[0] - If you want all items to look the same just remove this
oCMenu.level[1]=new cm_makeLevel() //Add this for each new level (adding one to the number)
oCMenu.level[1].width=oCMenu.level[0].width-2
oCMenu.level[1].height=22
oCMenu.level[1].regClass="clLevel1"
oCMenu.level[1].overClass="clLevel1over"
oCMenu.level[1].borderX=1
oCMenu.level[1].borderY=1
oCMenu.level[1].align="right" 
oCMenu.level[1].offsetX=-(oCMenu.level[0].width-2)/2+20
oCMenu.level[1].offsetY=0
oCMenu.level[1].borderClass="clLevel1border"


//EXAMPLE SUB LEVEL[2] PROPERTIES - You have to spesify the properties you want different from LEVEL[1] OR LEVEL[0] - If you want all items to look the same just remove this
oCMenu.level[2]=new cm_makeLevel() //Add this for each new level (adding one to the number)
oCMenu.level[2].width=150
oCMenu.level[2].height=20
oCMenu.level[2].offsetX=0
oCMenu.level[2].offsetY=0
oCMenu.level[2].regClass="clLevel2"
oCMenu.level[2].overClass="clLevel2over"
oCMenu.level[2].borderClass="clLevel2border"


/******************************************
Menu item creation:
myCoolMenu.makeMenu(name, parent_name, text, link, target, width, height, regImage, overImage, regClass, overClass , align, rows, nolink, onclick, onmouseover, onmouseout) 
*************************************/
oCMenu.makeMenu('top0','','&nbsp;Prueba Concepto','example2.html','')
  oCMenu.makeMenu('sub00','top0','Prueba','/principal/prueba?page=1',"principal")
   oCMenu.makeMenu('sub01','top0','Alta Usuario','/principal/editaAlta',"principal")
  	
oCMenu.makeMenu('top1','','&nbsp;Otros','')
		

//Leave this line - it constructs the menu
oCMenu.construct()		



</script>

</body>
</html>
