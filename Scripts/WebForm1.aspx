<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="hospital1.Scripts.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Date of Birth<asp:TextBox ID="TextBox2" runat="server" type="date"></asp:TextBox>
            (DD/MM/YYYY)<br />
            <br />
            Email<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Contact<asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox>
            <br />
            <br />
            License ID<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            File name<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SIGNUP" />
    </form>
</body>
</html>
