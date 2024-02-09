<html>
<head>
<title>MAGDKART Online Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<%@page language="java" import="java.sql.*;"%>
<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style4 {
	color: #CCFF00;
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
<h1><a href="Index.jsp"><span>Social Set</span> Analysis System <small>Using NLP and AI</small></a></h1>
</div>
<label>
      <div align="right" class="style1"> <span class="style6 style1"><em><strong>Welcome</strong></em></span> <span class="style4">Admin</span>      <a href="Login.jsp" class="style6 style1" color:"white"><em><strong>Sign Out</strong></em></a>       </div>
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

<h2> <span>
  <%!ResultSet rs = null;
	ResultSet Metadata = null;
	String name = null;

	int numcolumns;
	int i;%>
  <% 
 	String company = null;
 	String productName = null;
 	String imageURL = null;
 	String name = request.getParameter("productCategory");
  	String Category = request.getParameter("Category");
 	try {

 		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");
		PreparedStatement pst = con.prepareStatement("Select * from " + Category+ " where company =?");
 		pst.setString(1, name);
 		ResultSet rs = pst.executeQuery();
 		while (rs.next()) {
 				company = rs.getString("COMPANY");
 				productName = rs.getString("PRODUCTNAME");
 				imageURL = rs.getString("IMAGEURL");
 				
 				%>
		 </span></h2>
<div align="left"></div>
<h2>
  <table align="center">
    <tr height="250px" align="right">	<td valign="top">
      <h3 align="left"><span><%=productName%></span></h3>
		    <div class="newest-item">
		      <div class="newest-img" style="height:145px; width:170px;">
		          <div align="left"><span><a	href="AdminProduct.jsp?productName=<%=productName%>&Category=<%=Category%>"> 
		            <img src="<%=imageURL%>" alt="<%=productName%>" height="145px" width="170px"/></a> </span></div>
		    </div>
		    </div>
		    </td>
	    </tr>
  </table>
  <span>
  <%
 		}
%> 		
    
    
  <%
	}

	catch (Exception e) {
		out.println(e.toString());
	}
%> 
</span></h2>
<h4 style="margin-left: 30px;"></h4>




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
	<li class="active"><a href="HomePage.jsp">Product Analysatoin</a></li>
        <li><a href="AddProduct.jsp">Add Product</a></li>
               <li><a href="About.jsp">Modify Product</a></li>
               <li><a href="Contact.jsp">Delete Product Details </a></li>
        <li><a href="feedback.jsp">Amazon Products </a></li>
</ul>
<blockquote>	
         <div align="right"><span class="style7 style1">&copy; Copyright 2016</span></div>
      </blockquote>
<div class="clr"></div>
</div>
</div>
</div>
</body>
</html>
