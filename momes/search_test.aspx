<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search_test.aspx.cs" Inherits="momes.search_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="card">
                <div class="card-header">
                    Featured
                </div>
                <div 
                    <asp:ListView ID="ListView1" runat="server"></asp:ListView> class="card-body">
                    <h5 class="card-title">Special title treatment</h5>

                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
