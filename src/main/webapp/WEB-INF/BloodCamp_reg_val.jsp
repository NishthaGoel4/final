
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validation</title>
</head>
<body>
<%
	String bloodcamp=request.getParameter("bloodcamp");
	String heldby=request.getParameter("heldby");
	String add=request.getParameter("add");
	String pincode=request.getParameter("pincode");
	String date=request.getParameter("date");
	String cntno=request.getParameter("cntno");
	String uid=request.getParameter("uid");
	String pwd=request.getParameter("pwd");
	
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try
	{
		Date date1=new Date(new SimpleDateFormat("yyyy-MM-dd").parse(date).getTime());
		
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/test";
		con=DriverManager.getConnection(url,"root","root");	
		String sql="insert into tbl_blood_camp (Camp_Name,Held_By,Address,Pincode,Date,Contact_Number,Username,Password) values(?,?,?,?,?,?,?,?)";
		ps=con.prepareStatement(sql);
		
		ps.setString(1,bloodcamp);
		ps.setString(2,heldby);
		ps.setString(3,add);
		ps.setInt(4,Integer.parseInt(pincode));
		ps.setDate(5,date1);
		ps.setString(6,cntno);
		ps.setString(7,uid);
		ps.setString(8,pwd);
		
   		ps.executeUpdate();
   		

   		response.sendRedirect("Blood_Camp_Login.jsp");
   		//out.println("Welcome");
   		
   		
   		
   		//response.sendRedirect("pages-login.html");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>	



</body>
</html>