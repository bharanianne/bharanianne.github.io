﻿<%@ page import="java.sql.*"%>
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

            function valid()
            {
                var aa = document.s.key.value;
                if (aa == "")
                {
                    alert("Click Data Key and get Key");
                    document.s.key.focus();
                    return false;
                }
            }



        </script>


    </head>
    <body>

        <%

            String file_name = request.getQueryString();
            System.out.print(file_name);
            String s = " ";
            file_name = file_name.replace("%20", s);
            session.setAttribute("key", file_name);
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
                    <div style="position:absolute; left:16px;  top:70px;"> 
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <strong><em><font color="#990000" size="+1" face="Times New Roman" 
                                              style="text-decoration:underline">User Data</font></em></strong> <br/>
                            <br>
                        <form name="s" action="auditor_store11.jsp" method="get" onSubmit="return valid()">
                            <table align="center"  width="380">
                                <tr> 
                                    <td ><font face="Times New Roman"  size="+1"><strong> Enter Data Key</strong></font></td>
                                    <td><input type="text" name="key"> <a href="key.jsp">Data key?</a></td>
                                </tr>
                                <tr> 
                                    <td></td>
                                    <td><input type="submit" value="view"></td>
                                </tr>
                            </table>
                        </form>
                    </div>
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