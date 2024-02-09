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
	String type = request.getParameter("type");
	String company = request.getParameter("company");
	String memory1 = request.getParameter("mem");
	String price = request.getParameter("price");
	String product = request.getParameter("product");
	String imageurl = request.getParameter("imageurl");
	PreparedStatement pst;
	ResultSet rs ;
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		pst=con.prepareStatement("insert into memory values (?,?,?,?,?,?,?)");
		pst.setString(1, id);
		pst.setString(2, type);
		pst.setString(3, company);
		pst.setString(4, memory1);
		pst.setString(5, price);
		pst.setString(6, product);
		pst.setString(7, imageurl);
		
		
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