<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="Model.ServiceProvider" %>
<%
    List<ServiceProvider> categorizedProviders = (List<ServiceProvider>) request.getAttribute("categorizedProviders");
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
      <title>Provider Dashboard</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
       <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
   
      <!-- site icon -->
      <link rel="icon" href="images/fevicon.png" type="./resources1/image/png" />
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
                           <h6><%= request.getAttribute("uname")%></h6>
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
					   <a class="nav-link dropdown-toggle" href="/ProServe_Network/approvedOrderDashboard" id="elementsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					      <i class="fa fa-diamond purple_color"></i> <span>Approved Orders</span>
					   </a>
					   
					</li>
                     <li>
                        <a href="/ProServe_Network/disapprovedOrderDashboard">
                        <i class="fa fa-paper-plane red_color"></i> <span>DisApproved Orders</span></a>
                     </li>
                      <li><a href="/ProServe_Network/userPendingOrdersDashboard"><i class="fa fa-briefcase blue1_color"></i> <span>Pending Orders</span></a></li>
                                  </ul>
               </div>
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
                                    <a class="dropdown-toggle" data-toggle="dropdown"><img class="img-responsive rounded-circle" src="images/layout_img/user_img.jpg" alt="#" /><span class="name_user">Sayali</span></a>
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
                            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page" >Pending Providers</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Table for Pending Service Providers -->
    <div class="dashboard_content">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="color: black; font-weight: bold;">Contact</th>
                                <th style="color: black; font-weight: bold;">Name</th>
                                <th style="color: black; font-weight: bold;">Email</th>
                                <th style="color: black; font-weight: bold;">Address</th>
                                <th style="color: black; font-weight: bold;">Pincode</th>
                                <th style="color: black; font-weight: bold;">Area</th>
                                <th style="color: black; font-weight: bold;">City</th>
                                <th style="color: black; font-weight: bold;">Longitude</th>
                                <th style="color: black; font-weight: bold;">Latitude</th>
                                <th style="color: black; font-weight: bold;">Category</th>
                                <th style="color: black; font-weight: bold;">Service Type</th>
                				<th style="color: black; font-weight: bold;">Open Time</th>
                				<th style="color: black; font-weight: bold;">Close Time</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Add rows dynamically with data from your Java model -->
                            <!-- Example: -->
                      				    <%
   						 for (ServiceProvider categorizedProvider : categorizedProviders) {
										%>
										<tr>
						    <td style="color: black;"> <%= categorizedProvider.getContact() %></td>
						    <td style="color: black;"><%= categorizedProvider.getName() %></td>
                             <td style="color: black;"><%= categorizedProvider.getEmail() %></td>
                                <td style="color: black;"><%= categorizedProvider.getAddress() %></td>
                                 <td style="color: black;"><%= categorizedProvider.getPincode() %></td>
                               <td style="color: black;"><%= categorizedProvider.getArea() %></td>
                             <td style="color: black;"><%= categorizedProvider.getCity() %></td>
                              <td style="color: black;"><%= categorizedProvider.getLongitude() %></td>
                             <td style="color: black;"><%= categorizedProvider.getLatitute() %></td>
                              <td style="color: black;"><%= categorizedProvider.getCategory() %></td>
                              <td style="color: black;"><%= categorizedProvider.getServiceType() %></td>
                              <td style="color: black;"><%= categorizedProvider.getOpenTime() %></td>
                              <td style="color: black;"><%= categorizedProvider.getCloseTime() %></td>
                                <td>
					            <a href="<%= request.getContextPath() %>/bookOrder/<%= categorizedProvider.getContact() %>">
					                <button class="btn btn-approved" style="background-color: green;">Book Order</button>
					            </a>
					           </td>
                            </tr>
                            <%
   							 
    						}
							%>
                            <!-- Add more rows as needed -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- end dashboard inner -->
               
               <!-- end dashboard inner -->
            </div>
         </div>
      </div>
      <!-- jQuery -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="js/animate.js"></script>
      <!-- select country -->
      <script src="js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="js/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="js/Chart.min.js"></script>
      <script src="js/Chart.bundle.min.js"></script>
      <script src="js/utils.js"></script>
      <script src="js/analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="js/custom.js"></script>
      <script src="js/chart_custom_style1.js"></script>
      <script>
    document.getElementById('bookOrderButton').addEventListener('click', function() {
        // Redirect to the "bookOrder" page
        window.location.href = '<%= request.getContextPath() %>/bookOrder %>';
    });
</script>
   </body>
</html>