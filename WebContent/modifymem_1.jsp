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
	String comp1 = request.getParameter("t1");
	String product1 = request.getParameter("t2");
	String display = request.getParameter("t3");
	String battery = request.getParameter("t4");
	String memory = request.getParameter("t5");
	String processor1 = request.getParameter("t6");
	
	
	
	String query="update memory set type=?,company=?,memory=?,price=?,productname=?,imageurl=? where productname=?";
	try {
		DriverManager.registerDriver(new OracleDriver());
		Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","manager");
		PreparedStatement pst1=con1.prepareStatement(query);	
		//pst=con.prepareStatement("update table mobile set display='xxx' where productname='iphone 3gs'");
		pst1.setString(1, comp1);
		pst1.setString(2, product1);
		pst1.setString(3, display);
		pst1.setString(4, battery);
		pst1.setString(5, memory);
		pst1.setString(6, processor1);
		pst1.setString(7, product1);
		
	   int n=pst1.executeUpdate();
	    pst1.close();
	    con1.close();
		
		if(n>0){
			%>
			
			<jsp:forward page="AIndex.jsp" />
			<%
		}
}
	catch (SQLException se) {
		System.out.println("sql exception has occuttreee " + se);
	}
%>

</body>
</html>