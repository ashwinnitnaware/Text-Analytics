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
    <p align="center" class="style3">Modify Product </p>
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
          <h3 align="justify" class="star"><span>Select The Categories</span> To Modify </h3>
          <div class="clr"></div>
          <div id="categories">
            <ul>
  <li><a href="#">Mobiles</a>
	<ul>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Apple</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Samsung">Samsung</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Nokia">Nokia</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=HTC">HTC</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Sony">Sony</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=BlackBerry">BlackBerry</a></li>
		</ul>
</li>
<li><a href="#" >Cameras</a>
	<ul>
    <li><a href="CamModify.jsp?Category=Camera&productCategory=Nikon">Nikon</a></li>
    <li><a href="CamModify.jsp?Category=Camera&productCategory=Canon" onClick="2">Canon</a></li>
    <li><a href="CamModify.jsp?Category=Camera&productCategory=Sony" onClick="3">Sony</a></li>
	<li><a href="CamModify.jsp?Category=Camera&productCategory=Fujifilm" onClick="4">Fujifilm</a></li>
    <li><a href="CamModify.jsp?Category=Camera&productCategory=Panasonic" onClick="5">Panasonic</a></li>
    <li><a href="CamModify.jsp?Category=Camera&productCategory=Samsung" onClick="6">Samsung</a></li>
    </ul>
</li>
<li><a href="#">Computers</a>
	<ul>
	<li><a href="CompModify.jsp?Category=Computer&productCategory=HP" >HP</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=Apple" onClick="2">Apple</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=Dell" onClick="3">Dell</a></li>
	<li><a href="CompModify.jsp?Category=Computer&productCategory=Lenovo" onClick="4">Lenovo</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=Asus" onClick="5">Asus</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=Sony" onClick="6">Sony</a></li>
	<li><a href="CompModify.jsp?Category=Computer&productCategory=Acer" onClick="7">Acer</a></li>
    <li><a href="CompModify.jsp?Category=Computer&productCategory=HCL" onClick="8">HCL</a></li>
	</ul>
</li>
<li><a href="">Television</a>
	<ul>
	<li><a href="TeleModify.jsp?Category=Television&productCategory=Samsung">Samsung</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=LG" onClick="2">LG</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=Sony" onClick="3">Sony</a></li>
	<li><a href="TeleModify.jsp?Category=Television&productCategory=Panasonic" onClick="4">Panasonic</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=Sharp" onClick="5">Sharp</a></li>
	</ul>
</li>
<li><a href="#">Memory</a>
    <ul>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=WD">WD</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=Transcend" onClick="2">Transcend</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=HP" onClick="3">HP</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=Sandisk" onClick="4">Sandisk</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=SDHC" onClick="5">SDHC</a></li>
     </ul>
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
