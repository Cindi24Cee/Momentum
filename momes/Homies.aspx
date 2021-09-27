<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homies.aspx.cs" Inherits="momes.Homies" %>

<!DOCTYPE html>
<html runat="server">
<head >
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Momentum Car Rentals</title>
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
  <!--  header-section start  -->
  <header class="header-section header-section--style2">
    <div class="header-bottom">
      <div style="padding-left:600px;" class="container">
        <nav  class="navbar navbar-expand-lg p-0">
          
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="menu-toggle"></span>
          </button>
          <div style="float:right" class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul style="color:orangered;" class="navbar-nav main-menu mr-auto">
                
              <li >
                  <a style="font-size:20px; color:#F94001;" href="Homies.aspx">Home</a>                
              </li>
                 <li>
                     <a style="font-size:20px; color:#F94001;" href="Reservation.aspx">Reservation</a>               
              </li>
              <li class="menu_has_children"><a style="font-size:20px; color:#F94001;" href="Home.aspx">About</a>
                   <ul class="sub-menu">
                  <li><a href="Contact_Us.aspx">Contact Us</a></li>
                 
                </ul>
              <li  class="menu_has_children"><a style="font-size:20px; color:#F94001;" href="#0">cars</a>
                <ul class="sub-menu">
                  <li><a style="font-size:20px; color:#F94001;" href="Search.aspx">View Cars</a></li>
                  <li><a style="font-size:20px; color:#F94001;" href="Reservation.aspx">Book Car</a></li>
                </ul>
              </li>
             
              
            </ul>
            
          </div>
        </nav>
      </div>
    </div><!-- header-bottom end -->
  </header>
  <!--  header-section end  -->

  <!-- banner-section start  -->
  <section class="banner-section banner-section--style2 bg_img" data-background="assets/images/banner.jpg">
    <div class="banner-el-img"><img src="assets/images/young-businessman.jpg" alt="image"></div>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-5">
          <div class="car-search-area mt-0">
            <h3 class="title">Reservation</h3>
            <form class="car-search-form">
              <div class="row">
                <div class="col-xl-12 form-group">
                  <p>Choose Car Type</p>
                    <asp:DropDownList ID="ddlVehicleType"  runat="server" ></asp:DropDownList>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-xl-6">
                  <i class="fa fa-map-marker"></i>
                      <asp:DropDownList ID="ddlPick" placeholder="Pickup Location"  runat="server"></asp:DropDownList>
                   
                </div>
                <div class="form-group col-xl-6">
                  <i class="fa fa-map-marker"></i>
                      <asp:DropDownList ID="ddlDrop" placeholder="Drop Off Location" runat="server"></asp:DropDownList>
                 
                </div>
              </div>
              <div class="row">
                <div class="form-group col-xl-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtPickupDate" ForeColor="Red" runat="server" ErrorMessage="Pick Up Date Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPickupDate" TextMode="DateTimeLocal" CssClass="form-control" runat="server"></asp:TextBox>
                  
                </div>
                
              </div>
              <div class="row">
                <div class="form-group col-xl-12">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtDropOffDate" ForeColor="Red" runat="server" ErrorMessage="Pick Up Date Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtDropOffDate" CssClass="form-control" TextMode="DateTimeLocal" runat="server"></asp:TextBox>
                  
                </div>
               
              </div>
              <asp:Button  class="cmn-btn btn-radius" ID="btnBook" runat="server" Text="Book" OnClick="btnBook_Click" />
            </form>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="banner-content">
            <h1 class="title">find your own car</h1>
            
            
              <asp:Button class="cmn-btn btn-radius" ID="Button1" runat="server" Text="See Cars" OnClick="Button1_Click" />
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- banner-section end  -->

  <!-- about-section start -->
  <section class="about-section pt-120 pb-120">
    <div class="element text-center"><img src="assets/images/cars/4.png" alt="image"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-7">
          <div class="block-area">
            <div class="block-header">
              <h2 class="title"><a style="color:#F94001; ">About</a> Momentum Car Rentals</h2>
              <p> Momentum Car Rentals is a car renting company based is Randburg.We provide our customers with the best car rental services. Momentum Car Rentals is a car renting company based is Randburg.We provide our customers with the best car rental services. </p> 
           <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            <div class="block-body">
              <ul class="cmn-list">
                <li>It's cheaper.</li>
                <li>Save time.</li>
                <li>Convenience</li>
                <li>Reliable</li>
                <li>Easy Access</li>
                <li>User Friendly</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- about-section end -->

  


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