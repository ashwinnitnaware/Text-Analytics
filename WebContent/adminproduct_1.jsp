<%@page import="javax.swing.text.html.ImageView"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>MAGDKART Online Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>


<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #CCFF00}
.style3 {font-weight: bold}
-->
</style>
</head>
<body>

<div class="main">
<div class="header">
<div class="header_resize">
<div class="logo">
<h1><a href="Index.jsp"><span>Social Set</span> Analysis System <small>Using NLP and AI</small></a></h1>
</div>
<label>
      <div align="right" class="style1"> <span class="style6 style1"><em><strong>Welcome</strong></em></span> <span class="style3 style2">Admin</span>      <a href="Login.jsp" class="style6 style1" color:"white"><em><strong>Sign Out</strong></em></a>       </div>
      </label>

<div class="searchform">
<form id="formsearch" name="formsearch" method="post" action="">
<input name="button_search" src="images/search_btn.gif"
	class="button_search" type="image" /> <span><input
	name="editbox_search" class="editbox_search" id="editbox_search"
	maxlength="80" value="Search" type="text" /></span></form>
</div>
<div class="clr"></div>
</div>
</div>

 <nav>
	<ul>
		

		<li><a href="#">Add Product</a>
			<ul>
				<li><a href="Mobiles.jsp?Category=Mobile&productCategory=Apple">Mobiles</a></li>
				<li><a href="Cameras.jsp?Category=Camera&productCategory=Nikon" >Cameras</a></li>
				<li><a href="Computers.jsp?Category=Computer&productCategory=HP">Computers</a></li>
				<li><a href="Television.jsp?Category=Television&productCategory=Samsung">Television</a></li>
				<li><a href="Memory.jsp?Category=Memory&productCategory=WD">Memory</a></li>				
			</ul>
		</li>
				
		<<li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Modify/Delete Product</a>
		<ul>
			<li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Mobiles</a>
				<ul>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Apple">Apple</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Samsung">Samsung</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Nokia">Nokia</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=HTC">HTC</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=Sony">Sony</a></li>
				<li><a href="MobModify.jsp?Category=Mobile&productCategory=BlackBerry">BlackBerry</a></li>
		</ul></li>
		
		<li><a href="CamModify.jsp?Category=Camera&productCategory=Nikon" >Cameras</a>
		<ul>
    			<li><a href="CamModify.jsp?Category=Camera&productCategory=Nikon">Nikon</a></li>
   				<li><a href="CamModify.jsp?Category=Camera&productCategory=Canon" onClick="2">Canon</a></li>
    			<li><a href="CamModify.jsp?Category=Camera&productCategory=Sony" onClick="3">Sony</a></li>
				<li><a href="CamModify.jsp?Category=Camera&productCategory=Fujifilm" onClick="4">Fujifilm</a></li>
    			<li><a href="CamModify.jsp?Category=Camera&productCategory=Panasonic" onClick="5">Panasonic</a></li>
    			<li><a href="CamModify.jsp?Category=Camera&productCategory=Samsung" onClick="6">Samsung</a></li>
    	</ul></li>
    	<li><a href="CompModify.jsp?Category=Computer&productCategory=HP">Computers</a>
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
<li><a href="TeleModify.jsp?Category=Television&productCategory=Samsung">Television</a>
	<ul>
	<li><a href="TeleModify.jsp?Category=Television&productCategory=Samsung">Samsung</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=LG" onClick="2">LG</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=Sony" onClick="3">Sony</a></li>
	<li><a href="TeleModify.jsp?Category=Television&productCategory=Panasonic" onClick="4">Panasonic</a></li>
    <li><a href="TeleModify.jsp?Category=Television&productCategory=Sharp" onClick="5">Sharp</a></li>
	</ul>
</li>
<li><a href="MemModify.jsp?Category=Memory&productCategory=WD">Memory</a>
    <ul>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=WD">WD</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=Transcend" onClick="2">Transcend</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=HP" onClick="3">HP</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=Sandisk" onClick="4">Sandisk</a></li>
    <li><a href="MemModify.jsp?Category=Memory&productCategory=SDHC" onClick="5">SDHC</a></li>
     </ul>
</li>
		</ul>
		</li>
		
			
		<li><a href="#">Amazon Product Analysation</a>
		<ul>
    <li><a href="XmlRead.jsp">Computer DataSet</a></li>
    <li><a href="XmlRead2.jsp">Camera DataSet</a></li>
    <li><a href="XmlRead3.jsp">Router DataSet</a></li>
    
     </ul>
		</li>
		
	</ul>
</nav>
<div class="content">
<div class="content_resize">
<div class="mainbar">
<div class="article">
<h2><%=request.getParameter("productName")%></h2>
<%
	String productName = request.getParameter("productName");
	String Category = request.getParameter("Category");
	session.setAttribute("nameOfProduct",productName);
	
	String imageURL = null;
	try {

		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");

		PreparedStatement pst = con.prepareStatement("Select * from " + Category + " where PRODUCTNAME =?");
		pst.setString(1, request.getParameter("productName"));
		ResultSet rs = pst.executeQuery();

		int columnCount = rs.getMetaData().getColumnCount();

		while (rs.next()) {
			imageURL = rs.getString("imageUrl");
%>
<div class="clr"></div>
<table width="605" align="center" style="font-size: 16px;">
	<tr>
		<td colspan="2" style="height: 300px;">
		  <div align="left"><img src="<%=imageURL%>"></div></td>
	</tr>
</table>

<table width="600" border="0" style="font-size: 16px;">
	<%
		for (int i = 1; i < columnCount; i++) {
	%>
	<tr>
		<td class="text"><b><%=rs.getMetaData().getColumnName(i)%></b></td>
		<td><%=rs.getString(rs.getMetaData().getColumnName(i))%></td>
	</tr>

	<%
		}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</table>
<h2><span> </span></h2>
<h4 style="margin-left: 30px;"></h4>


<h2><span><br>
Comment</span></h2>
<p><input type="text" name="nameOfProduct"  value="<%=productName %>" /> </p>

<form method="get" id="sendemail" action="ValidateComment.jsp"
	onSubmit="javascript:return validate();">
<ol>
	<li><label for="email" style="padding-top: 2px;">Email
	Address (required)</label>
	  <input id="email" name="email" class="text"
		style="height: 30px;" />
		<input type="radio" name="@gmail.com" />
	</li>
	<li><label for="message" id="comment">Your Comment</label> <textarea
		id="message" name="message" rows="8" cols="50"></textarea></li>
	<li><input type="image" name="imageField" id="imageField"
		src="images/submit.gif" class="send" value=submit />
	<div class="clr"></div>
	</li>
</ol>
</form>
</div>
</div>

<div class="clr"></div>
</div>
</div>

<div class="fbg"></div>
<div class="footer">
<div class="footer_resize">
<p class="lf"><a href="#"></a></p>
<ul class="fmenu">
	<li class="active"><a href="AIndex.jsp">Current Product Analysatoin </a></li>
        <li><a href="AddProduct.jsp">Add Product Details </a></li>
               <li><a href="About.jsp">Modify Product Details </a></li>
               <li><a href="Contact.jsp">Delete Product Details </a></li>
        <li><a href="feedback.jsp">Analyse on Amazon Products </a></li>
</ul>
<blockquote>	
         <div align="right"><span class="style7 style1">&copy; Copyright 2016</span></div>
      </blockquote>

</div>
</div>
</div>
</body>
</html>
