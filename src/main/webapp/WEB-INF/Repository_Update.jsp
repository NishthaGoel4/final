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

	int ap=Integer.parseInt(request.getParameter("ap"));
	int an=Integer.parseInt(request.getParameter("an"));
	int bp=Integer.parseInt(request.getParameter("bp"));
	int bn=Integer.parseInt(request.getParameter("bn"));
	int op=Integer.parseInt(request.getParameter("op"));
	int on=Integer.parseInt(request.getParameter("on"));
	int abp=Integer.parseInt(request.getParameter("abp"));
	int abn=Integer.parseInt(request.getParameter("abn"));
	int bb_id=Integer.parseInt(request.getParameter("blood_bank"));
	
	
	


	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try
	{
			
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://172.30.77.163:3306/test";
		con=DriverManager.getConnection(url,"nishtha","goel");	
		String sql="insert into dummy_bb (Blood_Bank_id,A_p,A_n,B_p,B_n,O_p,O_n,AB_p,AB_n) values(?,?,?,?,?,?,?,?,?)";
		ps=con.prepareStatement(sql);
	
		//SimpleDateFormat sdm=new SimpleDateFormat();
		//Date d=sdm.parse(dod);
		//java.sql.Date g=new java.sql.Date(//d.getTime());
	
		ps.setInt(1,bb_id);
		ps.setInt(2,ap);
		ps.setInt(3,an);
		ps.setInt(4,bp);
		ps.setInt(5,bn);
		ps.setInt(6,op);
		ps.setInt(7,on);
		ps.setInt(8,abp);
		ps.setInt(9,abn);

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