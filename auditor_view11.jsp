<%@ page import="java.sql.*"%>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>dpaas</title>

        <link href="style.css" rel="stylesheet" type="text/css" />
        <script language="javascript" type="text/javascript">
            function clearText(field)
            {
                if (field.defaultValue == field.value)
                    field.value = '';
                else if (field.value == '')
                    field.value = field.defaultValue;
            }
        </script>

    </head>
    <body>

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
                        <li class="current"><a href="tpa2.jsp"><b>AUDIITOR</b></a></li>
                        <li><a href="tpa.jsp"><b>BACK</b></a></li>

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
                <div style="position:absolute; left:36px;  top:10px;"> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Times New Roman"  
                                                                                                             style="text-decoration:underline">User Data</font></em></strong> <br/>
                        <br>
                    <form name="s" action="#" method="get" onSubmit="return valid()">
                        <table align="center" width="380">
                            <tr> 
                                <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>DATA 
                                        NAME</strong></font></td>
                                <td bgcolor="#CCCCCC"><font face="Times New Roman" size="+1"><strong>VIEW 
                                        DATA</strong></font></td>
                            </tr>
                            <%
                                String file_name = null;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/cloud", "root", "");

                                    PreparedStatement ps = con.prepareStatement("select  file_name from file1");
                                    ResultSet rs = ps.executeQuery();

                                    while (rs.next()) {
                                        file_name = rs.getString(1);
                                        //data=rs.getString(2);

                            %>
                            <tr> 
                                <td bgcolor="#CCFFFF"> 
                                    <%=file_name%>
                                </td>
                                <td bgcolor="#CCFFFF"><a href="auditor_view222.jsp?<%=file_name%>">view</a></td>
                            </tr>
                            <%
                                }
                            %>
                            <%
                                    session.setAttribute("file_name", file_name);
                                } catch (Exception e1) {
                                    out.println(e1.getMessage());

                                }
                            %>
                        </table>
                    </form>
                    <div id="menu"> </div>
                    <div style="position:absolute; left:506px;  top:10px;"> <img src="images1/ad.jpg" width="300" height="420"> 
                    </div>
                    <!-- Primary content area end -->
                </div>
                <div class="cleaner"> </div>
            </div>
            <!-- End Of Content area top -->


        </div>      

        <div id="footer">


        </div><!-- End Of Container -->

        
    </body>
</html>