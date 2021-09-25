<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pharm2.aspx.cs" Inherits="hospital1.Scripts.pharm2" %>

 

 

 

<!DOCTYPE html>

 

 

 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy | Nisha Hospital</title>

    <link rel="stylesheet" href="../Content/css/bootstrap.css" />

    <link rel="stylesheet" href="Custom_Styling/Pharmacy_custom.css" />

</head>

 

<body>
    <form id="form1" runat="server">


        <header>
        <div class="navbar fixed-top navbar-expand-lg navbar-dark header-thing">
        <a class="navbar-brand" href="#"><strong class="logo">Nisha Hospital</strong></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
            
            <div class="collapse navbar-collapse header-others" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="OP registry.aspx">Outpatient Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link righthere" href="pharm2.aspx">Pharmacy</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Regular Patient</a>
                </li>
            </ul>
        </div>
            </div>
        
        </header>

        <div class="outer-container">
        <div class="main-container">


            

            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Name</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="text" id="TextBox1" class="form-control ptbox" />
                </div>
            </div>

            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Prescribed by</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="text" id="TextBox2" class="form-control ptbox" />
                </div>
            </div>

             <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Drug Code</label>
                <div class="col-sm-10 fetch-grp">
                    <asp:TextBox runat="server" type="number" id="TextBox3" class="form-control ptbox fetch-tb" />
                    <asp:Button class="btn btn-warning float-right fetch-bt" ID="Button4" runat="server" Text="Fetch" OnClick="Button1_Click" />
                </div>
            </div>

            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Drug</label>
                <div class="col-sm-10 drug-grp">
                    <asp:TextBox runat="server" type="text" id="TextBox4" class="form-control ptbox drug-tb" />
                    <asp:Label class="float-right fetch-bt" ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
            </div>


            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Price</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="number" id="TextBox5" class="form-control ptbox" />
                </div>
            </div>


            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Quantity</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="number" id="TextBox6" class="form-control ptbox" />
                </div>
            </div>

            
            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Total</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="number" id="TextBox8" class="form-control ptbox" />
                </div>
            </div>

            <div class="btns">
             <asp:Button class="btn bill-btn bill-btn-add btn-warning" ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
             <asp:Button class="btn btn-warning bill-btn bill-btn-bill" ID="Button3" runat="server" OnClick="Button3_Click" Text="Bill" />
            </div>
        </div>

 
        <div class="grid">
        <asp:GridView class="grid" ID="GridView1" runat="server" Font-Bold="True" ShowHeaderWhenEmpty="false" BackColor="White" BorderColor="#0069d9" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
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
        </div>
            </div>

 
    </form>
</body>
</html>