
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>dpaas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "yyyy-MM-dd";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String str = sdf1.format(now);
String s="UNCHANGED";
String ffn=request.getParameter("fn");
String ff=request.getParameter("file");
String b=(String)session.getAttribute("a");
String a="E:\\file\\";
String fname=a+ff;
FileInputStream fis=null;

File image=new File(fname);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/cloud","root","");

PreparedStatement ps=con.prepareStatement("insert into file1(file_name,data,userid,status,date1) values(?,AES_ENCRYPT(?,'key'),?,?,'"+str+"')");

ps.setString(1,ffn);
fis=new FileInputStream(image);
ps.setBinaryStream(2, (InputStream)fis, (int)(image.length()));
ps.setString(3,b);
ps.setString(4,s);

ps.executeUpdate();
//out.print(Successfully Registered);
session.setAttribute("ffn",ffn);
session.setAttribute("ff",ff);
response.sendRedirect("file_upload2.jsp");


}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
