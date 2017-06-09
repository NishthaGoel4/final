<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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

String uid=request.getParameter("uname");
String pwd=request.getParameter("pwd");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	//out.println("Driver Loaded");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
	//out.println("Connection Done!");
	
	Statement st=con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from tbl_hospital");
	HttpSession session4=request.getSession(true);
	int flag=0;
	
	while(rs.next())
	{
		if(uid.equals(rs.getString(5))&&pwd.equals(rs.getString(6)))
		{
			flag=1;
			//session.setAttribute("id",rs.getInt(1));
			//session.setAttribute("uid", uid);
			session = request.getSession(true); // reuse existing
															// session if exist
															// or create one
			//session.setAttribute("user", un);
			session.setMaxInactiveInterval(3000); // 30 seconds
			//response.sendRedirect("home.jsp");
			session.setAttribute("uid1",uid);
			session.setAttribute("id1", rs.getInt(1));
			if(null!=(session4.getAttribute("errorMessage")))
			{
				session4.removeAttribute("errorMessage");
			}
			response.sendRedirect("Hospital_Home.jsp");
		}
	}
	
	if(flag==0)
	{
		 session4.setAttribute("errorMessage","Invalid user or password");
		response.sendRedirect("Hospital_Login.jsp");
	}
	

	
}
catch(Exception e)
{
	
}

%>
</body>
</html>