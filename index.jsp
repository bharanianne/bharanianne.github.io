<%-- 
    Document   : index
    Created on : Nov 9, 2014, 6:48:05 PM
    Author     : anne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Cloud</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.defaultvalue.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.8.13.custom.min.js"></script>
<script type="text/javascript" src="scripts/jquery.scrollTo-min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $("#fullname, #validemail, #message").defaultvalue("Full Name", "Email Address", "Message");
    $('#shout a').click(function () {
        var to = $(this).attr('href');
        $.scrollTo(to, 1200);
        return false;
    });
    $('a.topOfPage').click(function () {
        $.scrollTo(0, 1200);
        return false;
    });
    $("#tabcontainer").tabs({
        event: "click"
    });
});
</script>
<!-- Homepage Only Scripts -->
<script type="text/javascript" src="scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.setup.js"></script>
<script type="text/javascript" src="scripts/piecemaker/swfobject/swfobject.js"></script>
<script type="text/javascript">
var flashvars = {};
flashvars.cssSource = "scripts/piecemaker/piecemaker.css";
flashvars.xmlSource = "scripts/piecemaker/piecemaker.xml";
var params = {};
params.play = "false";
params.menu = "false";
params.scale = "showall";
params.wmode = "transparent";
params.allowfullscreen = "true";
params.allowscriptaccess = "sameDomain";
params.allownetworking = "all";
swfobject.embedSWF('scripts/piecemaker/piecemaker.swf', 'piecemaker', '960', '430', '10', null, flashvars, params, null);
</script>
<script>
    
    </script>
<!-- End Homepage Only Scripts -->
</head>
<body id="top">
<div class="wrapper col1">
  <div id="topbar" class="clear">
    
      <form  method="get" action="searchServlet"  id="search">
      <fieldset>
        <legend>Site Search</legend>
        <input type="text" value="Search Our Website&hellip;" onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" name="search"  />
        <input type="submit" id="go"  alt="Search"  value="submit" />
        
      </fieldset>
    </form>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="header" class="clear">
    <div >
      <h1 id="a"><a href="index.jsp" >Cloud Data Protection</a></h1>
      
    </div>
    <div id="topnav">
      <ul>
        <li><a href="sign_up.jsp">Sign Up</a></li>
        <li><a href="tpa.jsp">Auditor</a></li>
        <li><a href="admin_view.jsp">Admin</a></li>
        <li><a href="user.jsp">User</a></li>
        <li class="active"><a href="index.jsp">Homepage</a></li>
      </ul>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="featured_slide">
    <!-- ####################################################################################################### -->
    <div id="piecemaker"> <img src="images/demo/piecemaker/960x360.gif" alt="" /> </div>
    <!-- ####################################################################################################### -->
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container" class="clear">
    <!-- ####################################################################################################### -->
    <div id="shout" class="clear">
      <div class="fl_left">
        <h2>Need to save your data ?</h2>
        <p>Why not try our services today, you won't regret your choice !</p>
      </div>
      <p class="fl_right"><a href="#contact">Contact Us Today</a></p>
    </div>
    <!-- ####################################################################################################### -->
    <div id="homepage" class="clear">
      <div class="fl_left">
        <h2>Latest Featured Project</h2>
        <div id="hpage_slider">
          <div class="item"><img src="images/demo/featured-project/1.gif" alt="" /></div>
          <div class="item"><img src="images/demo/featured-project/2.gif" alt="" /></div>
          <div class="item"><img src="images/demo/featured-project/3.gif" alt="" /></div>
        </div>
       
      </div>
      <div class="fl_right">
        <h2>About Us</h2>
        <ul class="testimonials">
          <li>
            <p class="name"><strong>Sujith Thota</strong> - Back End Developer </p>
            <blockquote>He has knowledge on data base and various programming languages.</blockquote>
            <p class="readmore"><a href="#"><strong>View There Projects</strong></a></p>
          </li>
          <li class="last">
            <p class="name"><strong>Bharani Anne</strong> - Front End Developer</p>
            <blockquote>Front end developer and interested in programming.</blockquote>
            <p class="readmore"><a href="#"><strong>View There Projects</strong></a></p>
          </li>
        </ul>
        <h2>Subscribe To Our Newsletter</h2>
        <p>You can subscribe to our projects and get the updates that we made, subscription information will be mailed.</p>
        <form action="#" method="post">
          <fieldset>
            <legend>Newsletter Signup:</legend>
            <input type="text" id="newsletter" value="Enter Email Here&hellip;" onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
            <input type="image" id="subscribe" src="images1/sign-up.gif" alt="Submit" />
          </fieldset>
        </form>
        <p class="form_hint">* Please add name@domain.com to your trusted email list</p>
      </div>
    </div>
    <!-- ####################################################################################################### -->
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer" class="clear">
    <div class="fl_left">
      <div class="about_us border">
        <h2>About The Project</h2>
        <p>This project is simple implementation of cloud data where users data is protected <a href="#">more..</a></p>
      </div>
      <div id="contact" class="clear">
        <h2>Contact Us</h2>
        <div class="fl_left">
          <form method="post" action="#">
            <label for="fullname">Name:</label>
            <input type="text" name="fullname" id="fullname" value="" />
            <label for="validemail">Email:</label>
            <input type="text" name="validemail" id="validemail" value="" />
            <label for="message">Message:</label>
            <textarea name="message" id="message" cols="45" rows="10"></textarea>
            <button type="submit" value="submit"><span>Submit</span></button>
          </form>
        </div>
        <div class="fl_right">
          <address>
          <strong class="title">Company Name</strong><br />
          Street Name &amp; Number<br />
          Town<br />
          Postcode/Zip
          </address>
          <ul>
            <li><strong class="title">Tel:</strong><br />
              xxxxx xxxxxxxxxx</li>
            <li><strong class="title">Fax:</strong><br />
              xxxxx xxxxxxxxxx</li>
            <li><strong class="title">Email:</strong><br />
              <a href="#">contact@mydomain.com</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- ####################################################################################################### -->
    <div class="fl_right">
      <div id="tabcontainer" class="border">
        <ul id="tabnav">
          <li><a href="#tabs-1">From The Blog</a></li>
          <li><a href="#tabs-2">Latest Tweets</a></li>
          <li class="last"><a href="#tabs-3">Interesting Links</a></li>
        </ul>
        <div id="tabs-1" class="tabcontainer">
          <ul class="blogposts">
            <li>
              <p class="posttitle"></p>
              <p class="publishedon"></p>
              <p class="postintro"></p>
              <p class="readmore"><a href="#">Read More &raquo;</a></p>
            </li>
            <li class="last">
              <p class="posttitle"></p>
              <p class="publishedon"></p>
              <p class="postintro"></p>
              <p class="readmore"><a href="#">Read More &raquo;</a></p>
            </li>
          </ul>
        </div>
        <!-- ########### -->
        <div id="tabs-2" class="tabcontainer">
          <ul class="twitterfeed">
            <li><a href="#">@namehere</a>  <span>1 day ago</span></li>
            <li><a href="#">@namehere</a>  <span>1 day ago</span></li>
            <li><a href="#">@namehere</a>  <span>1 day ago</span></li>
            <li class="last"><a href="#">@namehere</a>  <span>1 day ago</span></li>
          </ul>
        </div>
        <!-- ########### -->
        <div id="tabs-3" class="tabcontainer">
          <ul>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li class="last"><a href="#"></a></li>
          </ul>
        </div>
      </div>
      <h2>Keep Up To Date</h2>
      <ul class="socialize">
        <li><span>Facebook:</span> <a href="#">www.facebook.com/myhandel</a></li>
        <li><span>Twitter:</span> <a href="#">www.twitter.com/myhandel</a></li>
        <li class="last"><span>LinkedIn:</span> <a href="#">www.linkedin.com/myhandel</a></li>
      </ul>
    </div>
  </div>
  <div id="backtotop"><a href="#top" class="topOfPage">To The Top</a></div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyrigh bharani and sujith- <a href="#">DATABASE</a></p>
    <p class="fl_right">FINAL <a href="#" title="Free Website Templates">DATA BASE PROJECT</a></p>
  </div>
</div>
</body>
</html>