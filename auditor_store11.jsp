
<%@page import="java.sql.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>dpaas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String msg="CHANGED";
String da=request.getParameter("data");
String data=(String)session.getAttribute("key");
//out.print(da);
//out.print(data);
String keyyy=(String)session.getAttribute("keyy");

File f = new File(da);
//out.print(da);
//out.print(data);
//out.print(keyyy);

//out.print(msg);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/cloud","root","");
PreparedStatement ps=con.prepareStatement("update file1 set auditor_data=AES_ENCRYPT('"+f+"','key'),status='"+msg+"' where file_name='"+data+"' AND id='"+keyyy+"'");

ps.executeUpdate();

response.sendRedirect("audit.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>