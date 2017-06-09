<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- === BEGIN HEADER === -->

<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>Blood Bank Management System</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=PT+Sans" type="text/css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="body-bg">
          
            <div id="pre-header" class="container" style="height: 40px">
                <!-- Spacing above header -->
            </div>
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="logo">
                          <marquee scrollamount="20">
                              <h1 style="color: white;"><b><font size="20">Blood Bank Management System</font></b></h1>
                              </marquee>
                        </div>
                        <!-- End Logo -->
                    </div>
                </div>
            </div>
            <!-- Top Menu -->
            <div id="hornav" class="container no-padding">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <div class="text-center visible-lg">
                            <ul id="hornavmenu" class="nav navbar-nav">
                                <li>
                                    <a href="index.jsp" class="fa-home">Home</a>
                                </li>
                                
                                <li>
                                    <span class="fa-copy">Pages</span>
                                    <ul>
                                       <li>
                                            <a href="pages-about-us.html">About Us</a>
                                        </li>
                                       
                                        <li>
                                            <a href="pages-faq.html">F.A.Q.</a>
                                        </li>
                                       
                                       <li>
                                            <a href="Hospital_Login.jsp">Login for Hosptial</a>
                                        </li>
                                        <li>
                                            <a href="Blood_Bank_Login.jsp">Login Blood Bank</a>
                                        </li>
                                        <li>
                                            <a href="Blood_Camp_Login.jsp">Login Blood Camp</a>
                                        </li>
                                        <li>
                                            <a href="pages-sign-up.html">Sign-Up for Hospital</a>
                                        </li>
                                         <li>
                                            <a href="Blood_Camp_Registration.html">Sign-Up for Blood Camp</a>
                                        </li>
                                        <li>
                                            <a href="repository.jsp">See the Repository</a>
                                        </li>
                                        </ul>
                                </li>
                                
                               
                                <li>
                                    <a href="contact.html" class="fa-comment">Contact</a>
                                </li>
                                 <li>
                                    <a href="logout.jsp">Logout</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Top Menu -->
            <div id="post_header" class="container" style="height: 40px">
                <!-- Spacing below header -->
            </div>
            <div id="content-top-border" class="container">
            </div>
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->
            <div id="content">
                <div class="container background-white">
                    <div class="row margin-vert-30">
                        <div class="col-md-12 margin-top-30">
                        
                         <%
                        Object o=session.getAttribute("uid1");
                        if(o==null)
                        {
                        	session.invalidate();
                        	response.sendRedirect("Hospital_Login.jsp");
                        	
                        }
                        else
                        {
                        
                        %>
                          <h1>Welcome <%out.println(session.getAttribute("uid1")); %></h1>
                            <h1 style="color: black;">Your Hospital ID is: <%out.println(session.getAttribute("id1")); %></h1>
                        	<%
                        	  int a=(int)session.getAttribute("id1");
                        	  String id=(String)session.getAttribute("uid1");
                        	  session.setAttribute("id1",a);
                        	  session.setAttribute("uid1",id);

                        	 
                        	String q1=request.getParameter("quantity");
                        	int quantity=Integer.parseInt(q1);
                        	session.setAttribute("quantity", q1);
                        	
                        	//out.println(quantity*800);
                        	String b_g=request.getParameter("blood_group");
                        	session.setAttribute("blood_group", b_g);
                        	String b_b_id=request.getParameter("blood_bank");
                        	int b_b_id1=Integer.parseInt(b_b_id);
                        	//out.println(b_g);
                        	out.println("<table border='2'>");
                        	//out.println(application.getAttribute("uid1"));
                        	
                        	%>
                        	
                        </div>
                    </div>
                    <hr class="short">
                            <div class="row show-grid">
                                <div class="col-md-4">
                                    <span class="show-grid-block">
                                    <h2 style="font-style: oblique; color: black;">Your Order Details:</h2>
                                    </span>
                                </div>
                                <table border="2">
                                <tr>
                                <td>Order ID</td>
                                <td>Blood Bank ID</td>
                                <td>Blood Group</td>
                                <td>Quantity</td>
                                <td>Price Per Unit</td>
                                <td>Total Cost</td>
                                </tr>
                                
                                <%
                                Random randomGenerator = new Random();
                                int orderid = randomGenerator.nextInt(1000);
                                int total=quantity*400;
                                
                                
                                out.println("<tr>");
                                out.println("<td>"+orderid+"</td>");
                                out.println("<td>"+b_b_id+"</td>");
                                out.println("<td>"+b_g+"</td>");
                                out.println("<td>"+quantity+"</td>");
                                out.println("<td>"+400+"</td>");
                                out.println("<td>"+total+"</td>");
                               // request.setAttribute("total1",total);
                               
                                out.println("</table>");
                                int qun=0;
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                PreparedStatement ps=null;
                                try
                                {
                                
                                Class.forName("com.mysql.jdbc.Driver");
                            	//out.println("Driver Loaded");
                            	
                            	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
                            	//out.println("Connection Done!");
                            	
                            	 st=con.createStatement();
                            	
                            	 rs=st.executeQuery("SELECT "+b_g+" FROM tbl_stock where Blood_Bank_ID="+b_b_id1);
                            	while(rs.next())
                            	{
                            		qun=rs.getInt(1);
                            	}
                                }
                                catch(Exception e)
                                {
                                	
                                }
                                
                                int new_Qun=qun-quantity;
                                
                                ps=con.prepareStatement("update tbl_stock set "+b_g+" = ? where Blood_Bank_ID="+b_b_id1);
                                ps.setInt(1,new_Qun);
                                int i=ps.executeUpdate();
                           		if(i==1)
                           		{
                           			//out.println("Database Has Been Updated");
                           		}
                           		else
                           		{
                           			//out.println("Not updated");
                           		}
                                %>
                                <br/>
                                <br/>
                                <%
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver");
                            	//out.println("Driver Loaded");
                            	
                            	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
                            	//out.println("Connection Done!");
                            	
                            	ps=con.prepareStatement("insert into tbl_orders values(?,?,?)");
                            	
                            	ps.setInt(1,orderid);
                            	ps.setInt(2,(int)session.getAttribute("id1"));
                            	ps.setInt(3,total);
                            	
                            	int i1=ps.executeUpdate();
                            	
                            	if(i1==1)
                            	{
                            		 try
                               	  {
                               		  Class.forName("com.mysql.jdbc.Driver");
                                     	//out.println("Driver Loaded");
                                     	
                                     	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
                                     	
                                     	
                                     	ps=con.prepareStatement("insert into tbl_order_details (Order_Id,Blood_Group,Quantity,Total,Order_Date)values(?,?,?,?,?)");
                                   		//out.println(session.getAttribute("orderid"));
                                   		//orderid=(int)session.getAttribute("orderid");
                                		//ps.setInt(1,(int)session.getAttribute("orderid"));
                                		
                                     	//out.println(session.getAttribute("blood_group"));
                                     	//ps.setString(2,(String)session.getAttribute("blood_group"));
                                     	
                                     	//out.println(session.getAttribute("quantity"));
                                     	//ps.setInt(3,(int)session.getAttribute("quantity"));
                                     	
                                     	 //out.println("Connection Done!");
                                      	ps.setInt(1,orderid);
                                      	session.setAttribute("orderid", orderid);
                                      	ps.setString(2, b_g);
                                      	ps.setInt(3,quantity);
                                      	ps.setInt(4, total);
                                      	
                                      
                                      
                                       	//out.println(total);
                                     	//out.println(application.getAttribute("t1"));
                                     	//ps.setDouble(4,total);
                                     	//Date date=new Date();
                                     	long millis=System.currentTimeMillis();
                                     	java.sql.Date date=new java.sql.Date(millis);
                                     	ps.setDate(5,date);
                                     	//out.println("Connection Done!");
                                     	int i2=ps.executeUpdate();
                                     	if(i2==1)
                                     	{
                                     		out.println("<a href='Payment.jsp'><h2 style='color: blue;''>Generate Bill</h2></a>");
                                     		//response.sendRedirect("Payment.jsp");
                                     	}
                                     	else
                                     	{
                                     		out.println("Order Generation Error");
                                     	}
                                     	
                               	  }
                               	  catch(Exception e)
                               	  {
                               		  
                               	  }
                            	}
                            	
                                }
                                catch(Exception e)
                                {
                                	
                                }
                                
                                %>
                               
                            </div>
                </div>
            </div>
           
            
            <!-- === END CONTENT === -->
            <!-- === BEGIN FOOTER === -->
            <div id="content-bottom-border" class="container">
            </div>
            <div id="base">
                <div class="container padding-vert-30 margin-top-60">
                    <div class="row">
                        <!-- Contact Details -->
                       <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Contact Details</h3>
                            <p>
                                <span class="fa-phone">Telephone:</span>(020)27483607
                                <br>
                                <span class="fa-envelope">Email:</span>
                                <a href="mailto:info@joomla51.com">gbslbloodbank@gmail.com</a>
                                <br>
                                <span class="fa-link">Website:</span>
                                <a href="http://www.joomla51.com">www.gbslbloodbank.com</a>
                            </p>
                           <p>Give Blood Save Life,
                                <br>Aundh,
                                <br>Pune,
                                <br>India</p>
                        </div>
                        <!-- End Contact Details -->
                        <!-- Sample Menu -->
                        
                        <!-- End Sample Menu -->
                        <div class="col-md-1"></div>
                        <!-- Disclaimer -->
                        
                        <!-- End Disclaimer -->
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- Footer Menu -->
            <div id="footer">
                <div class="container">
                    <div class="row">
                       
                        <div id="copyright" class="col-md-4">
                            <p class="pull-right">(c) 2017 Your Copyright Info</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Menu -->
            <!-- JS -->
            <script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- End JS -->
            <%
            }
            %>
    </body>
</html>
<!-- === END FOOTER === -->