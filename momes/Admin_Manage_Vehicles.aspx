<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_Manage_Vehicles.aspx.cs" Inherits="momes.Admin_Manage_Vehicles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
     <div class="col-md-1"></div>
           <div class="col-lg-10">
         <div class="card text-center">
             <div class="card-header">
                 <ul class="nav nav-tabs card-header-tabs">
                     <li class="nav-item">
                         <a class="nav-link" href="#">Manage Brands</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link active" href="#">Manage Type</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="#">Manage Vehicles</a>
                     </li>

                      <li class="nav-item">
                         <a class="nav-link" href="#">Manage Bookings</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="#">Manage Customers</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                     </li>
                 </ul>
             </div>
             <div class="card-body">
                 <h2 class="card-title">Vehicles Brand Management</h2>
                 <div class="row">
                     <div class="col-md-1"></div>
                     <div class="col-md-3">
                      <asp:Label ID="Label1" runat="server" style="text-align:left;" Text="Vehicle Type: "></asp:Label>
                         <br />
                         <br />
                         <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox><br />
                         <asp:Button ID="btnAdd" CssClass="btn btn-primary form-control" runat="server" Text="Add" />
                         <br />
                         <br />
                         <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-primary form-control" Text="Delete" />
                          <br />
                         <br />
                         <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary form-control" Text="Update" />

                         <br />

                     </div>
                     <div class="col-md-8">
                          <h5 style="text-align:left">Existing Vehicle Brands</h5>
                   
                         <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server"></asp:ListBox>
                     </div>

                     <div class="col-md-1"></div>
                 </div>

             </div>
         </div>
     </div>

     <div class="col-lg-1"> </div>

        </div>

</asp:Content>
