﻿<%@ page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
 <%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
</script>

</head>
<body>
<%
String dataname=(String)session.getAttribute("dataname");
String data11=(String)session.getAttribute("text");
String data22=(String)session.getAttribute("text1");


if(data11.equals(data22))
{
out.println("");
}
else
{
response.sendRedirect("file_view4.jsp");
}
%>
<div id="container">  	  
    	<div id="header">
        	
    <div id="logo"> 
      	
      <div style="position:absolute; left:36px;  top:80px;"> 
        <div align="left"><font color="#FFFFFF" size="5"><strong><b>CLOUD DATA PRODUCTION 
          FOR THE MASSES</b></strong></font> </div>
      </div>
    </div>
            
            <div id="menu">
				<ul>
				<li class="current"><a href="admin_view2.jsp"><b>ADMIN</b></a></li>
					<li><a href="admin_view2.jsp"><b>BACK</b></a></li>
					
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
    <div style="position:absolute; left:6px;  top:1px;"> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">User View Message</font></em></strong> 
        <br/>
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table align="center"  width="380">
          <tr> 
            <td><font face="Times New Roman"  size="+1"><strong>DATA NAME</strong></font></td>
            <td> <input type="text" name="name" class="b" value="<%=dataname%>"></td>
          </tr>
          <tr> 
            <td height="172"><font face="Times New Roman"  size="+1"><strong>MESSAGE</strong></font></td>
            <td> <textarea rows="20" cols="90" name="file"><%
                 String jspPath = "E:\\";
            String fileName = "log.txt";
            String txtFilePath = jspPath + fileName;
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
             String s;
            String line;

            while((line = reader.readLine())!= null){
                
                s=line+"\n";
                out.write(s);
            }
            
                
               %></textarea> 
            </td>
          <tr> 
            <td></td>
            <td><a href="count1.jsp"><b>BACK TO VIEW NEXT DATA</b></a></td>
          </tr>
        </table>
      </form>
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