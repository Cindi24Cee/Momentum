<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VehicleRegistration.aspx.cs" Inherits="momes.VehicleRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
     <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">



    
          <fieldset>
              <legend>
                  Add Vehicle
              </legend>

              <div class="row">
                  <div class="col-md-1"></div>

                   <div class="col-md-5 offset-md-0">
                      <asp:Label ID="Label10" runat="server" Text="Branch"></asp:Label><br />
                      <asp:DropDownList ID="ddlBranch" CssClass="form-control" runat="server"></asp:DropDownList><br />

                      <asp:Label ID="Label12" runat="server" Text="Brand"></asp:Label><br />
                      <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList><br />

                      <asp:Label ID="Label11" runat="server" Text="Vehicle"></asp:Label><br />
                      <asp:DropDownList ID="ddlVType" CssClass="form-control" runat="server"></asp:DropDownList><br />


                      <asp:Label ID="Label1" runat="server" Text="License No."></asp:Label><br />
                      <asp:TextBox ID="txtLicenceNo" CssClass="form-control" runat="server"></asp:TextBox><br />

                        <asp:Label ID="Label4" runat="server" Text="Fuel Type"></asp:Label><br />
                       <asp:DropDownList ID="ddlFuel" CssClass="form-control" runat="server">
                           <asp:ListItem>Petrol</asp:ListItem>
                           <asp:ListItem>Diesel</asp:ListItem>
                       </asp:DropDownList> <br />
                     

                        <asp:Label ID="Label13" runat="server" Text="Car Image"></asp:Label><br />
                      <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" OnDataBinding="FileUpload1_DataBinding" /><br />


                  </div>
                  <div class="col-md-5 offset-md-1">
                      <asp:Label ID="Label2" runat="server" Text="Car Make"></asp:Label><br />
                      <asp:TextBox ID="txtMake" CssClass="form-control" runat="server"></asp:TextBox><br />

                      <asp:Label ID="Label3" runat="server" Text="Car Year Model"></asp:Label><br />
                      <asp:TextBox ID="txtModelYr" CssClass="form-control" runat="server"></asp:TextBox><br />

                      <asp:Label ID="Label5" runat="server" Text="Door No."></asp:Label><br />
                      <asp:TextBox ID="txtDoor" CssClass="form-control" TextMode="Number"  runat="server"></asp:TextBox><br />

                      <asp:Label ID="Label6" runat="server" Text="Seat No."></asp:Label><br />
                      <asp:TextBox ID="txtSeat" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox><br />

                      <asp:Label ID="Label7" runat="server" Text="Color"></asp:Label><br />
                      <asp:TextBox ID="txtColor" CssClass="form-control" runat="server"></asp:TextBox><br />

                      <asp:Label ID="Label8" runat="server" Text="Power"></asp:Label><br />
                      <asp:TextBox ID="txtPower" CssClass="form-control" runat="server"></asp:TextBox><br />

                      <asp:Label ID="Label9" runat="server" Text="Mileage"></asp:Label><br />
                      <asp:TextBox ID="txtMileage" CssClass="form-control" runat="server"></asp:TextBox><br />

 <asp:Label ID="Label14" runat="server" Text="Price"></asp:Label><br />
                      <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox><br />





                  </div>

                   <div class="col-md-1"></div>

              </div>

              <div class="row">
                  <div class="col-md-2"></div>
                  <div class="col-md-8">
                      <asp:Button ID="btn" CssClass="btn btn-primary form-control" runat="server" Text="Register Vehicle" OnClick="btn_Click" />
                  </div>
                  <div class="col-md-2"></div>
              </div>
                </fieldset>

            </div>
        <div class="col-md-1"></div>
    </div>
</asp:Content>
