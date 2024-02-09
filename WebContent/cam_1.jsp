<%@page import="javax.swing.text.html.ImageView"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<html>
<script language="javascript">
function Update()
{
document.form1.action="ModifyTele.jsp";
document.form1.submit();
}
function Delete()
{
document.form1.action="DeleteMob.jsp";
document.form1.submit();
}

</script>
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
          <li class="active"><a href="AddProd.jsp">Add Product</a></li>
         
          <li><a href="Modify.jsp">Modify Product</a></li>
		  <li><a href="Support.jsp">Support </a></li>
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
<h2><%=request.getParameter("productName")%></h2>
<%
	String productName = request.getParameter("productName");
	String Category = request.getParameter("Category");
	session.setAttribute("nameOfProduct",productName);
	session.setAttribute("Category",Category);
	
	String imageURL = null;
	try {

		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");

		PreparedStatement pst = con.prepareStatement("Select * from " + Category + " where PRODUCTNAME =?");
		pst.setString(1, request.getParameter("productName"));
		ResultSet rs = pst.executeQuery();

		int columnCount = rs.getMetaData().getColumnCount();

		if(rs.next()) {
			
%>
<div class="clr"></div>
<form name="form1">
<table width="571">
  <tr>
    <td width="192"><strong>Company:</strong> </td>
    <td width="367"><label></label>
      <input name="t1" type="text" value="<%= rs.getString(1) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Product Name: </strong></td>
    <td><label>
      <input name="t2" type="text" id="t2" value="<%= rs.getString(2) %>" size="30">
    </label></td>
  </tr>
  <tr>
    <td><strong>Battery:</strong></td>
    <td><input name="t3" type="text" value="<%= rs.getString(3) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Pixels:</strong></td>
    <td><input name="t4" type="text" value="<%= rs.getString(4) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Flash:</strong></td>
    <td><input name="t5" type="text" value="<%= rs.getString(5) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Zoom:</strong></td>
    <td><input name="t6" type="text" value="<%= rs.getString(6) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Face detection:</strong></td>
    <td><input name="t7" type="text" value="<%= rs.getString(7) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Shooting Modes:</strong></td>
    <td><input name="t8" type="text" value="<%= rs.getString(8) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Image:</strong></td>
    <td><input name="t9" type="text" value="<%= rs.getString(9) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Sensor:</strong></td>
    <td><input name="t10" type="text" value="<%= rs.getString(10) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>Price:</strong></td>
    <td><input name="t11" type="text" value="<%= rs.getString(11) %>" size="30"></td>
  </tr>
  <tr>
    <td><strong>ImageUrl:</strong></td>
    <td><input name="t12" type="text" value="<%= rs.getString(12) %>" size="30"></td>
  </tr>
 <tr>
    <td><input type="button" name="Button" value="Update" onClick="Update()">
      <input type="button" name="Submit2" value="Delete" onClick="Delete()"> </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
<h2><span> </span></h2>
<%
} 
	}
	catch(Exception e){}
%>
<h4 style="margin-left: 30px;"></h4>


<h2><span><br>
</span></h2>
</div>
</div>

<div class="clr"></div>
</div>
</div>


</body>
</html>
