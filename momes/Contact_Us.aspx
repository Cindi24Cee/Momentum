<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_Us.aspx.cs" Inherits="momes.Contact_Us" %>


  
<!DOCTYPE html>
<html runat="server">


<head>
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
    <link href="assets/css/fontawesome-all.css" rel="stylesheet" />
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
          <a class="site-logo site-title" href="index.html"><img src="assets/images/Logo.png" height="130" width="150" alt="site-logo"><span class="logo-icon"><i class="flaticon-fire"></i></span></a><br /><br />&nbsp;
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
  <section class="inner-page-banner bg_img overlay-3" data-background="assets/images/inner-page-bg.jpg">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
            <br /><br />&nbsp;
          <h2 class="page-title">Contact </h2>
          <ol class="page-list">
            <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
            <li>Contact</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
  <!-- inner-apge-banner end -->

  <!-- login-section start -->
  <section class="login-section pt-120 pb-120">
         <div  class="Container">

                <div class="row">
                    <div class="col-md-12">
                      <div style="float:right" class="col-lg-6">
                        <h2 style="color:orange;">Contact Us</h2>
                        <h3>
                            <asp:Label ID="confirm" runat="server" Text=" "></asp:Label></h3>

                        <p>Name *</p>
                        <asp:TextBox ID="txtName" runat="server" Required="required"></asp:TextBox>

                        <p>Email *</p>
                        <asp:TextBox ID="txtEmail" runat="server" Required="required"></asp:TextBox>

                        <p>Phone *</p>
                        <asp:TextBox ID="txtMobile" runat="server" Required="required"></asp:TextBox>

                        <p>Subject *</p>
                        <asp:TextBox ID="txtSubject" runat="server" Required="required"></asp:TextBox>

                        <p>Message *</p>
                        <asp:TextBox ID="txtMessage" runat="server" Required="required" TextMode="MultiLine" Rows="4"></asp:TextBox><br />
                         
                           <asp:Button class="cmn-btn" ID="btnAddContact" runat="server" Text="SEND" OnClick="btnAddContact_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                      
                    </div>

                        <div style="float:left; height:615px;   background-image:url(assets/images/background.jpg);  background-size: cover;"class="col-lg-6" >
                        
                    <div  >
                        
                 <div style="height:180px; padding-top:10px;" class="col-lg-4">
                   <div class="contact-item text-center">
                   
                  <div class="content">
                   <h4 class="title">office address</h4>
                  <p>Surrey Street 271<br/> Randburg, SA 
                </div>
               </div>
        </div><!-- contact-item end -->

        <div  style="height:180px; padding-top:5px; padding-bottom:5px;" class="col-lg-4">
          <div class="contact-item text-center">
           
            <div class="content">
              <h4 class="title">Phone Number</h4>
              <p>011-263-7568 </p>
            </div>
          </div>
        </div><!-- contact-item end -->

        <div style="height:180px; padding-top:10px;"  class="col-lg-4">
          <div class="contact-item text-center">
          
            <div class="content">
              <h4 class="title">Email Address</h4>
              <p>info@momentumrental.co.za</p>
            </div>
          </div>
        </div><!
                    </div>
      

                   
                
                      </div>
                        
   
                       
               </div>

             </div>
              
             
                
    </div>
      
      


                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3583.040059231382!2d27.99603591542675!3d-26.097610983485428!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1e957495a9bc00d5%3A0x40970d309226ef55!2s271%20Surrey%20Ave%2C%20Ferndale%2C%20Randburg%2C%202194!5e0!3m2!1sen!2sza!4v1631519930112!5m2!1sen!2sza" width="100%" height="350" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
              
                            

                       
                    
  </section>
     
      <!-- ContactUs-section end -->

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
