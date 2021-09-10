<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="momes.Reservation" %>



<!DOCTYPE html>


<head runat="server">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Momentum Car Rentals</title>
  <!-- site favicon -->
  <link rel="shortcut icon"/>
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
<form id="form1" runat="server">
  <!-- preloader start -->
  <div id="preloader"></div>
  <!-- preloader end -->   

  <!--  header-section start  -->
  <header class="header-section">
    <div class="header-top">
      <div class="container">
        <div class="row align-items-center">
         
          <div class="col-lg-8">
            <ul class="header-info d-flex justify-content-center">
              <h1 style="color: aliceblue;">  Momentum Car Rentals </h1> 
            </ul>
          </div>
          <div class="col-lg-3">
            <div class="header-action d-flex align-items-center justify-content-end">
              
              </div>
              <div class="login-reg">
                  <a href="CustomerRegistration.aspx">Sign Up</a>
                  <a href="Login1.aspx">Sign in</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-bottom">
      <div class="container">
        <nav class="navbar navbar-expand-lg p-0">
          <a class="site-logo site-title" href="index.html"><img src="assets/images/Logo.png" height="130" width="100" alt="site-logo"><span class="logo-icon"><i class="flaticon-fire"></i></span></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="menu-toggle"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav main-menu mr-auto">
                <li><a href="about.html">Home</a> </li>
                  <li><a href="Reservation.aspx">Reservation</a> </li>

                  <li class="menu_has_children"><a href="#0">FLEET</a>
                      <ul class="sub-menu">
                          <li><a href="Reservation.aspx">BRANDS</a></li>
                          <li><a href="login.html">VEHICLE TYPES</a></li>

                      </ul>
                  </li>

                  <li class="menu_has_children"><a href="#0">About</a>
                      <ul class="sub-menu">
                          <li><a href="car-list-two.html">About Us</a></li>
                          <li><a href="car-list-two.html">Contact US</a></li>
                      </ul>
                  </li>
            </ul>
          </div>
        </nav>
      </div>
    </div><!-- header-bottom end -->
  </header>
  <!--  header-section end  -->

  <!-- inner-apge-banner start -->
  <section class="inner-page-banner bg_img overlay-3" data-background="assets/images/young-businessman.jpg">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="page-title">reservation</h2>
          <ol class="page-list">
            <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
            <li><a href="#0">car list</a></li>
            <li>reservation</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
  <!-- inner-apge-banner end -->

  <!-- reservation-section start -->
  <section class="reservation-section pt-120 pb-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="reservation-details-area">
            <div class="thumb">
              <img src="assets/images/cars/4.png" alt="images">
            </div>
              <form class="reservation-form">
                <div class="content-block">
               
                  <div class="row">
                    <div class="form-group col-md-6">
                      <i class="fa fa-map-marker"></i>
                        <asp:DropDownList ID="ddlBranchPick" runat="server"></asp:DropDownList>
                      
                    </div>
                    <div class="form-group col-md-6">
                      <i class="fa fa-map-marker"></i>
                     <asp:DropDownList ID="ddlBranchDrop" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group col-md-6">
                      <i class="fa fa-calendar"></i>
                      <input type='text' class='form-control has-icon datepicker-here' data-language='en' placeholder="Pickup Date">
                    </div>
                    <div class="form-group col-md-6">
                      <i class="fa fa-clock-o"></i>
                      <input type="text" name="timepicker" class="form-control has-icon timepicker" placeholder="Pickup Time">
                    </div>
                    <div class="form-group col-md-6">
                      <i class="fa fa-calendar"></i>
                      <input type='text' class='form-control has-icon datepicker-here' data-language='en' placeholder="Drop Off Date">
                    </div>
                    <div class="form-group col-md-6">
                      <i class="fa fa-clock-o"></i>

                      <input type="text" name="timepicker" class="form-control has-icon timepicker" placeholder="Drop Off Time">
                    </div>
                  </div>
                </div>
              
                <div class="content-block">
                  
                  <div class="row">
                    
                    <div class="col-lg-12">
                     
                        <asp:Button class="cmn-btn" ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
                    </div>
                  </div>


                    <div class="row">
                    
                    <div class="col-lg-12">
                     
                        
                    </div>
                  </div>
                </div>





              </form>
            </div>
          </div>
        </div>
       
           
        
        </div>
      </div>
    </div>
  </section>
  <!-- reservation-section end -->


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