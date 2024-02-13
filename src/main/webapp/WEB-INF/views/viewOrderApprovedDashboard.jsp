<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.BookOrder" %>
<%
String contact = (String) request.getAttribute("contact");
List<BookOrder> viewOrders = (List<BookOrder>) request.getAttribute("BookOrderList");
List<BookOrder> filteredOrders = new ArrayList<BookOrder>();  
for (BookOrder filteredOrder : viewOrders) {
    if (contact.equals(filteredOrder.getServiceProviderContact())) 
    		{
    	filteredOrders.add(filteredOrder);
    }
}
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
      <title>Service Provider Dashboard</title>
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
                           <h6>Hey Provider</h6>
                           <p><span class="online_animation"></span> Online</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="sidebar_blog_2">
                  <h4>General</h4>
                 <ul class="list-unstyled components">
                    
                     <li>
                       <a href="/ProServe_Network/viewPendingOrder"><i class="fa fa-clock-o orange_color"></i>Pending Orders</a>

                     <li>
                        <a href="/ProServe_Network/viewOrderApproved"  aria-expanded="false" ><i class="fa fa-diamond purple_color"></i> <span>Approved Orders</span></a>
                     </li>
                     
                     <li>
                        <a href="/ProServe_Network/viewOrderDisapproved">
                        <i class="fa fa-paper-plane red_color"></i> <span>Disapproved Orders</span></a>
                     </li>
                     <li><a href="/ProServe_Network/viewTodaysOrders"><i class="fa fa-briefcase blue1_color"></i> <span>Todays orders</span></a></li>
                     <li>
                        <a href="/ProServe_Network/viewNext7DaysOrders">
                        <i class="fa fa-paper-plane red_color"></i> <span>Next 7 Days Orders</span></a>
                     </li>
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
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="/ProServe_Network/logout"><img class="img-responsive rounded-circle" src="images/layout_img/user_img.jpg" alt="#" /><span class="name_user">Logout</span></a>
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
                                <th style="color: black; font-weight: bold;">Service Provider Name</th>
                                <th style="color: black; font-weight: bold;">Service Provider Contact</th>
                                <th style="color: black; font-weight: bold;">Time</th>
                                <th style="color: black; font-weight: bold;">Date</th>
                                <th style="color: black; font-weight: bold;">Service Title</th>
                                <th style="color: black; font-weight: bold;">Service Description</th>
                                <th style="color: black; font-weight: bold;">Status</th>
                                </tr>
                        </thead>
                        <tbody>
                            <!-- Add rows dynamically with data from your Java model -->
                            <!-- Example: -->
                      				    <%
for (BookOrder order : filteredOrders) {
if("approved".equals(order.getStatus()))
{
	%>
        <tr>
            <td style="color: black;"><%= order.getContact() %></td>
            <td style="color: black;"><%= order.getUserName() %></td>
            <td style="color: black;"><%= order.getEmail() %></td>
            <td style="color: black;"><%= order.getServiceProviderName() %></td>
            <td style="color: black;"><%= order.getServiceProviderContact() %></td>
            <td style="color: black;"><%= order.getTime() %></td>
            <td style="color: black;"><%= order.getDate() %></td>
            <td style="color: black;"><%= order.getServiceTitle() %></td>
            <td style="color: black;"><%= order.getServiceDescription() %></td>
            <td style="color: black;"><%= order.getStatus() %></td>
           
        </tr>
<%
    }
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
   </body>
</html>