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


function valid()
{
var aa=document.s.key.value;
if(aa=="")
{
alert("Enter Data Key");
document.s.key.focus();
return false;
}
}

</script>

</head>
<body>

<%

String keyyy=(String)session.getAttribute("keyy");

%>
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
					<li><a href="auditor_view11.jsp"><b>BACK</b></a></li>
					
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
    <div id="menu"> 
      <div style="position:absolute; left:236px;  top:30px;"> 
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <strong><em><font color="#990000" size="+1" face="Times New Roman" 
	  style="text-decoration:underline">User Data</font></em></strong> <br/>
          <br>
        <form name="s" action="auditor_view223.jsp" method="get" onSubmit="return valid()">
          <table align="center"  >
            <tr> 
              <td ><font face="Times New Roman"  size="+1"><strong> Enter Data 
                Key:</strong></font></td>
              <td><input type="text" name="key"></td>
              <td width="20"> <font face="Times New Roman"  size="+1"><strong>Data 
                Key:</strong></font></td>
              <td>&nbsp;&nbsp;&nbsp;<blink><font face="Times New Roman"  size="+1" color="#CC3333"><strong> 
                <%=keyyy%>
                </strong></font></blink> </td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" value="view"></td>
            </tr>
          </table>
        </form>
      </div>
    </div>
    <!-- Primary content area end -->
  </div>
  <div class="cleaner"> </div>
</div>
<!-- End Of Content area top -->
        
            
    <div style="position:absolute; left:326px;  top:270px;"> 
	   <img src="images1/Best-Cloud-Storage.jpg" width="220" height="200"></div>      
 <div style="position:absolute; left:800px;  top:270px;"> 
	   <img src="images1/Best-Cloud-Storage.jpg" width="220" height="200"></div> 
            

	<div id="footer">
	
    	
    </div><!-- End Of Container -->
	



</body>
</html>