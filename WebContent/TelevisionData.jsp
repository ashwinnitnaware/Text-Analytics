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
<title>MAGDKART Online Shop</title>
</head>
<body>

<%
	String id = request.getParameter("id");
 	String comp1 = request.getParameter("comp");
	String product1 = request.getParameter("product");
	String type = request.getParameter("type");
	String screen = request.getParameter("screen");
	String audio = request.getParameter("audio");
	String video = request.getParameter("video");
	String power = request.getParameter("power");
	String design = request.getParameter("design");
	String price = request.getParameter("price");
	String imageUrl = request.getParameter("imageUrl");
	PreparedStatement pst;
	ResultSet rs ;
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		pst=con.prepareStatement("insert into television1 values (?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, id);
		pst.setString(2, comp1);
		pst.setString(3, product1);
		pst.setString(4, type);
		pst.setString(5, screen);
		pst.setString(6, audio);
		pst.setString(7, video);
		pst.setString(8, power);
		pst.setString(9, design);
		pst.setString(10, price);
		pst.setString(11, imageUrl);
		
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