<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registartion.aspx.cs" Inherits="momes.Registartion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


   <div class="row">
       <div class="col-md-2"></div>
       <div class="col-md-8">

            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label><br />


           <asp:Label ID="Label1" runat="server" Text="Full Names"></asp:Label><br />
           <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox><br />

           <asp:Label ID="Label2" runat="server" Text="Identity No"></asp:Label><br />
           <asp:TextBox ID="txtID" CssClass="form-control" runat="server"></asp:TextBox><br />
           
           <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label><br />
           <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label><br />
           <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox><br />

           <asp:Label ID="Label4" runat="server" Text="Phone No."></asp:Label><br />
           <asp:TextBox ID="txtPhone" TextMode="Phone" CssClass="form-control" runat="server"></asp:TextBox><br />
          
           <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label><br />
           <asp:TextBox ID="txtAge" CssClass="form-control" runat="server"></asp:TextBox><br />
           
           <asp:Label ID="Label6" runat="server" Text="Home Address"></asp:Label><br />
           <asp:TextBox ID="txtHms" CssClass="form-control" runat="server"></asp:TextBox> <br />
         
           
           <asp:Label ID="Label7" runat="server" Text="Work Address"></asp:Label><br />
           <asp:TextBox ID="txtWork" CssClass="form-control" runat="server"></asp:TextBox><br />
           
            <asp:Label ID="Label8" runat="server" Text="Date Drivers License Isssued"></asp:Label><br />
           <asp:TextBox ID="txtDI" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox><br />
           

            <asp:Label ID="Label9" runat="server" Text="Date Drivers License Expire"></asp:Label><br />
           <asp:TextBox ID="txtEx" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox><br />
           


           <div class="row">
               <div class="col-md-2"></div>
               <div class="col-md-8">
                   <asp:Button ID="btnRegistaer" CssClass="btn btn-primary form-control" runat="server" Text="Register" OnClick="btnRegistaer_Click" />
               </div>
               <div class="col-md-2"></div>
           </div>
           </div>
       <div class="col-md-2"></div>
   </div>




</asp:Content>
