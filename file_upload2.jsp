


<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String dataname=(String)session.getAttribute("ffn");
String msg=(String)session.getAttribute("ff");
//out.print(dataname);
//out.print(msg);
String a="E:\\file\\";
String fname=a+msg;
FileInputStream fis=null;

File image=new File(fname);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/cloud","root","");

PreparedStatement ps=con.prepareStatement("update file1 set auditor_data=AES_ENCRYPT(?,'key') where file_name='"+dataname+"'");
fis=new FileInputStream(image);
ps.setBinaryStream(1, (InputStream)fis, (int)(image.length()));
ps.executeUpdate();
response.sendRedirect("file_upload3.jsp");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>
