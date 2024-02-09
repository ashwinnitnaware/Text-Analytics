<%@ page import="java.sql.*" language="java"
  	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="com.sentimentanalysis.SentenceSplitter"%>
<%@page import="com.sentimentanalysis.TextAnalysis"%><html>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>


 
  <%!
Connection con = null;

PreparedStatement pst1 = null;

ResultSet rs1 = null;
int columnCount = 0;
float ap=0,an=0;
%>
  <%
	/*String productname = request.getParameter("productCategory");
	String Category = request.getParameter("Category");
	session.setAttribute("nameOfProduct",productname);
	
	
	String imageURL = null;
	try 
	{
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "manager");
		pst = con.prepareStatement("Select * from " + Category + " where productname =?");
		//pst = con.prepareStatement("Select * from Mobile" );

		pst.setString(1, request.getParameter("productname"));
		rs = pst.executeQuery();
		columnCount = rs.getMetaData().getColumnCount();
		if (rs.next()) 
		{
			imageURL = rs.getString("imageUrl");			
		}
	}
	catch(Exception ee)
	{
	out.println(ee.toString());
	}*/
%>
    
        <span class="main">
    </li>
    </span></div>
  <li>
    
                <div align="justify">
                    <table width="69%" border=1>
                      <tr>
                        <th class="main">UserName</th>
                        <th class="main">Comment</th>
                      </tr>
                      <%
        try
        {
        	String productname = request.getParameter("productCategory");

        	pst1 = con.prepareStatement("select * from commenttab where PNAME=?");
			//pst1.setString(1, productname);
			rs1 = pst1.executeQuery();
			int p,n,cnt;
			p=0;
			n=0;
		    cnt=1;
			while(rs1.next())
			{
			out.println("<tr><td><b>"+rs1.getString(1)+"</td><td>"+rs1.getString(2)+"</td></tr></b>");  	
			p+=rs1.getInt(4);
			n+=rs1.getInt(5);
		
		
			cnt++;
			}
			
			ap =  (float) p/cnt;
			an =  (float) n/cnt;
					
		} 
                      
        catch (Exception e) 
        {
		e.printStackTrace();
		}
        
        
      
        out.println("<tr><td><b> Average Positive : "+ap+" </b></td><td><b>Average Negative :"+an+"</b></td></tr>");  
	%>
                    </table>
    </div>
</li>

  <div align="center"></div>
