<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientsignup.aspx.cs" Inherits="hospital1.Scripts.patientsignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Date of Birth<asp:TextBox ID="TextBox2" runat="server" type="date"></asp:TextBox>
            (DD/MM/YYYY)<br />
            <br />
            Email id<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Gender<asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Mobile<asp:TextBox ID="TextBox5" runat="server" MaxLength="10"></asp:TextBox>
            <br />
            <br />
            Blood Group<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SIGN UP" />
    </form>
</body>
</html>
