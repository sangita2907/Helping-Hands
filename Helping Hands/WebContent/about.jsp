<!DOCTYPE html>
<html class="no-js">
<%@page import="ngo.com.bo.User" %>
    <head>
        <meta charset="utf-8">
        <title>Helping Hands | About Us</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>

        <!-- Bootsrap -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Font awesome -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Template main Css -->
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!-- Modernizr -->
        <script src="assets/js/modernizr-2.6.2.min.js"></script>


    </head>
    <body>
    <!-- NAVBAR
    ================================================== -->

    <header class="main-header">
        
    
        <nav class="navbar navbar-static-top">

            <div class="navbar-top">

              <div class="container">
                  <div class="row">

                    <div class="col-sm-6 col-xs-12">

                        <ul class="list-unstyled list-inline header-contact">
                            <li> <i class="fa fa-phone"></i> <a href="tel:">+91-8481025464 </a> </li>
                             <li> <i class="fa fa-envelope"></i> <a href="mailto:sangitahalder798@gmail.com">sangitahalder798@gmail.com</a> </li>
                       </ul> <!-- /.header-contact  -->
                      
                    </div>

                    <div class="col-sm-6 col-xs-12 text-right">

                        <ul class="list-unstyled list-inline header-social">

                            <li> <a href="https://www.facebook.com/"> <i class="fa fa-facebook"></i> </a> </li>
                            <li> <a href="https://twitter.com/?lang=en"> <i class="fa fa-twitter"></i>  </a> </li>
                            <li> <a href="https://www.google.com/"> <i class="fa fa-google"></i>  </a> </li>
                            <li> <a href="https://www.youtube.com/"> <i class="fa fa-youtube"></i>  </a> </li>
                            
                       </ul> <!-- /.header-social  -->
                      
                    </div>


                  </div>
              </div>

            </div>

            <div class="navbar-main">
              
              <div class="container">

                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                  </button>
                  
                  <a class="navbar-brand" href="index.jsp">Helping Hands</a>
                  
                </div>

                <div id="navbar" class="navbar-collapse collapse pull-right">

                  <ul class="nav navbar-nav">

					 <% 
            			User user = null;
						if(session.getAttribute("user") != null){
							user = (User)session.getAttribute("user");
						}
					%>
                    <li><a href="index.jsp">HOME</a></li>
                    <li><a class="is-active"  href="about.html">ABOUT</a></li>
                    
                    <li><a href="gallery.jsp">GALLERY</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
					<%if(user != null){%>
                    	<li class="has-child"><a href="#"><%=user.getName().toUpperCase() %></a>
	                    	<ul class="submenu">
		                         <li class="submenu-item"><a href="ShowDonations">DONATIONS</a></li>
		                         <li class="submenu-item"><a href="logout">LOGOUT</a></li>
	                      	</ul>
                      	</li>
                    <%} %>
                    
                    <%if(user == null){ %>
                    	<li><a href="login.jsp">LOGIN</a></li>
                    	<li><a href="SignupPart1.jsp">SIGNUP</a></li>
                    <%} %>
                  </ul>

                </div> <!-- /#navbar -->

              </div> <!-- /.container -->
              
            </div> <!-- /.navbar-main -->


        </nav> 

    </header> <!-- /. main-header -->


	<div class="page-heading text-center">

		<div class="container zoomIn animated">
			
			<h1 class="page-title">ABOUT US <span class="title-under"></span></h1>
			<p class="page-description">
				No child should grow up alone.We can help every child to get stable, loving and nurturing environments.
			</p>
			
		</div>

	</div>

	<div class="main-container">

		<div class="container">

			<div class="row fadeIn animated">

				<div class="col-md-6">

					<img src="assets/images/about-us.jpg" alt="" class="img-responsive">

				</div>

				<div class="col-md-6">

					<h2 class="title-style-2">ABOUT Helping Hands <span class="title-under"></span></h2>

					<p>
						Our NGO Helping Hands runs orphanage all over India in different cities. It was established in 1980, with a view to taking utmost care of children without parents. The orphanage has hundreds thousands of children who are being provided with free of cost food, lodging, boarding, clothing, and education facilities along with other basic amenities of life.
					</p>

					<p>
						Around 84185 orphan children have been taken care of in different regions of India and around all over world. Our efforts, along with your support, in the form of donations for children has helped the orphan foundation to a great extent in connecting these children with mainstream society and helping them live better lives.
					</p>

					<p>
						We are more than a home for children from difficult backgrounds and unfortunate circumstances. Our children are supported and guided by family-like love and affection to grow and thrive. This forms the essence of Helping Hands, one of the most trusted NGOs in India that is located all over world. 
				    </p>
				    <p>
				    	We believe that, together, we can change the way we care for children and help to get them into stable, loving, nurturing environments.                                     
						We are uninterruptedly engaged in providing developmental services in the realm of rehabilitation and treatment to the specially abled and destitute children of the society through the execution of various free of cost services.
					</p>
					
				</div>

			</div> <!-- /.row -->

			<div class="section-home about-us">


			            <div class="row">

			                <div class="col-md-3 col-sm-6">
			                
			                  <div class="about-us-col">

			                        <div class="col-icon-wrapper">
			                          <img src="assets/images/icons/our-mission-icon.png" alt="">
			                        </div>
			                        <h3 class="col-title">our mission</h3>
			                        <div class="col-details">
			                        
			                          <p>Our mission is to provide best services to the needy peoples.</p>
			                          
			                        </div>
			                        <a href="#" class="btn btn-primary"> Read more </a>
			                    
			                  </div>
			                  
			                </div>


			                <div class="col-md-3 col-sm-6">
			                
			                  <div class="about-us-col">

			                        <div class="col-icon-wrapper">
			                          <img src="assets/images/icons/make-donation-icon.png" alt="">
			                        </div>
			                        <h3 class="col-title">Make donations</h3>
			                        <div class="col-details">

			                          <p>Donate your unneccessary things. One can be happy with our one help.</p>
			                          
			                        </div>
			                        <a href="#" class="btn btn-primary"> Read more </a>
			                    
			                  </div>
			                  
			                </div>


			                <div class="col-md-3 col-sm-6">
			                
			                  <div class="about-us-col">

			                        <div class="col-icon-wrapper">
			                          <img src="assets/images/icons/help-icon.png" alt="">
			                        </div>
			                        <h3 class="col-title">Help & support</h3>
			                        <div class="col-details">

			                          <p>Please help and support us to change the future of needy childrens.</p>
			                          
			                        </div>
			                        <a href="#" class="btn btn-primary"> Read more </a>
			                    
			                  </div>
			                  
			                </div>


			                <div class="col-md-3 col-sm-6">
			                
			                  <div class="about-us-col">

			                        <div class="col-icon-wrapper">
			                          <img src="assets/images/icons/programs-icon.png" alt="">
			                        </div>
			                        <h3 class="col-title">our programs</h3>
			                        <div class="col-details">

			                           <p>We organised various programs to reach maximum no. of people throughout the year.</p>
			                        
			                        </div>
			                        <a href="#" class="btn btn-primary"> Read more </a>
			                    
			                  </div>
			                  
			                </div>
			                

			                
			            </div> <!-- /.row -->

			      
			    </div> 

		</div> <!-- /.about-us -->


	    <div class="our-team animate-onscroll fadeIn">

	        <div class="container">

	            <h2 class="title-style-1">Our Team <span class="title-under"></span></h2>

	            <div class="row">

	                <div class="col-md-3 col-sm-6">

	                    <div class="team-member">

	                        <div class="thumnail">

	                            <img src="assets/images/team/member-1.jpg" alt="" class="cause-img">
	                            
	                        </div>



	                        <h4 class="member-name"><a href="#">S. Singh</a></h4>

	                        <div class="member-position">
	                            CO-FOUNDER
	                        </div>

	                        <div class="btn-holder">

	                          <a href="#" class="btn"> <i class="fa fa-envelope"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-facebook"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-google"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-twitter"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-linkedin"></i> </a>
	                          
	                        </div>

	                        

	                    </div> <!-- /.team-member -->
	                    
	                </div>

	                <div class="col-md-3 col-sm-6">

	                    <div class="team-member">

	                        <div class="thumnail">

	                            <img src="assets/images/team/member-3.jpg" alt="" class="cause-img">
	                            
	                        </div>



	                        <h4 class="member-name"><a href="#">Amita Singh</a></h4>

	                        <div class="member-position">
	                            CO-FOUNDER
	                        </div>

	                        <div class="btn-holder">

	                          <a href="#" class="btn"> <i class="fa fa-envelope"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-facebook"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-google"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-twitter"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-linkedin"></i> </a>
	                          
	                        </div>

	                        

	                    </div> <!-- /.team-member -->
	                    
	                </div>


	                <div class="col-md-3 col-sm-6">

	                    <div class="team-member">

	                        <div class="thumnail">

	                            <img src="assets/images/team/member-4.jpg" alt="" class="cause-img">
	                            
	                        </div>



	                        <h4 class="member-name"><a href="#">Alisa</a></h4>

	                        <div class="member-position">
	                            CO-FOUNDER
	                        </div>

	                        <div class="btn-holder">

	                          <a href="#" class="btn"> <i class="fa fa-envelope"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-facebook"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-google"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-twitter"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-linkedin"></i> </a>
	                          
	                        </div>

	                        

	                    </div> <!-- /.team-member -->
	                    
	                </div>


	                <div class="col-md-3 col-sm-6">

	                    <div class="team-member">

	                        <div class="thumnail">

	                            <img src="assets/images/team/member-2.jpg" alt="" class="cause-img">
	                            
	                        </div>



	                        <h4 class="member-name"><a href="#">B. Rawaal</a></h4>

	                        <div class="member-position">
	                            CO-FOUNDER
	                        </div>

	                        <div class="btn-holder">

	                          <a href="#" class="btn"> <i class="fa fa-envelope"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-facebook"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-google"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-twitter"></i> </a>
	                          <a href="#" class="btn"> <i class="fa fa-linkedin"></i> </a>
	                          
	                        </div>

	                        

	                    </div> <!-- /.team-member -->
	                    
	                </div>

	            </div> <!-- /.row -->

	        </div>

	    </div>
		


	</div>


    <footer class="main-footer">

        <div class="footer-top">
            
        </div>


        <div class="footer-main">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">About us <span class="title-under"></span></h4>

                            <div class="footer-content">
                                <p>
                                    <strong>Helping Hands</strong> We firmly believe that every child deserves the best chance for a bright future, which is why, we are fiercely committed to ensure that children not only survive, but thrive. With a bold ambition and a powerful vigilance, we do whatever it takes to save the children.In India and across the world, Helping Hands works on-ground every day and especially, in times of crisis. 
                                </p> 

                                <p>
                                    Our pioneering programs address children unique needs; giving them a healthy start, an opportunity to learn as well as protection from harm. 
                                </p>

                            </div>
                            
                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">LAST TWEETS <span class="title-under"></span></h4>

                            <div class="footer-content">
                                <ul class="tweets list-unstyled">
                                    <li class="tweet"> 
                                        Helping Hand proofs their statement "No child should grow up alone" by their work. -Rashmi Singh
									</li>

                                    <li class="tweet"> 

                                        Environment of Helping Hands is really great, children here are not only given food and education but also a family to ensure proper mental wellbeing. -Sakshi Sinha

                                    </li>

                                    <li class="tweet"> 
										Supporting orphaned and vulnerable children while bringing about sustainable change is done here. -Rahul Thakur 
                                    </li>

                                </ul>
                            </div>
                            
                        </div>

                    </div>


                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">Contact us <span class="title-under"></span></h4>

                            <div class="footer-content">

                                <div class="footer-form" >
                                    
                                    Helping Hands<br>Plot No. 4, Block BP-101, Anandapur, Kasba,<br> West Bengal, Kolkata 700105
                                    
                                    <!-- <form action="php/mail.php" class="ajax-form">

                                        <div class="form-group">
                                            <input type="text" name="name" class="form-control" placeholder="Name" required>
                                        </div>

                                         <div class="form-group">
                                            <input type="email" name="email" class="form-control" placeholder="E-mail" required>
                                        </div>

                                        <div class="form-group">
                                            <textarea name="message" class="form-control" placeholder="Message" required></textarea>
                                        </div>

                                        <div class="form-group alerts">
                        
                                            <div class="alert alert-success" role="alert">
                                              
                                            </div>

                                            <div class="alert alert-danger" role="alert">
                                              
                                            </div>
                                            
                                        </div>

                                         <div class="form-group">
                                            <button type="submit" class="btn btn-submit pull-right">Send message</button>
                                        </div>
                                        
                                    </form> -->

                                </div>
                            </div>
                            
                        </div>

                    </div>
                    <div class="clearfix"></div>



                </div>
                
                
            </div>

            
        </div>

        <!-- <div class="footer-bottom">

            <div class="container text-right">
                Sadaka @ copyrights 2015 - by <a href="http://www.ouarmedia.com" target="_blank">Ouarmedia</a>
            </div>
        </div> -->
        
    </footer>




       
        
        <!-- jQuery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="assets/js/jquery-1.11.1.min.js"><\/script>')</script>

        <!-- Bootsrap javascript file -->
        <script src="assets/js/bootstrap.min.js"></script>


        <!-- Template main javascript -->
        <script src="assets/js/main.js"></script>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X');ga('send','pageview');
        </script>
    </body>
</html>
