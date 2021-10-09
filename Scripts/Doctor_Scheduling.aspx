<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctor_Scheduling.aspx.cs" Inherits="hospital1.Scripts.Doctor_Scheduling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="../Content/css/bootstrap.css" />
    <link rel="stylesheet" href="Custom_Styling/DScheduling_custom.css" />
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
                    <a class="nav-link" href="Index.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="OP registry.aspx">Outpatient Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pharm2.aspx">Pharmacy</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Regular Patient</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link righthere" href="#">Regular Patient</a>
                </li>
            </ul>
        </div>
            </div>
        
        </header>

        <div class="outer-container">
        <div class="main-container">


            

            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Doctor Name</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="text" id="TextBox1" class="form-control ptbox" />
                </div>
            </div>

            <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Available at </label>
                <div class="col-sm-10 datetime">
                    <asp:TextBox runat="server" type="date" id="TextBox2" placeholder="" class="form-control ptbox dsdate" />
                    <asp:Label runat="server" Text="From" class="hyphen"> </asp:Label>
                    <asp:TextBox runat="server" type="time" id="TextBox3" placeholder="" class="form-control ptbox dsdate" />
                    <asp:Label runat="server" Text="to" class="hyphen"> </asp:Label>
                    <asp:TextBox runat="server" type="time" id="TextBox4" placeholder="" class="form-control ptbox dsdate" />
                </div>
            </div>

            </div>
            </div>
    </form>
</body>
</html>
