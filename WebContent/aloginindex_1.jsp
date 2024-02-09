<html>
<head>
<title>MAGDKART Online Shop</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="js/jquery.tools.js"></script>
<script type="text/javascript" src="js/ikonik.js"></script>

<!-- CuFon ends -->
 <script>
 
	function validate() {
		var USERID = document.form.name.value;		
		var PASSWORD = document.form.password.value;
		if (USERID == "") {
			alert("Enter Username!");
			return false;
		}
		if (PASSWORD == "") {
			alert("Enter Password!");
			return false;
		}
		return true;
		if (!validate(USERID, PASSWORD) ) 
			{
					int count = Integer.parseInt( session.getAttribute("count") );
							if (count > 1) 
								{
										response.sendRedirect("Index.jsp");
								}
								else 
									{
												count++;
												session.setAttribute("count");			
												response.sendRedirect("Login.jsp");
														}
	}
	}
</script>

 <style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
}
.style3 {color: #333333}
-->
 </style>
</head>
<body>
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo">
      <h1> <span class="style3">MAGDKART</span> Online Shop </h1> 
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
          <li class="active"><a href="Index.jsp">Home</a></li>
         
          <li><a href="Support.jsp">Support</a></li>
          <li><a href="About.jsp">About Us</a></li>
          <li><a href="Contact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </div>

  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article style1">
          <div align="center">
            <h1 align="left">Admin Login Panel </h1>
          </div>
        </div>   
		
        <script>
	function validate() {
		var USERID = document.form.uname.value;
		var PASSWORD = document.form.pass.value;
		if (USERID == "") {
			alert("Enter Username!");
			return false;
		}
		if (PASSWORD == "") {
			alert("Enter Password!");
			return false;
		}
		return true;
		if (!validate(USERID, PASSWORD) ) 
			{
					int count = Integer.parseInt( session.getAttribute("count") );
							if (count > 1) 
								{
										response.sendRedirect("Index.jsp");
								}
								else 
									{
												count++;
												session.setAttribute("count");			
												response.sendRedirect("Login.jsp");
														}
	}
	}
</script>

        <form name="login" method="get" action="ValidateAdmin.jsp"
	onSubmit="javascript:return validate();">
          <label for="name">User ID </label>
          <br />
            <input id="name" name="uname" class="text" style="height:25px; width:200px;"/>
            <p>
              <label for="password">Password </label><br />
              <input name="pass" type="password" class="text" id="password" style="color: blue;font-size: medium height:25px; width:200px;" value="" align="middle"/>        </p>
            <p>
              <input type="image" src="images/submit.gif" class="button" value="Submit" align="middle" style="margin-left:60px; margin-right:auto; href"ValidateAdmin.jsp" "/>
          </p>
			        
                    
        </form>
        <h5 style="margin-left:40px;">
        <a href="RegistrationAdmin.jsp">New User? <font size="+1">Sign Up</font></a></h5>
      </div>
      </div>
</body>
</html>     
      </div>
        
      <div class="clr"></div>
    </div>
  </div>
         
      </div>
      <div class="clr"></div>
    

  
</body>
</html>
