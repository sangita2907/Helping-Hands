<!DOCTYPE html>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="ngo.com.bo.Donation" %>
<%@page import="ngo.com.bo.User" %>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Helping Hands|Donations</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>

        <!-- Bootsrap -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">


        <!-- Font awesome -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- PrettyPhoto -->
        <link rel="stylesheet" href="assets/css/prettyPhoto.css">

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
                  
                  <a class="navbar-brand" href="index.jsp">Helping hands</a>
                  
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
                    <li><a href="about.jsp">ABOUT</a></li>
                    <li><a href="gallery.jsp">GALLERY</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                    <%if(user != null){%>
                    	<li class="has-child"><a class="is-active" href="#"><%=user.getName().toUpperCase() %></a>
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
    
    <h2 class="title-style-1">
    	Your Donations
    	<span class="title-under">	
    	</span>
    </h2>
    <div class="container">
   		<table class="table">
  			<thead>
			    <tr>
			      <th scope="col">Category</th>
			      <th scope="col">Name</th>
			      <th scope="col">E-mail</th>
			      <th scope="col">Contact Number</th>
			      <th scope="col">Address</th>
			      <th scope="col">Donation Details</th>
			    </tr>
 			</thead>
  			<tbody>
			  	<% List<Donation> donationList = (List<Donation>)request.getAttribute("donationList"); %>
			  	<%if(user.getRole().equals("admin")){ %>
				    <% for(Donation donation : donationList){%>
					    <tr>
					      <td><%=donation.getCategory() %></td> 
					      <td><%=donation.getFirstName()+" "+ donation.getLastName() %></td>
					      <td><%=donation.getEmail() %></td>
					      <td><%=donation.getPhoneNumber() %></td>
					      <td><%=donation.getAddress() %></td>
					      <td><%=donation.getItemDetails() %></td>
					    </tr>
	    			<%} %>
	    		<%}else{ %>
	    			 <% for(Donation donation : donationList){%>
	    				<% if(user.getEmail().equals(donation.getEmail())){ %>
	    					<tr>
						      <td><%=donation.getCategory() %></td> 
						      <td><%=donation.getFirstName()+" "+ donation.getLastName() %></td>
						      <td><%=donation.getEmail() %></td>
						      <td><%=donation.getPhoneNumber() %></td>
						      <td><%=donation.getAddress() %></td>
						      <td><%=donation.getItemDetails() %></td>
						    </tr>
	    				<% } %>
	    			<%} %>
	    		<% } %>
  			</tbody>
		</table>
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
                                    <strong>Sadaka</strong> ipsum dolor sit amet, consectetur adipiscing elit. Ut at eros rutrum turpis viverra elementum semper quis ex. Donec lorem nulla, aliquam quis neque vel, maximus lacinia urna.
                                </p> 

                                <p>
                                    ILorem ipsum dolor sit amet, consectetur adipiscing elit. Ut at eros rutrum turpis viverra elementum semper quis ex. Donec lorem nulla, aliquam quis neque vel, maximus lacinia urna.
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

                                        20 Surprise Eggs, Kinder Surprise Cars 2 Thomas Spongebob Disney Pixar  http://t.co/fTSazikPd4 

                                    </li>

                                    <li class="tweet"> 

                                        20 Surprise Eggs, Kinder Surprise Cars 2 Thomas Spongebob Disney Pixar  http://t.co/fTSazikPd4 

                                    </li>

                                    <li class="tweet"> 

                                        20 Surprise Eggs, Kinder Surprise Cars 2 Thomas Spongebob Disney Pixar  http://t.co/fTSazikPd4 

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
                                    
                                    <form action="php/mail.php" class="ajax-form">

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
                                        
                                    </form>

                                </div>
                            </div>
                            
                        </div>

                    </div>
                    <div class="clearfix"></div>



                </div>
                
                
            </div>

            
        </div>

        <div class="footer-bottom">

            <div class="container text-right">
                Sadaka @ copyrights 2015 - by <a href="http://www.ouarmedia.com" target="_blank">Ouarmedia</a>
            </div>
        </div>
        
    </footer>
</body>
</html>