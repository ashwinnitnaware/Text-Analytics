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
.style2 {
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
		  <li><a href="adSupport.jsp">Support </a></li>
          <li><a href="adAbout.jsp">About Us</a></li>
          <li><a href="adContact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </div>
<div class="content">
<div class="content_resize">

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
<h2 align="left">
  <table align="center">
    <tr height="250px">	<td valign="left">
      <h3 align="right"><span><%=productName%></span></h3>
		    <div class="newest-item">
		      <div class="newest-img" style="height:145px; width:170px;" >
		          <div align="right"><span><a	href="Comp.jsp?productName=<%=productName%>&Category=<%=Category%>"> 
		            <img src="<%=imageURL%>" alt="<%=productName%>" height="145px" width="170px" align="left"/></a> </span></div>
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
</div>
</div>
</body>
</html>
