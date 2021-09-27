<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="momes.Search" %>

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
                                <h1 style="color: aliceblue;">Momentum Car Rentals </h1>
                            </ul>
                        </div>
                        <div class="col-lg-3">
                            <div class="header-action d-flex align-items-center justify-content-end">
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            </div>
    <div class="header-bottom">
        <div class="container">
            <nav class="navbar navbar-expand-lg p-0">
                <a class="site-logo site-title" href="index.html">
                    <img src="assets/images/Logo.png" height="130" width="100" alt="site-logo"><span class="logo-icon"><i class="flaticon-fire"></i></span></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="menu-toggle"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav main-menu mr-auto">
                        <li><a href="#0">Home</a>
                        </li>
                        <li class="menu_has_children"><a href="about.html">About</a>
                            <ul class="sub-menu">
                                <li><a href="ContactUs.aspx">Contact Us</a></li>

                            </ul>
                            <li class="menu_has_children"><a href="#0">cars</a>
                                <ul class="sub-menu">
                                    <li><a href="ViewCar.aspx">View Cars</a></li>
                                    <li><a href="WebForm1.aspx">Book Car</a></li>
                                </ul>
                            </li>
                        <li><a href="WebForm1.aspx">Reservation</a>

                        </li>

                    </ul>
                </div>
                <div style="padding-left: 20px;" class="login-reg">
                   
                    <asp:Button BorderStyle="Dashed" class="cmn-btn" ID="Button4" runat="server" Text="Sign Out" OnClick="Button4_Click" />

                </div>
            </nav>
        </div>
    </div>
            <!-- header-bottom end -->
        </header>
        <!--  header-section end  -->

        <!-- inner-apge-banner start -->
        <section class="inner-page-banner bg_img overlay-3" data-background="assets/images/young-businessman.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-title">Add Car</h2>
                        <ol class="page-list">
                            <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
                            <li>View Cars</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <!-- inner-apge-banner end -->
        <!-- View Car-section end -->
        <section class="car-search-section pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="car-search-filter-area">
                            <div class="car-search-filter-from-area">
                                <from class="car-search-filter-from">
                <div class="row justify-content-between">
                  <div class="col-lg-4 col-md-5 col-sm-6">
                    <div class="cart-sort-field">
                      <span class="caption">Sort by : </span>
                      <asp:DropDownList ID="ddlBrand" runat="server"></asp:DropDownList>
                    </div>
                  </div>
                  <div class="col-lg-7 col-md-7 col-sm-6 d-flex">
               
                      <asp:TextBox ID="txtSearch"  placeholder="Search ..." runat="server"></asp:TextBox>
                      <asp:Button class="cmn-btn" ID="btnSearch" runat="server" Text="Search"> </asp:Button>
                     

                  </div>
                </div>
              </from>
                            </div>
                            <div class="view-style-toggle-area">
                                <button class="view-btn list-btn active"><i class="fa fa-bars"></i></button>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-70">
                    <div class="col-lg-8">
                        <asp:ListView ID="lstVehicle" runat="server" OnSelectedIndexChanged="lstVehicle_SelectedIndexChanged">
                            <ItemTemplate>

                                <div class="car-search-result-area list--view row mb-none-30">
                                    <div class="col-md-6 col-12">
                                        <div class="car-item car-item--style2">
                                            <div class="thumb bg_img" data-background="assets/images/cars/4.png">

                                                <asp:Image ImageUrl='<%# Eval("CarNo", "Search.aspx?CarNo={0}")%>' runat="server" />

                                                <asp:Label ID="lblCarNo" visible="false" runat="server" Text=" ">  <%# Eval("CarNo")%></asp:Label>
                                                <asp:Label ID="lblCarMake" visible="false" runat="server" Text=" ">  <%# Eval("CarMake")%></asp:Label>

                                                <asp:Label ID="lblImage" visible="false" runat="server" Text=" ">  <asp:Image ImageUrl='<%# Eval("CarNo", "Search.aspx?CarNo={0}")%>' runat="server" />    </asp:Label>
                                                <asp:Label ID="lblPrice" visible="false" runat="server" Text=" ">  <%# Eval("RentalPrice")%></asp:Label>
                                            </div>
                                            <div class="car-item-body">
                                                <div class="content">


                                                    <asp:Label ID="lblCar_Make" CssClass="title" runat="server" Text=" ">  <%# Eval("CarMake")%></asp:Label>
                                                   
                                                    <br />
                                                    <ul class="details-list">
                                                        <li><i class="fa fa-car"></i>&nbsp;Car Model Year:   <%# Eval("CarModelYear")%>   </li>
                                                        <li><i class="fa fa-tachometer"></i>&nbsp;Fuel Type:   <%# Eval("FuelType")%></li>
                                                        <li><i class="fa fa-sliders"></i>&nbsp;Power:   <%# Eval("Power")%></li>
                                                    </ul>
                                                    <br />
                                                   <!-- <span class="price">
                                                        <h3><span class="title">Daily Prices per KMs</span></h3>

                                                        <span>
                                                         
                                                            <asp:CheckBox ID="CheckBox100" Text="100KM*/Day R302.00" runat="server" /></span>
                                                        <br />
                                                        <span>
                                                            <asp:CheckBox ID="CheckBox200" Text="150KM*/Day R345.00" runat="server" /></span><br />
                                                        <span>
                                                            <asp:CheckBox ID="CheckBox300" Text="200KM*/Day R375" runat="server" /></span><br />
                                                    </span> -->
                                                   <asp:Button class="cmn-btn" ID="btnRent" runat="server" Text="Rent" OnClick="btnRent_Click1" />
                                                </div>
                                             


                                            </div>


                                        </div>
                                    </div>
                                    <!-- car-item end -->

                                </div>
                                <!-- car-item end -->


                            </ItemTemplate>
                        </asp:ListView>
                                                                     
                    </div>


                    <div class="col-lg-4">
                        <aside class="sidebar">
                            <div class="widget widget-reservation">
                                <h4 class="widget-title">reservation</h4>
                                <div class="widget-body">
                                    <from class="car-search-from">
                  <div class="row">
                    <div class="col-lg-12 from-group">
                        
                      <asp:DropDownList Visible="false" ID="ddlVType" runat="server"></asp:DropDownList>
                    </div>
                    <div class="from-group col-md-12">
                      <i class="fa fa-map-marker">Pick Up Loction</i>
                  <asp:DropDownList  ID="ddlBranchP" runat="server"></asp:DropDownList>
                        <br />
                    </div>
                    <div class="from-group col-md-12">
                      <i class="fa fa-map-marker">Drop Off Location</i>
                    <asp:DropDownList  ID="ddlBranchD" runat="server"></asp:DropDownList>
                        <br />
                    </div>
                    <div class="from-group col-md-12">
                      <i class="fa fa-calendar">Pick Up Date</i>
                        <asp:TextBox ID="txtP"  TextMode="DateTimeLocal"  placeholder="Pickup Date" runat="server"></asp:TextBox>
                      <br />
                    </div>
                  
                    <div class="from-group col-md-12">
                      <i class="fa fa-calendar">Drop Off Date</i>
                          <asp:TextBox ID="txtD" TextMode="DateTimeLocal" placeholder="Drop Off Date" runat="server"></asp:TextBox>
                    
                    </div>
                 
                  </div>
                  <asp:Button class="cmn-btn" ID="btnReserve" runat="server" Text="Reservation" OnClick="btnReserve_Click" > </asp:Button>
                </from>
                                </div>
                            </div>


                        </aside>
                    </div>

                </div>
            </div>
            </div>
        </section>
        <!-- View Car-section end -->


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
