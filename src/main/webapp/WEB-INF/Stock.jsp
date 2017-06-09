<%@page import="java.sql.PreparedStatement"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- Title -->
        <title>Blood bank - Professional Bootstrap Template</title>
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
<div id="body-bg2">
            
            <div id="pre-header" class="container" style="height: 40px">
                <!-- Spacing above header -->
            </div>
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="logo">
                          
                                <!-- <img src="assets/img/logo.png" alt="Logo" /> -->
                                <h1><b><font size="20">Blood Bank Management System</font></b></h1>
                           
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
                                    <a href="Blood_Bank_Login.jsp">Logout</a>
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
                    <div class="container">
                        <div class="row margin-vert-30">
                            <!-- Login Box -->
                            <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
                            	<div class="login-header margin-bottom-30">
                            		<marquee><h2><font color="red"><i>Stock Details</i></font></h2></marquee>
                            	</div>

							<%
									int bb_id=(int)application.getAttribute("bb_id");
									Connection con=null;
									Statement stmt=null;
									PreparedStatement ps=null;
									ResultSet rs=null;
									
									try
									{
										Class.forName("com.mysql.jdbc.Driver");
										con=DriverManager.getConnection("jdbc:mysql://172.30.77.163:3306/test", "nishtha","goel");
									    stmt=con.createStatement();
									    
									    rs=stmt.executeQuery("SELECT * FROM tbl_stock where Blood_Bank_ID="+bb_id);
									    
									    %>
											<table border="2" >
							
										<%
									    
									    out.println("<tr>");
										out.println("<th>"+"Blood Bank ID"+"</th>");
										out.println("<th>"+"Blood Group A+"+"</th>");
										out.println("<th>"+"Blood Group A-"+"</th>");
										out.println("<th>"+"Blood Group B+"+"</th>");
										out.println("<th>"+"Blood Group B-"+"</th>");
										out.println("<th>"+"Blood Group O+"+"</th>");
										out.println("<th>"+"Blood Group O-"+"</th>");
										out.println("<th>"+"Blood Group AB+"+"</th>");
										out.println("<th>"+"Blood Group AB-"+"</th>");
										out.println("</tr>");
								
										while(rs.next())
										{
											out.println("<tr>");
								    		out.println("<td align='center'>"+rs.getInt(2)+"</td>");
								    		out.println("<td align='center'>"+rs.getInt(3)+"</td>");
								    		out.println("<td align='center'>"+rs.getInt(4)+"</td>");
								    		out.println("<td align='center'>"+rs.getInt(5)+"</td>");
								    		out.println("<td align='center'>"+rs.getInt(6)+"</td>");
								    		out.println("<td align='center'>"+rs.getInt(7)+"</td>");
								    		out.println("<td align='center'>"+rs.getInt(8)+"</td>");
								    		out.println("<td align='center'>"+rs.getInt(9)+"</td>");
								    		out.println("<td align='center'>"+rs.getInt(10)+"</td>");
								    		out.println("</tr>");
										}
										
										
										ps=con.prepareStatement("delete from dummy_bb where Blood_Bank_id=?");
										
										ps.setInt(1,bb_id);
										
										ps.executeUpdate();
										
										%>
								    	</table>
								
								    	<%
									}
									catch(Exception e)
									{
										e.printStackTrace();
									}
							
							%>
 							</div>
                            <!-- End Login Box -->
                        </div>
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
    
</body>
</html>