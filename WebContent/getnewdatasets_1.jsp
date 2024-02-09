<html>
<%@page import="com.sentimentanalysis.SentenceSplitter"%>
<%@page import="com.sentimentanalysis.TextAnalysis"%>
<%@page import="com.sentimentanalysis.GetMyDataset" %>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import = "javax.xml.parsers.DocumentBuilderFactory"%>
<%@ page import ="javax.xml.parsers.DocumentBuilder"%>
<%@ page import ="org.w3c.dom.Document"%>
<%@ page import ="org.w3c.dom.NodeList"%>
<%@ page import ="org.w3c.dom.Node"%>
<%@ page import ="org.w3c.dom.Element"%>
<%@ page import ="java.io.File"%>
<%@page import="javax.swing.text.html.ImageView"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
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
<input name="button_search" src="images/search_btn.gif"
	class="button_search" type="image" /> <span><input
	name="editbox_search" class="editbox_search" id="editbox_search"
	maxlength="80" value="Search" type="text" /></span></form>
</div>
<div class="clr"></div>
</div>
</div>

<div class="hbg">
<div class="hbg_resize">
<div class="menu_nav">
<ul>
	<li class="active"><a href="Index.jsp">Home</a></li>
	<li><a href="GetNewDataSets.jsp">Analyse Dataset</a></li>
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
<div class="article">
<!--<h2><%=request.getParameter("productName")%></h2>-->
 
<h4 style="margin-left: 30px;"></h4>


<h2><span><br>Analyse Data Sets</span></h2>

<form method="get" id="sendemail" action="DatasetReader.jsp"
	onSubmit="javascript:return validate();">
<ol>
<li><label for="File"style="padding-top: 2px;"> File to upload: <INPUT TYPE=FILE NAME="upfile"><BR> </li>
		<li><input type="image" name="imageField" id="imageField"
		src="images/submit.gif" class="send" value=submit />
	<div class="clr"></div>
	</li>
</ol>
</form>
</div>
</div>
<%@include file="Menu.jsp"%>
<div class="clr"></div>
</div>
</div>

</body>
</html>
