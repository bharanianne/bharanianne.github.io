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
                var aa = document.s.fn.value;
                if (aa == "")
                {
                    alert("Enter Data Name");
                    document.s.fn.focus();
                    return false;
                }

                var aaa = document.s.file.value;
                if (aaa == "")
                {
                    alert("Chosse File");
                    document.s.file.focus();
                    return false;
                }

            }

        </script>

    </head>
    <body>
        <div id="container">  	  
            <div id="header">

                <div id="logo"> 

                    <div style="position:absolute; left:36px;  top:80px;"> 
                        <div align="left"><font color="#FFFFFF" size="5"><stROng><b>CLOUD DATA PROTECTION 
                                    </b></strong></font> </div>
                    </div>
                </div>

                <div id="menu">
                    <ul>
                        <li class="current"><a href="user.jsp"><b>USER</b></a></li>
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
                <br>
                <br>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <strong><em><font color="#990000" size="+1" face="Times New Roman"  
                                      style="text-decoration:underline">User Upload Data</font></em></strong> 
                    <br/>
                    <br>
                <form name="s" action="file_upload1.jsp" method="get" onSubmit="return valid()">
                    <table align="center"  width="350">
                        <tr> 
                            <td><font face="Times New Roman"  size="+1"><strong>DATA NAME</strong></font></td>
                            <td> <input type="text" name="fn" class="b"></td>
                        </tr>
                        <tr> 
                            <td><font face="Times New Roman"  size="+1"><strong>file</strong></font></td>
                            <td><input type="file" name="file" class="b"></td>
                        </tr>
                        <tr> 
                            <td></td>
                            <td><input type="submit" name="s" value="submit" class="b1" > &nbsp;&nbsp;&nbsp;&nbsp; 
                                <input type="reset" name="r" value="clear" class="b1"></td>
                        </tr>
                    </table>
                </form>
            </div>

            <!-- Primary content area end -->
        </div>
        <div class="cleaner">


        </div>
        <!-- End Of Content area top -->


        <div style="position:absolute; left:260px;  top:270px;"> 
            <img src="images1/cloudfilestorage.jpg" width="220" height="200"></div>      
        <div style="position:absolute; left:840px;  top:270px;"> 
            <img src="images1/cloudfilestorage.jpg" width="220" height="200"></div> 
        <div id="footer">


        </div><!-- End Of Container -->

        
    </body>
</html>