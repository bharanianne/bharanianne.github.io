﻿<%@ page import="java.sql.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>dpaas</title>

        <link href="style.css" rel="stylesheet" type="text/css" />
        <script language="javascript" type="text/javascript">



            function valid()
            {
                var aa = document.s.unn.value;
                if (aa == "")
                {
                    alert("Enter Name");
                    document.s.unn.focus();
                    return false;
                }

                var a = document.s.uidd.value;
                if (a == "")
                {
                    alert("Enter User ID");
                    document.s.uidd.focus();
                    return false;
                }
                var b = document.s.passs.value;
                if (b == "")
                {
                    alert("Enter Password");
                    document.s.passs.focus();
                    return false;
                }


                var k = document.s.mobb.value;
                if (k == "")
                {
                    alert("Enter mobile number");
                    document.s.mobb.focus();
                    return false;
                }
                if (isNaN(k))
                {
                    alert("Enter mobile number in numbers");
                    document.s.mobb.focus();
                    return false;
                }
                if (k.charAt(0) != 9 )
                {
                    alert("Enter the correct mobile no");
                    document.s.mobb.focus();
                    return false;
                }
                if (k.length != 10)
                {
                    alert("Enter 10 digits");
                    document.s.mobb.focus();
                    return false;
                }

                var emailfilter = /^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
                var m = emailfilter.test(document.s.eid.value);
                if (m == false)
                {
                    alert("Please enter a valid Email Id");
                    document.s.eidd.focus();
                    return false;
                }

            }

        </script>
    </head>
    <body>
        <%
            java.util.Date now = new java.util.Date();
            String DATE_FORMAT1 = "dd/MM/yyyy";
            SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
            String strDateNew1 = sdf1.format(now);
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
                        <li class="current"><a href="sign_up.jsp"><b>SIGN UP</b></a></li>
                        <li><a href="index.jsp"><b>BACK</b></a></li>
                        <li><a href="update.jsp"><b>UPDATE PROFILE</b></a></li>

                    </ul>
                </div>
                <div class="cleaner"></div>
            </div>

            <div id="content_area_top">
            </div>

            <div class="box"> <br>
                <br>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <strong><em><font color="#990000" size="+1" face="Times New Roman"  
                                      style="text-decoration:underline">User Registration</font></em></strong> 
                    <br/>
                    <br>
                <form name="s" action="sign_up1.jsp" method="get" onSubmit="return valid()">
                    <table align="center" cellpadding="10" cellspacing="10" width="400">
                        <tr> 
                            <td><font face="Times New Roman"  size="+1"><strong>Name</strong></font></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="unn" class="b"></td>
                        </tr>
                        <tr> 
                            <td><font face="Times New Roman"  size="+1"><strong>User ID</strong></font></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <input  type="text" name="uidd" id="name"></td>
                        </tr>
                        <tr> 
                            <td><font face="Times New Roman"  size="+1"><strong>Password</strong></font></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="passs" class="b"></td>
                        </tr>
                        <tr> 
                            <td><font face="Times New Roman"  size="+1"><strong>Mobile</strong></font></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mobb" class="b"></td>
                        </tr>
                        <tr> 
                            <td><font face="Times New Roman"  size="+1"><strong>Email ID</strong></font></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="eidd" class="b"></td>
                        </tr>
                        <tr> 
                            <td><font face="Times New Roman"  size="+1"><strong>Date</strong></font></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="date" class="b" value="<%=strDateNew1%>"></td>
                        </tr>
                        <tr> 
                            <td></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="s" value="submit" class="b1" > 
                                &nbsp;&nbsp;&nbsp; <input type="reset" name="r" value="clear" class="b1"></td>
                        </tr>
                    </table>
                </form>
            </div>

            <div style="position:absolute; left:960px;  top:260px;"> 
                <img src="images1/create_new_user.jpg" width="200" height="350">
            </div> 
            <!-- Primary content area end -->
        </div>
        <div class="cleaner">


        </div>





        <div id="footer">


        </div><!-- End Of Container -->

        
    </body>
</html>