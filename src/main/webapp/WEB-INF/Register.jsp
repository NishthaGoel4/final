<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
String hospitalname=request.getParameter("hospitalname");
String hospitaladdress=request.getParameter("hospitaladdress");
String pincode=request.getParameter("pincode");
int pin=Integer.parseInt(pincode);
String uid=request.getParameter("uname");
String pwd=request.getParameter("password");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	out.println("Driver Loaded");
	
	out.println(hospitalname+"</br>");
	out.println(hospitaladdress+"</br>");
	out.println(pin+"</br>");
	out.println(uid+"</br>");
	out.println(pwd+"</br>");
	Connection con=DriverManager.getConnection("jdbc:mysql://172.30.77.163:3306/test", "nishtha","goel");
	out.println("Connection Done!");
	PreparedStatement ps=con.prepareStatement("insert into tbl_hospital (Name_of_Hospital,Address,Pincode,username,password) values(?,?,?,?,?)");
	ps.setString(1,hospitalname);
	ps.setString(2,hospitaladdress);
	ps.setInt(3,pin);
	ps.setString(4,uid);
	ps.setString(5,pwd);
	int i=ps.executeUpdate();
	if(i==1)
	{
		response.sendRedirect("Hospital_Login.jsp");
	}
	else
	{
		response.sendRedirect("pages-sign-up.html");
	}
}
catch(Exception e)
{
	
}


%>
</body>
</html>