
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function invalid()
	{
		alert("Invalid Username/Password");
	}
</script>
</head>
<body>
<%
	
	String uid=request.getParameter("uid");
	String pwd=request.getParameter("pwd");
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
	st=con.createStatement();
	rs=st.executeQuery("select * from tbl_blood_bank");
	HttpSession session3=request.getSession(true);
	int flag=0;
	while(rs.next())
	{
	    
		if(rs.getString(4).equals(uid)&&(rs.getString(5).equals(pwd)))
		{
			flag=1;
			
			application.setAttribute("bb_id",rs.getInt(1));
			if(null!=(session3.getAttribute("errorMessage")))
			{
				session3.removeAttribute("errorMessage");
			}
			RequestDispatcher rd=request.getRequestDispatcher("Blood_Bank_Repository.jsp");
			rd.forward(request, response);
			
		}
	}
	if(flag==0)
	{
		 session3.setAttribute("errorMessage","Invalid user or password");
		RequestDispatcher rd=request.getRequestDispatcher("Blood_Bank_Login.jsp");
		rd.forward(request, response);
	}
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>	

</body>
</html>