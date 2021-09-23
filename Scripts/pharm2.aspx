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
                <h1>Pharmacy</h1>
            </header>


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
                    <asp:TextBox runat="server" type="text" id="TextBox3" class="form-control ptbox fetch-tb" />
                    <asp:Button class="btn btn-primary float-right fetch-bt" ID="Button4" runat="server" Text="Fetch" OnClick="Button1_Click" />
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
                    <asp:TextBox runat="server" type="text" id="TextBox5" class="form-control ptbox" />
                </div>
            </div>


            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Quantity</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="text" id="TextBox6" class="form-control ptbox" />
                </div>
            </div>

            
            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Total</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="text" id="TextBox8" class="form-control ptbox" />
                </div>
            </div>

            <div class="btns">
             <asp:Button class="btn btn-primary bill-btn bill-btn-add" ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
             <asp:Button class="btn btn-primary bill-btn bill-btn-bill" ID="Button3" runat="server" OnClick="Button3_Click" Text="Bill" />
            </div>
        </div>

 

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
 
    </form>
</body>
</html>