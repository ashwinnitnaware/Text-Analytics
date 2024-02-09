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
		  <li><a href="adSupport.jsp">Support </a></li>
          <li><a href="adAbout.jsp">About Us</a></li>
          <li><a href="adContact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </div>

<div class="content">
 <div class="content_resize">
   
   
   <div class="mainbar">
<div class="article">
<form method=post action="CamerasData.jsp" name="AddDetails" >
  <p class="style3">Add Camera Details </p>
  <table width="329" align="left">
<tr>
    <td width="193" height="38"><div align="left"><strong>ID</strong> <strong>:</strong> </div></td>
    <td width="124"><input name="id" type="text" id="id" size="20"></td>
  </tr>
  <tr>
    <td width="193" height="38"><div align="left"><strong>COMPANY</strong> <strong>:</strong> </div></td>
    <td width="124"><input name="comp" type="text" id="comp" size="20"></td>
  </tr>
  <tr>
    <td height="36"><div align="left"><strong>PRODUCT NAME </strong><strong>:</strong> </div></td>
    <td><input name="product" type="text" id="product" size="20"></td>
  </tr>
  <tr>
    <td height="35"><strong>BATTERY:</strong></td>
    <td><input name="bat" type="text" id="bat" size="20"></td>
  </tr>
  <tr>
    <td height="35"><strong>PIXELS:</strong></td>
    <td><input name="pix" type="text" id="pix" size="20"></td>
  </tr>
  <tr>
    <td height="35"><strong>FLASH:</strong></td>
    <td><input name="flash" type="text" id="flash" size="20"></td>
  </tr>
  <tr>
    <td height="35"><div align="left"><strong>ZOOM:</strong></div></td>
    <td><input name="zoom" type="text" id="zoom" size="20"></td>
  </tr>
  <tr>
    <td height="35"><strong>FACE DETECTION: </strong></td>
    <td><input name="face" type="text" id="face" size="20"></td>
  </tr>
  <tr>
    <td height="35"><strong>SHOOTING MODES: </strong></td>
    <td><input name="shooting" type="text" id="shooting" size="20"></td>
  </tr>
  <tr>
    <td height="35"><div align="left"><strong>IMAGE:</strong></div></td>
    <td><input name="image" type="text" id="image" size="20"></td>
  </tr>
  <tr>
    <td height="34"><div align="left"><strong>SENSOR:</strong></div></td>
    <td><input name="sensor" type="text" id="sensor" size="20"></td>
  </tr>
  <tr>
    <td height="39"><div align="left"><strong>PRICE:</strong><strong></strong></div></td>
    <td><input name="price" type="text" id="price" size="20"></td>
  </tr>
  
  <tr>
    <td height="33"><div align="left"><strong>IMAGE URL </strong> <strong>:</strong> </div></td>
    <td><input name="imageUrl" type="text" id="imageUrl" size="20"></td>
  </tr>
  <tr>
    <td height="40" colspan="2"><div align="center">
      <input type="submit" name="Submit"
			value="ADD DETAILS">
    </div></td>
    </tr>
</table>
</form>
<h2>&nbsp;</h2>
<h4 style="margin-left: 30px;">&nbsp;</h4>
<h4 style="margin-left: 30px;">&nbsp;</h4>
</div>
</div>
<div class="clr"></div>
  </div>
</div>
<div class="fbg"></div>
</div>
</div>
</body>
</html>
