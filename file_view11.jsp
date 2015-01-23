<%@ page import="java.sql.*"%>
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
				<li class="current"><a href="file_view11.jsp"><b>USER</b></a></li>
					<li><a href="user2.jsp"><b>BACK</b></a></li>
					
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
    <div style="position:absolute; left:236px;  top:10px;"> 
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Times New Roman"  
	  style="text-decoration:underline">User View Data</font></em></strong> <br/>
        <br>
      <form name="s" action="#" method="get" onSubmit="return valid()">
        <table align="center" width="500">
          <tr> 
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>DATA 
              NAME</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>FILE 
              UPLOAD DATE</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>DATA</strong></font></td>
            <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>STATUS</strong></font></td>
          </tr>
          <%
String key=null,file_name=null,status=null,date1=null;
String b=(String)session.getAttribute("a");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/cloud","root","");

PreparedStatement ps=con.prepareStatement("select id,file_name,status,date1 from file1 where userid='"+b+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 key=rs.getString(1);
  file_name=rs.getString(2);
     status=rs.getString(3);
	   date1=rs.getString(4);
 //data=rs.getString(2);

 %>
          <tr> 
            <td bgcolor="#CCFFFF"> 
              <%=file_name%>
            </td>
            <td bgcolor="#CCFFFF"> 
              <%=date1%>
            </td>
            <td bgcolor="#CCFFFF"><a href="view12345.jsp?<%=file_name%>">view</a> 
            </td>
            <td bgcolor="#CCFFFF"> <font color="#CC3300"><b> 
              <%=status%>
              </b></font> </tr>
          <%
}
%>
          <%
session.setAttribute("file_name",file_name);
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
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