<%@ page import="java.sql.*" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
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

<!-- CuFon ends -->
</head>
<body>
<%@ page import="java.sql.DriverManager"%>
<%
	String uname1 = request.getParameter("uname");
	String pass1 = request.getParameter("pass");
	try {
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM","manager");
		PreparedStatement pst = con.prepareStatement("select * from ADMIN where USERID=? and PASSWORD=?");
		pst.setString(1, uname1);
		pst.setString(2, pass1);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			session.setAttribute("uname", uname1);
			session.setAttribute("pass", pass1);
%>
<jsp:forward page="AIndex.jsp" />

<%
	}  else {
%>
<jsp:forward page="Loginad.jsp">
<jsp:param name="msg" value="Wrong username or password" />	
</jsp:forward>

<%

	}
	}catch (SQLException se) {

		System.out.println("sql exception has occuttreee " + se);
		
	}
%>
</body>
</html>