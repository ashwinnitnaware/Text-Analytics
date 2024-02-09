<html>
<head>
<title>MAGDKART Online Shopee</title>
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
.style2 {
	color: #333333;
	font-weight: bold;
}
.style3 {
	font-size: 16px;
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
      <h1><span class="style2">MAGDKART</span> Online Shop </h1>
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
          <li><a href="AIndex.jsp">Home</a></li>
          <li class="active"><a href="AddProd.jsp">Add Product</a></li>
         
          <li><a href="Modify.jsp">Modify Product</a></li>
          		  <li><a href="Analyse.jsp">Analysis Product</a></li>
		  <li><a href="adSupport.jsp">Support </a></li>

          <li><a href="adAbout.jsp">About Us</a></li>
          <li><a href="adContact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </div>

  
  <div class="content">
    <p align="center" class="style3">Add  Products</p>
    <div class="content_resize">
      <div class="mainbar">
        <div class="main"></div>   
		<form name="login" method="get" action="ValidateUser.jsp"
	onSubmit="javascript:return validate();">
                   <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
    <script type="text/javascript" src="js/jquery.tools.js"></script>
    <script type="text/javascript" src="js/ikonik.js"></script>

<!-- CuFon ends -->
</head>
<body>
<div class="sidebar">
        <div class="gadget">
          <h3 align="justify" class="star"><span>Select Category</span> To Add Product </h3>
          <div class="clr"></div>
          <div id="categories">
            <ul>
  <li><a href="Mobiles.jsp">Mobiles</a>
	
</li>
<li><a href="Cameras.jsp" >Cameras</a>
	</li>
<li><a href="Computers.jsp">Computers</a>
	</li>
<li><a href="Television.jsp">Television</a>
	</li>
<li><a href="Memory.jsp">Memory</a>
    
</li>

</ul>
		</div>

        </div>
         <div class="gadget">
        <h2 class="star">
		</form>
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
