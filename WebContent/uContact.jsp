<html>
<head>
<title>MAGDKART Online Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
    <script type="text/javascript" src="js/jquery.tools.js"></script>
    <script type="text/javascript" src="js/ikonik.js"></script>
<script>
function valid()
{
f=document.form;
if(isEmpty(f.usernm.value))
{
alert("Please type your first name");
f.usernm.focus();
return false;
}
else 
return true;
}

function validate()
{
	alert("ok");	
var usernm = document.form.usernm.value;
var cemail = document.form.cemail.value;
var cmsg = document.form.cmsg.value;
var reg = new RegExp("^[A-Za-z0-9_]{1,}[.]?[A-Za-z0-9_]{1,}@{1}([A-Za-z0-9_]+[.]{1})+[A-Za-z0-9_]{1,}$");
if(isEmpty(usernm)) 
{
alert("Please type your first name.");
document.form.usernm.focus();
return false;
} 
else if(isEmpty(cemail)) 
{
alert("The Email_id is compulsory.");
document.form.cemail.focus();
return false;
} 
else if(isEmpty(cmsg)) 
{
alert("Please type Phone.");
document.form.cmsg.focus();
return false;
} 
return true;
}
</script>

<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {
	color: #333333;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><span class="style1">MAGDKART</span> Online Shop </h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="">
          <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
          <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" /></span>
        </form>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="hbg">
    <div class="hbg_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="uIndex.jsp">Home</a></li>
          <li><a href="uSupport.jsp">Support</a></li>
          <li><a href="uAbout.jsp">About Us</a></li>
          <li  class="active"><a href="uContact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </div>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Contact</span></h2><div class="clr"></div>
          <p>Contact us for any queries.</p>
        </div>
        <div class="article">
          <h2><span>Send us</span> mail</h2><div class="clr"></div>
         <form name = "form" method="post" action="Validatecontact.jsp"
                 onSubmit="javascript:return validate();">

          <ol><li>
            <label for="name">Name (required)</label>
            <input id="usernm" name="usernm" class="text" style="height:25px;"/>
            
          </li><li>
            <label for="email">Email Address (required)</label>
            <input id="cemail" name="cemail" class="email" style="height:25px;"/>
          </li><li>
            <label for="message">Your Message</label>
            <textarea id="cmsg" name="cmsg" rows="8" cols="50"></textarea>
          </li><li>
            <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" value="submit" />
            <div class="clr"></div>
          </li></ol>
          </form>
        </div>
      </div>
      <div class="sidebar"><div class="gadget">
       
</body>
</html>