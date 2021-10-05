<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="hospital1.Scripts.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Content/css/bootstrap.css" />
    <style type="text/css">
        .errorlabel{
            color:red;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Username" runat="server" ID="label1"></asp:Label>
            <asp:TextBox runat="server" ID="txtusername"></asp:TextBox>
        </div>
        <div>
            <asp:Label Text="Password" runat="server" ID="label2"></asp:Label>
            <asp:TextBox runat="server" ID="txtpassword"></asp:TextBox>
        </div>
        <div>
            <asp:Button runat="server" ID="btn" Text="Login" OnClick="btn_Click" />
        </div>
        <div>
            <asp:Label Class="errorlabel" runat="server" Text="Incorrect Credentials" ID="label3"></asp:Label>
        </div>
    </form>
</body>
</html>
