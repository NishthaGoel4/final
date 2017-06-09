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
                        Object o=session.getAttribute("uid1");
                        if(o==null)
                        {
                        	
                        	session.invalidate();
                        	response.sendRedirect("Hospital_Login.jsp");
                        	
                        }
                        else
                        {
                        	session.setAttribute("uid1",null );
                        	session.invalidate();
                        	response.sendRedirect("Hospital_Login.jsp");
                        }
                        %>

<h3>You have successfully logout </h3><br/>
<a href="Hospital_Login.jsp">Login Again</a>
</body>
</html>