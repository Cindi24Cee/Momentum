<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Management.aspx.cs" Inherits="momes.Admin_Management1" %>

<!DOCTYPE html>
<html runat="server">


<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Momentum Car Rental </title>

  <!-- site favicon -->
  <link rel="shortcut icon" type="image/png" href="assets/images/Logo.png"/>
  <!-- fontawesome css link -->
  <link rel="stylesheet" href="assets/css/fontawesome.min.css">
  <!-- bootstrap css link -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <!-- lightcase css link -->
  <link rel="stylesheet" href="assets/css/lightcase.css">
  <!-- animate css link -->
  <link rel="stylesheet" href="assets/css/animate.css">
  <!-- nice select css link -->
  <link rel="stylesheet" href="assets/css/nice-select.css">
  <!-- datepicker css link -->
  <link rel="stylesheet" href="assets/css/datepicker.min.css">
  <!-- wickedpicker css link -->
  <link rel="stylesheet" href="assets/css/wickedpicker.min.css">
  <!-- jquery ui css link -->
  <link rel="stylesheet" href="assets/css/jquery-ui.min.css">
  <!-- owl carousel css link -->
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
  <!-- main style css link -->
  <link rel="stylesheet" href="assets/css/main.css">
</head>
<body>
  <form id="form2" runat="server">   
  <!-- preloader start -->
  <div id="preloader"></div>
  <!-- preloader end -->   

  <!--  header-section start  -->
  <header class="header-section">
    <div class="header-top">
      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-lg-12">
            <ul class="header-info d-flex justify-content-center">
              <ul class="header-info d-flex justify-content-center">
                <h1 style="color: aliceblue;">  Momentum Car Rentals </h1> 
              </ul>
          </div>
          <div class="col-lg-3">
            <div class="header-action d-flex align-items-center justify-content-end">
              <div class="lag-select-area">
               
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-bottom">
      <div class="container">
        <nav class="navbar navbar-expand-lg p-0">
          <a class="site-logo site-title" href="index.html"><img src="assets/images/Logo.png" height="120" width="100" alt="site-logo"><span class="logo-icon"><i class="flaticon-fire"></i></span></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="menu-toggle"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav main-menu mr-auto">
              <li class="menu_has_children"><a href="#0">Bookings</a>
                <ul class="sub-menu">
                  <li><a href="reservation.html">Manage</a></li>
                  
                </ul>
              </li>

                 <li class="menu_has_children"><a href="#0">Customer</a>
                <ul class="sub-menu">
                  <li><a href="reservation.html">Manage</a></li>
                  
                </ul>
              </li>
              <li class="menu_has_children"><a href="#0">Branches</a>
                <ul class="sub-menu">
                  <li><a href="Manage_Branches.aspx">Manage</a></li>
                  
                </ul>
              </li>
              <li class="menu_has_children"><a href="#0">Brands</a>
                <ul class="sub-menu">
                  <li><a href="Manage_Brand.aspx">Manage</a></li>
                 
                
                </ul>
              </li>
              <li class="menu_has_children"><a href="#0">Vehicle Type</a>
                <ul class="sub-menu">
                  <li><a href="Manage_Vehicle_Type.aspx">Manage</a></li>
                  
                
                </ul>
              </li>
              <li class="menu_has_children"><a href="#0">Vehicle</a>
                <ul class="sub-menu">
                  <li><a href="reservation.html">Add</a></li>
                  <li><a href="login.html">Update</a></li>
                  <li><a href="Registration.aspx">Delete</a></li>
                
                </ul>
              </li>
              <li>   </li>
            </ul>
          </div>
        </nav>
      </div>
    </div><!-- header-bottom end -->
  </header>
  <!--  header-section end  -->

  <!-- inner-apge-banner start -->
  <section class="inner-page-banner bg_img overlay-3" data-background="assets/images/inner-page-bg.jpg">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="page-title">Registration</h2>
          <ol class="page-list">
            <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
            <li>Registration</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
  <!-- inner-apge-banner end -->

  <!-- login-section start -->
  <section class="login-section pt-120 pb-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="login-block text-center">
            <div class="login-block-inner">
              <h1 style="color:orange" class="title">Admin Management</h1>
             
                <div class="row">
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                
                                <a href="Manage_Vehicle_Type.aspx" class="btn btn-primary">Manage Vehicle Types</a>
                            </div>
                        </div>
                    </div>

                     <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                
                                <a href="#" class="btn btn-primary">Manage Bookings</a>
                            </div>
                        </div>
                    </div>


                     <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                               
                                <a href="Manage_Branches.aspx" class="btn btn-primary">Manage Branches</a>
                            </div>
                        </div>
                    </div>
                </div>

                  <br />

                  <div class="row">
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <a href="#" class="btn btn-primary">Manage  Customers</a>
                            </div>
                        </div>
                    </div>

                     <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <a href="Manage_Brand.aspx" class="btn btn-primary">Manage Vehicle Brands</a>
                            </div>
                        </div>
                    </div>


                     <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <a href="Vehicle_Management.aspx" class="btn btn-primary">Manage Vehicles</a>
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
  <!-- login-section end -->

  <!-- footer-section start -->
  <!-- footer-section end -->
  
  <!-- scroll-to-top start -->
  <div class="scroll-to-top">
    <span class="scroll-icon">
      <i class="fa fa-rocket"></i>
    </span>
  </div>
  <!-- scroll-to-top end -->

  <!-- jquery js link -->
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <!-- jquery migrate js link -->
  <script src="assets/js/jquery-migrate-3.0.0.js"></script>
  <!-- bootstrap js link -->
  <script src="assets/js/bootstrap.min.js"></script>
  <!-- lightcase js link -->
  <script src="assets/js/lightcase.js"></script>
  <!-- wow js link -->
  <script src="assets/js/wow.min.js"></script>
  <!-- nice select js link -->
  <script src="assets/js/jquery.nice-select.min.js"></script>
  <!-- datepicker js link -->
  <script src="assets/js/datepicker.min.js"></script>
  <script src="assets/js/datepicker.en.js"></script>
  <!-- wickedpicker js link -->
  <script src="assets/js/wickedpicker.min.js"></script>
  <!-- owl carousel js link -->
  <script src="assets/js/owl.carousel.min.js"></script>
  <!-- jquery ui js link -->
  <script src="assets/js/jquery-ui.min.js"></script>
  <!-- main js link -->
  <script src="assets/js/main.js"></script>
      </form>
</body>

</html>
