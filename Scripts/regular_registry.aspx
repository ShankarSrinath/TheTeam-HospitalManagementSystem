<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regular_registry.aspx.cs" Inherits="hospital1.Scripts.regular_registry" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            Referring Doctor<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Consulting Fees<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="REGISTER" />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <p>
            Patient ID</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
        <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Patient found" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" SelectCommand="SELECT [Name], [email], [Gender], [Blood] FROM [pat_signup]"></asp:SqlDataSource>
    </form>
</body>
</html>
