<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int bb_id=(int)application.getAttribute("bb_id");
	int ap=(int)application.getAttribute("ap");
	int an=(int)application.getAttribute("an");
	int bp=(int)application.getAttribute("bp");
	int bn=(int)application.getAttribute("bn");
	int op=(int)application.getAttribute("op");
	int on=(int)application.getAttribute("on");
	int abp=(int)application.getAttribute("abp");
	int abn=(int)application.getAttribute("abn");
	
	int a1=0,a2=0,b1=0,b2=0,o1=0,o2=0,ab1=0,ab2=0;
	
	Connection con=null;
	Statement stmt=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
    	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
        stmt=con.createStatement();
        rs=stmt.executeQuery("SELECT * FROM tbl_stock where Blood_Bank_ID="+bb_id);
    	while(rs.next())
    	{
    		a1=rs.getInt(3)+ap;
    		a2=rs.getInt(4)+an;
    		b1=rs.getInt(5)+bp;
    		b2=rs.getInt(6)+bn;
    		o1=rs.getInt(7)+op;
    		o2=rs.getInt(8)+on;
    		ab1=rs.getInt(9)+abp;
    		ab2=rs.getInt(10)+abn;
    	}
    	
    	ps=con.prepareStatement("update tbl_stock set A_p = ?,A_n = ?,B_p = ?,B_n = ?,O_p = ?,O_n = ?,AB_p = ?,AB_n = ? where Blood_Bank_ID="+bb_id);
   		ps.setInt(1,a1);
   		ps.setInt(2,a2);
   		ps.setInt(3,b1);
   		ps.setInt(4,b2);
   		ps.setInt(5,o1);
   		ps.setInt(6,o2);
   		ps.setInt(7,ab1);
   		ps.setInt(8,ab2);
   		int i=ps.executeUpdate();
   		
   		
   		
   		if(i==1)
   		{
   			
   			response.sendRedirect("Stock.jsp");
   			
   		}
   		else
   		{
 
   			response.sendRedirect("Blood_Bank_Repository.jsp");
   		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>