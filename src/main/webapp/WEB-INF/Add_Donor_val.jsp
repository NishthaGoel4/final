<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
	int a=(int)application.getAttribute("bc_id");
	
	
	
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String add=request.getParameter("add");
	String bloodgroup=request.getParameter("bloodgroup");
	String cntno=request.getParameter("cntno");
	String dod=request.getParameter("dod");
	
	
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try
	{
		Date date=new Date(new SimpleDateFormat("yyyy-MM-dd").parse(dod).getTime());
		
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/test";
		con=DriverManager.getConnection(url,"root","root");	
		String sql="insert into tbl_donor (Blood_Camp_Id,First_Name,Last_Name,Address,Blood_Group,Contact_Number,Date_of_Donation) values(?,?,?,?,?,?,?)";
		ps=con.prepareStatement(sql);
		
		//SimpleDateFormat sdm=new SimpleDateFormat();
		//Date d=sdm.parse(dod);
		//java.sql.Date g=new java.sql.Date(//d.getTime());
		
		ps.setInt(1,a);
		ps.setString(2,fname);
		ps.setString(3,lname);
		ps.setString(4,add);
		ps.setString(5,bloodgroup);
		ps.setString(6,cntno);
		ps.setDate(7,date);
		//out.println("Welcome");
		
   		ps.executeUpdate();
   		response.sendRedirect("Donor_Page.jsp");
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