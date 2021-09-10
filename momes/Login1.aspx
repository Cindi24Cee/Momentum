<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="momes.Login1" %>

 
<!DOCTYPE html>
<html runat="server">


<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Renten - Car Rental Service HTML Template</title>

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
  <form id="form1" runat="server">   
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
              <li class="menu_has_children"><a href="#0">Home</a>
                <ul class="sub-menu">
                  <li><a href="index.html">Home One</a></li>
                  
                </ul>
              </li>
              <li><a href="about.html">About</a>
              <li class="menu_has_children"><a href="#0">cars</a>
                <ul class="sub-menu">
                  
                  <li><a href="car-list-two.html">car list</a></li>
                </ul>
              </li>
              <li class="menu_has_children"><a href="#0">pages</a>
                <ul class="sub-menu">
                  <li><a href="reservation.html">reservation</a></li>
                  <li><a href="login.html">login</a></li>
                  <li><a href="registration.html">registration</a></li>
                  <li><a href="error-404.html">404</a></li>
                </ul>
              </li>
              
              </li>
              <li><a href="contact.html">contact us</a></li>
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
          <h2 class="page-title">Sign In</h2>
          <ol class="page-list">
            <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
            <li>Sign In</li>
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
              <h3 class="title">Sign In Your Account </h3>
              <form class="login-form"> 
               <%-- <div class="frm-group text-center">
                  <a href="#0" class="facebook">facebook</a>
                  <a href="#0" class="google">google plus</a>
                  <a href="#0" class="twitter">twitter</a>
                </div>--%>
                <div class="frm-group text-center">
                 
                </div>
                <div class="frm-group">
                    <asp:Label ID="lblCustomerName"  Visible="false" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="txtEmail"   placeholder="Email Address" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox><br />&nbsp;
                </div>
                <div class="frm-group">
                    <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                 <br />&nbsp;
                </div>
                <div class="frm-group">
                <asp:Button class="cmn-btn" ID="btnLog" runat="server" Text="Sign In" OnClick="btnLog_Click" />
                </div>
              </form>
              <p><a href="CustomerRegistration.aspx">Register?</a><a href="#0">Forget password?</a></p>
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