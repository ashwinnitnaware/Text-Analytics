<%@ page import="java.sql.*" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<head>
<script language="javascript">
	javascript:window.history.foward(-1);
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Social Set Analysis System</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String comp1 = request.getParameter("comp");
	String product1 = request.getParameter("product");
	String display = request.getParameter("dis");
	String battery = request.getParameter("bat");
	String memory = request.getParameter("mem");
	String processor1 = request.getParameter("processor");
	String operating = request.getParameter("os");
	String camera = request.getParameter("cam");
	String keypad = request.getParameter("key");
	String touch = request.getParameter("touchscreen");
	String price1 = request.getParameter("price");
	String imageUrl = request.getParameter("imageUrl");
	PreparedStatement pst;
	ResultSet rs ;
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		pst=con.prepareStatement("insert into mobile values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, id);
		pst.setString(2, comp1);
		pst.setString(3, product1);
		pst.setString(4, display);
		pst.setString(5, battery);
		pst.setString(6, memory);
		pst.setString(7, processor1);
		pst.setString(8, operating);
		pst.setString(9, camera);
		pst.setString(10, keypad);
		pst.setString(11, touch);
		pst.setString(12, price1);
		pst.setString(13, imageUrl);
	    pst.executeUpdate();
		out.println("success");
%>

<jsp:forward page="AIndex.jsp" />
<%
}
	catch (SQLException se) {
		System.out.println("sql exception has occuttreee " + se);
	}
%>

</body>
</html>