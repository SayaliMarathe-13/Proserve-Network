<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Model.User" %>
    <%
    User user = (User)request.getAttribute("user");
    %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>User Dashboard</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
       <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
      
      <!-- site icon -->
      <link rel="icon" href="./resources1images/fevicon.png" type="./resources1/image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="./resources1/css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="./resources1/style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="./resources1/css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="./resources1/css/colors.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="./resources1/css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="./resources1/css/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="./resources1/css/custom.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   
   <body class="dashboard dashboard_1">
      <div class="full_container">
         <div class="inner_container">
            <!-- Sidebar  -->
            <nav id="sidebar">
               <div class="sidebar_blog_1">
                  <div class="sidebar-header">
                     <div class="logo_section">
                        <a href="index.html"><img class="logo_icon img-responsive" src="./resources1/images/logo/logo_icon.png" alt="#" /></a>
                     </div>
                  </div>
                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_img"><img class="img-responsive" src="./resources1/images/layout_img/Sayali_logo.png" alt="#" /></div>
                        <div class="user_info">
                           <h6>Hey <%= (user != null) ? user.getName() : "User" %></h6>

                           <p><span class="online_animation"></span> Online</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="sidebar_blog_2">
                  <h4>General</h4>
                  <ul class="list-unstyled components">
                     <li class="active">
                        <a href="/ProServe_Network/userDashboard"  aria-expanded="false" ><i class="fa fa-dashboard yellow_color"></i> <span>Dashboard</span></a>
                     </li>
                    
                     <li class="nav-item dropdown">
					   <a class="nav-link dropdown-toggle" href="/ProServe_Network/userOwnOrders" id="elementsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					      <i class="fa fa-diamond purple_color"></i> <span>My Own Orders</span>
					   </a>
					   
					</li>
                     <li>
                        <a href="/ProServe_Network/userApprovedOrders">
                        <i class="fa fa-paper-plane red_color"></i> <span>Approved Orders</span></a>
                     </li>
                      <li><a href="/ProServe_Network/userDisapprovedOrders"><i class="fa fa-briefcase blue1_color"></i> <span>Disapproved Orders</span></a></li>
                     
                     
            </nav>
            <!-- end sidebar -->
            <!-- right content -->
            <div id="content">
               <!-- topbar -->
               <div class="topbar">
                  <nav class="navbar navbar-expand-lg navbar-light">
                     <div class="full">
                        <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
          
                        <div class="right_topbar">
                           <div class="icon_info">
                              <ul>
                                 <li><a href="#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>
                                 <li><a href="#"><i class="fa fa-question-circle"></i></a></li>
                                 <li><a href="#"><i class="fa fa-envelope-o"></i><span class="badge">3</span></a></li>
                              </ul>
                              <ul class="user_profile_dd">
                                 <li>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="/ProServe_Network/userLogout"><img class="img-responsive rounded-circle" src="images/layout_img/user_img.jpg" alt="#" /><span class="name_user">Logout</span></a>
                                    <div class="dropdown-menu">
                                       <a class="dropdown-item" href="profile.html">My Profile</a>
                                       <a class="dropdown-item" href="settings.html">Settings</a>
                                       <a class="dropdown-item" href="help.html">Help</a>
                                       <a class="dropdown-item" href="#"><span>Log Out</span> <i class="fa fa-sign-out"></i></a>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </nav>
               </div>
               <!-- end topbar -->
               <!-- dashboard inner -->
               
<div class="dashboard_inner">
    <div class="row">
        <div class="col-lg-12">
            <div class="dashboard_navigationbar">
                <div class="d-flex">
                    <div class="breadcrumb_navigation">
                        <ul class="breadcrumb">
                          <div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>WELCOME <%= (user != null) ? user.getName() : "User" %></h2>

                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row column4 graph">
                        <!-- Gallery section -->
                        <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                               <div class="heading1 margin_0">
                               <h1 style="text-align: center !important">Our Provided Services</h1>
                                 </div>
		                              </div>
                              <div class="full gallery_section_inner padding_infor_info">
                                 <div class="row">
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="/ProServe_Network/categorizedProvidersDashboard?category=electrician"><img class="img-responsive" src="./resources1/images/layout_img/g2.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Electrician</h4>
                                       </div>
                                    </div>
                                   
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="/ProServe_Network/categorizedProvidersDashboard?category=plumbing"><img class="img-responsive" src="./resources1/images/layout_img/g1.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Plumbing</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="/ProServe_Network/categorizedProvidersDashboard?category=carpenter"><img class="img-responsive" src="./resources1/images/layout_img/g7.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Carpentery</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="/ProServe_Network/categorizedProvidersDashboard?category=interior"><img class="img-responsive" src="./resources1/images/layout_img/g8.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Interior</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="/ProServe_Network/categorizedProvidersDashboard?category=cleaner"><img class="img-responsive" src="./resources1/images/layout_img/g9.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Cleaning</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="/ProServe_Network/categorizedProvidersDashboard?category=maid"><img class="img-responsive" src="./resources1/images/layout_img/g10.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Maid</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="/ProServe_Network/categorizedProvidersDashboard?category=motorwash"><img class="img-responsive" src="./resources1/images/layout_img/g11.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Motor Wash</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="./resources1/images/layout_img/g12.jpg"><img class="img-responsive" src="./resources1/images/layout_img/g12.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>ChildMinder(Nanny)</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="./resources1/images/layout_img/g13.jpg"><img class="img-responsive" src="./resources1/images/layout_img/g13.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Cook</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="./resources1/images/layout_img/g14.jpg"><img class="img-responsive" src="./resources1/images/layout_img/g14.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Sed ut perspiciatis</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="./resources1/images/layout_img/g15.jpg"><img class="img-responsive" src="./resources1/images/layout_img/g15.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Sed ut perspiciatis</h4>
                                       </div>
                                    </div>
                                    <div class="col-sm-4 col-md-3 margin_bottom_30">
                                       <div class="column">
                                          <a data-fancybox="gallery" href="./resources1/images/layout_img/g16.jpg"><img class="img-responsive" src="./resources1/images/layout_img/g16.jpg" alt="#" /></a>
                                       </div>
                                       <div class="heading_section">
                                          <h4>Sed ut perspiciatis</h4>
                                       </div>
                                    </div>
                                   
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Table for Pending Service Providers -->
    
<!-- end dashboard inner -->
               
               <!-- end dashboard inner -->
            </div>
         </div>
      </div>
      <!-- jQuery -->
      <script src="./resources1js/jquery.min.js"></script>
      <script src="./resources1js/popper.min.js"></script>
      <script src="./resources1js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="./resources1js/animate.js"></script>
      <!-- select country -->
      <script src="./resources1js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="./resources1js/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="./resources1js/Chart.min.js"></script>
      <script src="./resources1js/Chart.bundle.min.js"></script>
      <script src="./resources1js/utils.js"></script>
      <script src="analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="./resources1js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="custom.js"></script>
      <script src="/chart_custom_style1.js"></script>
   </body>
</html>