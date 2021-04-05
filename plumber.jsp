<%@ page import="java.util.ArrayList,models.Users" %>
<!DOCTYPE html>
<html>
<head>
<title>Home Service</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Fast Service a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
</head>
<body>
<header>
	<div class="header-w3l">
	
<nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="index.jsp">Home Service</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item ">
        <a class="nav-link" href="index.jsp">Home </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.html">About</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="services.html">Services</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Professionals
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="electricion.html">ELECTRICIAN</a>
          <a class="dropdown-item" href="carpenter.html">CARPENTER</a>
          <a class="dropdown-item" href="plumber.html">PLUMBER</a>
            <a class="dropdown-item" href="painter.html">PAINTER</a>
            <a class="dropdown-item" href="fitter.html">FITTER</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="contact.html">Contact</a>
      </li>

<li class="w3">
                            <a href="#" class="nav-link" data-toggle="modal" data-target="#myModal">Login|REGISTER</a>
                        </li>

    </ul>
    </div>
</nav>

	<!-- //header -->

	<!-- banner -->
	<!-- banner-slider -->
	<div class="w3l_banner_info">
		<div class="slider1">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider1-img">
							<div class="slider_banner_info">
							
								
							</div>
						</div>
					</li>
					
					
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->
    </div>
</header>


<section class="about py-lg-5 py-md-4 py-md-3 py-2" id="about">
<div class="about py-lg-5 py-md-4 py-md-3 py-2">
<div class="container">
<h3 class="mb-lg-4 mb-md-3 mb-sm-2 mb-2">Plumber</h3>
 <% ArrayList<Users> users = (ArrayList)request.getAttribute("users"); %>
  
  <table border="1" width="90%" align="center">
      <thead>
      <tr>
        <th>Name</th>
        <th>Email</th>
          <th>Phone</th>
        <th>Addreess</th>
        <th>UserType</th>
        <th>Service</th>
      </tr>
    </thead>
          
  <% for(Users user :users){ %>
      
	<tr>
		<td><%= user.getName() %></td>
		<td><%= user.geteMail() %></td>
		<td><%= user.getPhone() %></td>
		<td><%= user.getAddress_Id() %></td>
		<td><%= user.getUser_Type_Id() %></td>
		<td><%= user.getService() %></td>
	</tr>  
  <% } %>
  </table>
<div class="w3_acd">
<h4>Why Choose Us</h4>
			<div class="w3-agileits-team-title"> 
				
				
			<div id="horizontalTab">
					<ul class=" resp-tabs-list">
					<li>
						<h5>Interior Designs</h5>
					</li>
					<li>
						<h5>Exterior Designs</h5>
					</li>
					<li>
						<h5>Gardening</h5>
					</li>
					<li>
					<h5>Roofing</h5>
					</li>
					</ul>
					<div class=" resp-tabs-container">
					<div class="tab1">
						<div class="row">
<div class="col-md-6 com-sm-6 w3three_al2">
<div class="test-wel">
						
						<p>Why HomeService</p>
						<ul>
							<li>
								<i class="fas fa-check"></i>Get Repair Done at your convenience</li>
							<li>
								<i class="fas fa-check"></i>Experienced and verified trainers</li>
							<li>
								<i class="fas fa-check"></i>Fixed price for spare parts</li>
							<li>
								<i class="fas fa-check"></i>Experienced and verified Service Man</li>
						</ul>
					</div>
</div>
<div class="col-md-6 com-sm-6 w3three_al3">
<img src="images/ab1.jpg" alt="" class="img-fluid">
</div>
</div>
					</div>
					
					<div class="tab2">
					<div class="row">
<div class="col-md-6 com-sm-6 w3three_al4">
<div class="test-wel">
						
						<p>Why HomeService</p>
						<ul>
							<li>
								<i class="fas fa-check"></i>Get Repair Done at your convenience</li>
							<li>
								<i class="fas fa-check"></i>Experienced and verified trainers</li>
							<li>
								<i class="fas fa-check"></i>Fixed price for spare parts</li>
							<li>
								<i class="fas fa-check"></i>Experienced and verified Service Man</li>
						</ul>
					</div>
</div>
<div class="col-md-6 com-sm-6 w3three_al5">
<img src="images/ab2.jpg" alt="" class="img-fluid">
</div>
</div>
					</div>
					<div class="tab3">
					<div class="row">
<div class="col-md-6 com-sm-6 w3three_al6">
<div class="test-wel">
						
						<p>Why HomeService</p>
						<ul>
							<li>
								<i class="fas fa-check"></i>Get Repair Done at your convenience</li>
							<li>
								<i class="fas fa-check"></i>Experienced and verified trainers</li>
							<li>
								<i class="fas fa-check"></i>Fixed price for spare parts</li>
							<li>
								<i class="fas fa-check"></i>Experienced and verified Service Man</li>
						</ul>
					</div>
</div>
<div class="col-md-6 com-sm-6 w3three_al7">
<img src="images/ab3.jpg" alt="" class="img-fluid">
</div>
</div>	
					</div>
					<div class="tab4">
					<div class="row">
<div class="col-md-6 com-sm-6 w3three_al8">
<div class="test-wel">
						
						<p>Why HomeService</p>
						<ul>
							<li>
								<i class="fas fa-check"></i>Get Repair Done at your convenience</li>
							<li>
								<i class="fas fa-check"></i>Experienced and verified trainers</li>
							<li>
								<i class="fas fa-check"></i>Fixed price for spare parts</li>
							<li>
								<i class="fas fa-check"></i>Experienced and verified Service Man</li>
						</ul>
					</div>
</div>
<div class="col-md-6 com-sm-6 w3three_al9">
<img src="images/ab4.jpg" alt="" class="img-fluid">
</div>
</div>
					</div>
					</div>
					
					
			</div>
	</div>
	</div>
</div>
</div>
</section>
<!-- team -->
<section class="team py-lg-5 py-md-4 py-md-3 py-2">
	<div class="team gallery-ban py-lg-5 py-md-4 py-md-3 py-2" id="team">
	<div class="container">
					<h3 class="heading mb-lg-4 mb-md-3 mb-sm-2 mb-2">Team</h3>
				<ul id="flexiselDemo1">			
					<li>
						<div class="wthree_testimonials_grid_main">
							
									<img src="images/abc.png" alt=" " class="Img-fluid" />
									<div class="teaminfo">
										<h4>xyz</h4>
										<p>Technical worker</p>
										
									</div>
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
							
									<img src="images/abc.png" alt=" " class="Img-fluid" />
									<div class="teaminfo">
										<h4>xyz</h4>
										<p>Technician</p>
										
									</div>
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
						
									<img src="images/abc.png" alt=" " class="Img-fluid" />
									<div class="teaminfo">
										<h4>xyz</h4>
										<p>Bolt fixer</p>
										
									</div>
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
						
									<img src="images/abc.png" alt=" " class="Img-fluid" />
									<div class="teaminfo">
										<h4>xyz</h4>
										<p>Wiring expert</p>
										
									</div>
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
						
									<img src="images/abc.png" alt=" " class="Img-fluid" />
									<div class="teaminfo">
										<h4>xyz</h4>
										<p>Lighting Service</p>
										
									</div>
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
						
									<img src="images/abc.png" alt=" " class="Img-fluid" />
									<div class="teaminfo">
										<h4>xyz</h4>
										<p>Bolt fixer</p>
										
									</div>
						</div>
					</li>
				</ul>
				
	</div>
	</div>
	</section>
<!-- //team -->




<!-- Contact -->
<section class="contact py-lg-5 py-md-4 py-md-3 py-2">
<div class="container py-lg-5 py-md-4 py-sm-3 py-2">
<div class="w3_mg">
<h3>Services</h3>
<p class=" my-lg-4 my-md-3 my-sm-2 my-2">Architect,
Carpenter, 
Construction and Renovation,
Electrician,
Interior Designer,
Packers & Movers,
Pest Control,
Plumber,
Bathroom Deep Cleaning,
Home Deep Cleaning,
Kitchen Cleaning,
Water Purifier Repair,
</p>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Contact
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Home Service</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="contact" id="contact">
         <div class="container">
            <h3 class="title clr">CONTACT FORM</h3>
            <div class=" contact-form">
               <form action="#" method="post">
                  <div class="row contact-bothside-agileinfo">
                     <div class="col-md-6 col-sm-6 col-xs-6 form-right form-left">
                        <input type="text" name="Name" placeholder="Name" required="">
                     </div>
                     <div class="col-md-6 col-sm-6 col-xs-6 form-right ">
                        <input type="text" name="Last name" placeholder="Last name" required="">
                     </div>
                     <div class="col-md-6 col-sm-6 col-xs-6 form-right form-left">
                        <input type="email" name="Email" placeholder="Email" required="">
                     </div>
                     <div class="col-md-6 col-sm-6 col-xs-6 form-right ">
                        <input type="text" name="phone" placeholder="Phone" required="">
                     </div>
                     <textarea name="Message" placeholder="Message" required=""></textarea>
                     <input type="submit" value="SUBMIT">
                  </div>
               </form>
            </div>
         </div>
      </div>
      </div>
      
    </div>
  </div>
</div>
</div>
</div>
</section>
<!-- /Contact -->
	
<!-- Footer-->
<section class="footer">
<div class="container">
<h3>Home Service</h3>
     <div class="wrapper">
<ul class="social-icons icon-circle icon-zoom list-unstyled list-inline"> 
<li> <a href="#"><i class="fab fa-facebook-f"></i></a></li> 
<li> <a href="#"><i class="fab fa-twitter"></i></a></li> 
<li> <a href="#"><i class="fab fa-linkedin-in"></i></a></li>
</ul>
</div>
<div class="copyright">
			<p>© Home Service</p>
			
		</div>
	</div>
</section>
<!-- /Footer-->
    <!-- bootstrap-pop-up for login and register -->
    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    Home Service
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <section>
                    <div class="modal-body">
                        <div class="loginf_module">
                            <div class="module form-module">
                                <div class="toggle">
                                    <i class="fa fa-times fa-pencil"></i>
                                    <div class="tooltip">Register</div>
                                </div>
                                <div class="form">
                                    <h3>Login to your account</h3>
                                    <form action="#" method="post">
                                        <input type="text" name="Username" placeholder="Username" required="">
                                        <input type="password" name="Password" placeholder="Password" required="">
                                        <input type="submit" value="Login">
                                    </form>
                                    <div class="cta">
                                        <a href="#">Forgot password?</a>
                                    </div>
                                </div>
                                <div class="form">
                                    <h3>Create a new account</h3>
                                    <form action="#" method="post">
                                        <input type="text" name="Username" placeholder="Username" required="">
                                        <input type="password" name="Password" placeholder="Password" required="">
                                        <input type="email" name="Email" placeholder="Email address" required="">
                                        <input type="text" name="Phone" placeholder="Phone Number" required="">
                                        <input type="submit" value="Register">
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- //bootstrap-pop-up for login and register-->

<script  src="js/jquery.min.v3.js"></script>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script> <!-- Team -->
<script  src="js/bootstrap.min.js"></script>
<script  src="js/move-top.js"></script>
<script  src="js/easing.js"></script>
<script  src="js/SmoothScroll.min.js"></script>	

	<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<!--//tabs-->
	<!--team-->
<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems:4,
									animationSpeed: 1000,
									autoPlay: false,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 1
										}, 
										landscape: { 
											changePoint:640,
											visibleItems:2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							});
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>
					
<!--team-->

   <!-- sign in and signup pop up toggle script -->
    <script>
        $('.toggle').click(function () {
            // Switches the Icon
            $(this).children('i').toggleClass('fa-pencil');
            // Switches the forms  
            $('.form').animate({
                height: "toggle",
                'padding-top': 'toggle',
                'padding-bottom': 'toggle',
                opacity: "toggle"
            }, "slow");
        });
    </script>
    <!-- sign in and signup pop up toggle script -->
	
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<script type="text/javascript">
	$(function () {
  $('[data-toggle="popover"]').popover()
})
</script> 
<!-- //scrolling script -->
<!--//start-smoth-scrolling -->


</body>
</html><html>
<head>
<title>Home service</title>
</head>
<body>
<h1>plumber Information</h1>

</body>
</html>