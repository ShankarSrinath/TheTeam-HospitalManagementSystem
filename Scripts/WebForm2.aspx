<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="hospital1.Scripts.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 646px;
        }
        .auto-style2 {
            text-align: center;
            height: 55px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('C:\Users\Srinath\Desktop\hospital.jpg')">
        <div class="auto-style2" style="font-family: 'Bell MT'; font-size: xx-large; font-weight: bold; font-style: normal; background-color: #008080; color: #FFFFFF">DOCTOR&#39;S &nbsp; LOGIN</div>
        <div class="auto-style3">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Doctor ID" Font-Bold="True" Font-Names="Century Schoolbook" Font-Size="Large" ForeColor="#003300" BackColor="#33CCFF" BorderColor="#66CCFF" BorderStyle="Solid"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtdoctorid" runat="server" Height="30px" Width="218px" BackColor="White" BorderColor="Black" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Names="Century Schoolbook" Font-Size="Large" ForeColor="#003300" BackColor="#00CCFF" BorderColor="#00CCFF" BorderStyle="Solid"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="txtpassword" runat="server" Height="30px"  Width="218px" BackColor="White" BorderColor="Black" TextMode="Password"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="btnlogin" runat="server" BackColor="Black" BorderStyle="Double" Font-Bold="True" ForeColor="White" Height="30px" Text="Login" Width="150px" />
            <br />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
