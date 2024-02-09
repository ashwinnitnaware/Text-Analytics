<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"import = "java.sql.*"%>
    
    <%
    String productName = session.getAttribute("nameOfProduct").toString();
	String Category = session.getAttribute("Category").toString();
	//session.setAttribute("nameOfProduct",productName);
	//session.setAttribute("Category",Category);
	try {

		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");
        out.println("Cat = " + Category);
        out.println("Pname =" + productName);
		PreparedStatement pst = con.prepareStatement("delete from " + Category + " where PRODUCTNAME =?");
		pst.setString(1, productName);
		int n = pst.executeUpdate();
		
		
		if(n>0){
			%>
			
			<jsp:forward page="AIndex.jsp" />
			<%
		}
		
		}
		catch(Exception ee)
		{
			out.println("invalid");
		}
		
	%>	