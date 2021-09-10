<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="momes.CustomerRegistration" %>

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
               <li>  <h1 style="color: aliceblue;">  Momentum Car Rentals </h1>    </li>  
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
                  <li><a href="Registration.aspx">registration</a></li>
                  <li><a href="error-404.html">404</a></li>
                </ul>
              </li>
              
              </li>
              <li><a href="Contact_Us.aspx">contact us</a></li>
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
              <h3 style="color:orange" class="title">Customer Sign Up</h3>
              <form class="login-form">
               <%-- <div class="frm-group text-center">
                  <a href="#0" class="facebook">facebook</a>
                  <a href="#0" class="google">google plus</a>
                  <a href="#0" class="twitter">twitter</a>
                </div>--%>
                <div class="frm-group text-center">
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
                  <div class="frm-group">

                      <p>Full Names: </p>
                      <asp:TextBox runat="server" name="f-name" ID="txtName" placeholder="Full Names"> </asp:TextBox>

                      <br />

                      <p>Identity Name:</p>
                      <asp:TextBox runat="server" name="f-name" ID="txtID" placeholder="Identity No."> </asp:TextBox>

                      <br />
                      <p>Emails Address:  </p>
                      <asp:TextBox runat="server" name="f-name" ID="txtEmail" placeholder="Email Address"> </asp:TextBox>

                      <br />
                      <p>Password:  </p>
                      <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                      <br />
                      <p>Confirm Password:  </p>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm"  ErrorMessage="Password Does not Match"></asp:CompareValidator>
                      <asp:TextBox ID="txtConfirm" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                      <br />

                      <p>Phone No.:  </p>
                      <asp:TextBox ID="txtPhone" placeholder="Phone No" runat="server"></asp:TextBox>

                      <br />
                      <p>Age:  </p>
                      <asp:TextBox ID="txtAge" CssClass="form-control" placeholder="Age" runat="server"></asp:TextBox><br />
                      <br />

                      <p>Home Address:    </p>
                      <asp:TextBox ID="txtHome" CssClass="form-control" placeholder="Home Address" runat="server"></asp:TextBox>
                       &nbsp;
                      <p>Work Address: </p>
                      <asp:TextBox ID="txtWork" CssClass="form-control" placeholder="Word Address" runat="server"></asp:TextBox><br />
                         <div class="form-group col-md-12">
                        <!--  <i class="fa fa-calendar"></i> -->
                          <p>Date License Issued:   </p>
                          <asp:TextBox ID="txtDI" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group col-md-12">
                        <!--  <i class="fa fa-calendar"></i>  -->
                          <p>Date License Expire:    </p>
                          <asp:TextBox ID="txtEx" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>

                      </div>
                   <div class="frm-group">
                <asp:Button class="cmn-btn" ID="btnLog" runat="server" Text=" Register" OnClick="btnLog_Click" />
                </div>
              </form>
             
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