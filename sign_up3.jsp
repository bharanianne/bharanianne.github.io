<%@ page import="java.sql.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
java.util.Date now = new java.util.Date();
String DATE_FORMAT = "yyyy-MM-dd";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;
String a=(String)session.getAttribute("a");
String x=(String)session.getAttribute("x");
String b=(String)session.getAttribute("b");
String c=(String)session.getAttribute("c");
String d=(String)session.getAttribute("d");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/cloud","root","");

PreparedStatement ps=con.prepareStatement("insert into user(name,userid,pass,mobile,email,date) values(?,?,?,?,?,'"+strDateNew+"')");
ps.setString(1,x);
ps.setString(2,a);
ps.setString(3,b);
ps.setString(4,c);
ps.setString(5,d);



ps.executeUpdate();
//out.print(Successfully Registered);
response.sendRedirect("sign_up2.jsp");


}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

</body>
</html>
