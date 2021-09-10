<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="momes.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
          <fieldset>
              <legend>
                  Sign IN
              </legend>

              <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label><br />
              <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox><br />

              <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
              <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
             
               <asp:Button ID="btn" CssClass="btn btn-primary form-control" runat="server" Text="Login" OnClick="btn_Click" />
          </fieldset>
        </div>
        <div class="col-md-2"></div>
    </div>

</asp:Content>
