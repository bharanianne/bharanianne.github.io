﻿<%@ page import="java.sql.*"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>dpaas</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
function fun(){
    alert("Auditor logged out");
}
</script>

</head>
<body>
	<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="5"><strong><b>CLOUD DATA PROTECTION
          </b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="tpa2.jsp"><b>AUDITOR</b></a></li>
                                <li><a href="tpa.jsp" onclick="fun()"><b>LOGOUT</b></a></li>
					
				</ul>
			</div>
            <div class="cleaner"></div>
        </div>

        <div id="content_area_top">
		</div>
  <div class="box"> <br>
    <br>
    <br>
    <br>
    <br>
    <div class="box1"> 
      <div id="menu"> 
        <div style="position:absolute; left:36px;  top:50px;"> 
          <ul>
            <li><a href="auditor_view11.jsp"><font color="#CC3300" size="+2"><b>USER 
              DATA</b></font></a></li>
            
          </ul>
        </div>
      </div>
    </div>
    <div style="position:absolute; left:506px;  top:10px;"> <img src="images1/ad.jpg" width="300" height="420"> 
    </div>
    <!-- Primary content area end -->
  </div>
            <div class="cleaner">
			
			
			</div>
        </div><!-- End Of Content area top -->
        
      
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	

</body>
</html>