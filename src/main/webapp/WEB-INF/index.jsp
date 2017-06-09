<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Blood Bank Management System</title>
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<script src="js/modernizr.custom.js"></script>
	<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
	<div class="loader">
		<div class="project-loader">
			<div class="bubblingG">
				<span id="bubblingG_1"></span>
				<span id="bubblingG_2"></span>
				<span id="bubblingG_3"></span>
			</div>
		</div>
	</div>
	<div class="loading" id="wrapper">
		<!-- Fixed navbar -->
		<div class="navbar navbar-smak navbar-fixed-top " id="navbar" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><i class="fa fa-bars"></i></button>
					<marquee><a class="navbar-brand animate" href="#"><h1 style="color:white;">Blood Bank Management System</h1></a></marquee>
				</div>
				<div class="navbar-collapse collapse">
						<br/>
						<br/>
						<br/>
						<br/>
						<font size="4">
						<ul class="nav navbar-nav navbar-right animate">
						
						<li><a href="index.jsp"><b>Home</b></a></li>						
						<li><a href="Hospital_Login.jsp"><b>Hospital</b></a></li>
						<li><a href="Blood_Bank_Login.jsp"><b>Blood Bank</b></a></li>
						<li><a href="Blood_Camp_Login.jsp"><b>Blood Camp</b></a></li>
						<li><a href="repository.jsp"><b>Repository</b></a></li>
						</ul>
						</font>
						
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<div style="position: fixed; z-index: -99; width: 100%; height: 100%"></div>
		<section id="home" class="home home-fullscreen">
			<div class="slide text-slider-wrapper">
				<div class="container">
					<ul class="text-slider clearfix">
					<li class="clearfix">
							    
							<span class="lead">Give Blood Save Life</span> 
							
							
						</li>
					<li class="clearfix">
							  
							 <span class="lead">Check Availability</span> 
							<a href="repository.jsp" class="btn btn-primary outline-outward">Get in</a>
							
						</li>
						<li class="clearfix">
							  <!--  -->
							<span class="lead">HOSPITAL</span> 
							<a href="Hospital_Login.jsp" class="btn btn-primary outline-outward">Get in</a>
							
						</li>
						<li class="clearfix">
							<span class="lead">Blood Banks</span>
							<a href="Blood_Bank_Login.jsp" class="btn btn-primary outline-outward">Get in</a>
						</li>
						<li class="clearfix">
							<span class="lead">Blood Camp</span>
							<a href="Blood_Camp_Login.jsp" class="btn btn-primary outline-outward">Get in</a>
						</li>
					</ul>
				</div>
			</div>
			<a href="index.jsp" class="go-to godown">
				<span>
					<span class="fa fa-angle-double-down fa-2x"></span>
					<span class="fa fa-angle-double-down fa-2x"></span>
					<span class="fa fa-angle-double-down fa-2x"></span>
					<span class="fa fa-angle-double-down fa-2x"></span>
					<span class="fa fa-angle-double-down fa-2x"></span>
				</span>
			</a>
		</section>
		<section id="services" class="gray">
			<div class="container pad-bot-50">
				<div class="heading">
					<div>Our services For</div>
					<h1>Hospitals</h1>
					<div class="divider"><span></span></div>
					<p>We provide blood to Hospitals. This is A 24 * 7 online platform where hospitals can check for the availability of blood in different blood banks and order the blood when needed... </p>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="service-item fadeInDown">
							<div class="circle circle-l"><i class="fa fa-css3 fa-3x"></i></div>
							<h3>Registration For Hospital</h3>
							<p class="font-m">Register to our website and get access to multiple blood banks and their respective availability of blood of different blood groups.. </p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="service-item fadeInUp">
							<div class="circle circle-l"><i class="fa fa-pencil fa-3x"></i></div>
							<h3>24*7 Support</h3>
							<p class="font-m">We provide 27*7*365 days support to our client..</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="service-item fadeInDown">
							<div class="circle circle-l"><i class="fa fa-camera fa-3x"></i></div>
							<h3>Less PaperWork</h3>
							<p class="font-m">Less Paper Work for Hospitals , so as they will be utilize their resources more on Patients</p>
						</div>
					</div>
					
				</div>
			</div>
			<div class="branded-section process">
				<div class="masked">
					<div class="container">
						<div class="heading">
							<h3 class="primary-color">How we do it</h3>
							<p>We are the online platform which is connected to various blood bank, blood camps as well as Hospitals so that they can interact with each other at any moment. </p>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="process-item ">
									<i class="	fa fa-floppy-o fa-3x"></i>
									<h3>Online Blood Banks Repository</h3>
									<p class="font-m">Our Website Provides dedicated servers which maintains the database of blood banks as well as differnt hospitals and blood camps </p>
								</div>
							</div>
							
							<div class="col-sm-6">
								<div class="process-item delay2">
									<i class="fa fa-cog fa-spin fa-3x fa-fw" aria-hidden="true"></i>
									<h3>Working</h3>
									<p class="font-m">Platform to connect the Blood Seeker and Respective sources</p>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</section>
			
			<div class="branded-section numbers">
				<div class="masked">
					<div class="container">
						<div class="heading">
							<h2>Numbers Tell All about us</h2>
							<p>Many Blood Banks,Hospitals,Blood Camps are registered with us. Have a look at these</p>
						</div>
						<div class="row">
							<div class="col-md-4">
								<div class="number-item">
									<span class="number" id="bloodbanksCounter" data-count="3" data-duration="30">3</span>
									<span class="text">Blood Banks Registered</span>
								</div>
							</div>
							<div class="col-md-4">
								<div class="number-item">
									<span class="number" id="bloodcampsCounter" data-count="7" data-duration="30">7</span>
									<span class="text">Blood Camps Registered</span>
								</div>
							</div>
							<div class="col-md-4">
								<div class="number-item">
									<span class="number" id="hospitalscounter" data-count="15" data-duration="30">15</span>
									<span class="text">Hospitals Registered</span>
								</div>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="about">
			<div class="container">
				<div class="heading">
					<div style="color: white;">About Us</div>
					<h1 style="color:white;">Who we are</h1>
					<div class="divider">
						<span></span>
					</div>
					<p style="color:white;">We provide a universal platform for all the blood donors as well as blood seekers in Pune city and area around it. User has to register himself/herself so as to buy the blood. We are connected to many blood banks so sources are plenty for blood of any blood group</p>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="about-item">
							<div class="circle pull-left">
								<i class="fa fa-clock-o"></i>
							</div>
							<h4 style="color: black;">Current Repository Updates</h4>
							<p class="font-m" style="color:black; ">The Repository of all blood banks is updated everyday so user gets real time repository update.</p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="about-item delay2">
							<div class="circle pull-left">
								<i class="fa fa-rocket"></i>
							</div>
							<h4 style="color: black;">Registration Module</h4>
							<p class="font-m" style="color: black;">Module to Register the blood camp user so in case of emergency, if the blood of specific blood group is not available then user can get the details of users .</p>
						</div>
					</div>
					
					
				</div>
			</div>
			<div class="branded-section skills">
				<div class="masked">
					<div class="container">
						<div class="heading">
							<h2>Project Implementation</h2>
							<p>This project is Implemented using JAVA(JSP and Servlet) as controllers while on backend MYSQL is used. The Representation of website is done using BootStrap</p>
						</div>
						<div class="row">
							<div class="col-sm-3">
								<div class="chart">
									<div class="skill" data-percent="80">
										<span class="percent">75%</span>
									</div>
									<h3>JSP &amp; Servlet</h3>
								</div>
							</div>
							<div class="col-sm-3 ">
								<div class="chart">
									<div class="skill" data-percent="5">
										<span class="percent">10%</span>
									</div>
									<h3>MYSQL</h3>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="chart">
									<div class="skill" data-percent="5">
										<span class="percent">5%</span>
									</div>
									<h3>Java Script</h3>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="chart">
									<div class="skill" data-percent="10">
										<span class="percent">10%</span>
									</div>
									<h3>BootStrap</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<section id="contact" class="gray">
			<div class="container">
				<div class="heading">
					<div>Contact Us</div>
					<h1 style="color: black;">Where you can find us</h1>
					<div class="divider">
						<span></span>
					</div>
					<p style="color: black;">For any further enquiry contact us on below mentioned address and feel free to contact us. We would love to hear from you</p>
				</div>
				<div class="row">
					<div class="col-md-4 adress-element ">
						<i class="fa fa-home fa-2x"></i>
						<h3 style="color: black;">Our Address</h3>
						<span class="font-l" style="color: black;">Give Blood Save Life, Aundh, Pune</span>
					</div>
					<div class="col-md-4 adress-element delay2">
						<i class="fa fa-comment fa-2x"></i>
						<h3 style="color: black;">Our Mail</h3>
						<span class="font-l" style="color: black;">info@gbslbloodbank.com</span>
					</div>
					<div class="col-md-4 adress-element delay4">
						<i class="fa fa-phone fa-2x"></i>
						<h3 style="color: black;">Our Contact</h3>
						<span class="font-l" style="color: black;">+91 7276877332</span>
					</div>
				</div>
			</div>
			
		</section>
		<footer>
			<div class="container">
				<p>&copy; Copyright <a href="http://graphberry.com?ref=smak">gbslbloodbank.com</a> 2017 All rights reserved</p>
				
				<a href="#home" class="square-l goup" style="position: relative">
					<span>
						<span class="fa fa-angle-double-up fa-2x"></span>
						<span class="fa fa-angle-double-up fa-2x"></span>
						<span class="fa fa-angle-double-up fa-2x"></span>
						<span class="fa fa-angle-double-up fa-2x"></span>
						<span class="fa fa-angle-double-up fa-2x"></span>
					</span>
				</a>
			</div>
		</footer>
	</div>
	<!-- Load all javascript files -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.js"></script>
	<script type="text/javascript" src="js/jquery.label_better.js"></script>
	<script type="text/javascript" src="js/jquery.mixitup.js"></script>
	<script type="text/javascript" src="js/jquery.easypiechart.js"></script>
	<script type="text/javascript" src="js/jquery.inview.js"></script>
	<script type="text/javascript" src="js/countUp.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script src="js/grid.js"></script>
	<script>
	$(function() {
		Grid.init();
	});
	</script>
</body>
</html>
