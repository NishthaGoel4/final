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
	con=DriverManager.getConnection("jdbc:mysql://172.30.77.163:3306/test","nishtha","goel");
	st=con.createStatement();
	rs=st.executeQuery("select * from tbl_blood_camp");
	HttpSession session2=request.getSession(true);
	int flag=0;
	while(rs.next())
	{
	    
		if(rs.getString(8).equals(uid)&&(rs.getString(9).equals(pwd)))
		{
			flag=1;
			//HttpSession session=request.getSession();
			//request.getSession().setAttribute("uid",uid);
			
			application.setAttribute("bc_id",rs.getInt(1));
			if(null!=(session2.getAttribute("errorMessage")))
			{
				session2.removeAttribute("errorMessage");
			}
			RequestDispatcher rd=request.getRequestDispatcher("Donor_Page.jsp");
			rd.forward(request, response);
			
			
			
			
			//response.sendRedirect("/Donor_Home.jsp");
			
			
		}
	}
	if(flag==0)
	{
		//session.invalidate();
        session2.setAttribute("errorMessage","Invalid user or password");
        RequestDispatcher rd = request.getRequestDispatcher("Blood_Camp_Login.jsp");
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