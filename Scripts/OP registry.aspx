﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP registry.aspx.cs" Inherits="hospital1.Scripts.OP_registry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Content/css/bootstrap.css" />
    <link rel="stylesheet" href="Custom_Styling/OPRegistery_custom.css" />
    
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
                    <a class="nav-link" href="WebForms/Index.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link righthere" href="OP registry.aspx">Outpatient Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pharm2.aspx">Pharmacy</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Regular Patient</a>
                </li>
            </ul>
        </div>
            </div>
        
        </header>
       <div class="main-container">


           <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Name</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="text" id="TextBox1" class="form-control ptbox" />
                </div>
            </div>

          <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Age</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="number" id="TextBox2" MaxLength="2" class="form-control ptbox" />
                </div>
            </div>


           <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Sex</label>
                <div class="col-sm-10">

                   <asp:DropDownList class=" dropdownsex dropdown-toggle btn" ID="DropDownList1" runat="server">
                    <asp:ListItem class="dropdown-item">--Select--</asp:ListItem>
                    <asp:ListItem class="dropdown-item">Male</asp:ListItem>
                    <asp:ListItem class="dropdown-item">Female</asp:ListItem>
                    <asp:ListItem class="dropdown-item">Other</asp:ListItem>
                </asp:DropDownList>
                </div>
            </div>


           <div class="form-group row p-each-div bgroup">
                <label runat="server" class="col-sm-2 col-form-label plabel">Blood Group</label>
                <div class="col-sm-10">

                   <asp:DropDownList class=" dropdownsex dropdown-toggle btn" ID="DropDownList2" runat="server">
                    <asp:ListItem class="dropdown-item">--Select--</asp:ListItem>
                    <asp:ListItem class="dropdown-item">A+</asp:ListItem>
                       <asp:ListItem class="dropdown-item">O+</asp:ListItem>
                      <asp:ListItem class="dropdown-item">B+</asp:ListItem>
                       <asp:ListItem class="dropdown-item">AB+</asp:ListItem>
                      <asp:ListItem class="dropdown-item">A-</asp:ListItem>
                        <asp:ListItem class="dropdown-item">O-</asp:ListItem>
                       <asp:ListItem class="dropdown-item">B-</asp:ListItem>
                        <asp:ListItem class="dropdown-item">AB-</asp:ListItem>
                        
                </asp:DropDownList>
                </div>
            </div>
        

           <div class="form-group row p-each-div">
                <label runat="server" class="col-sm-2 col-form-label plabel">Mobile</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="number" id="TextBox3" MaxLength="10" class="form-control ptbox" />
                </div>
            </div>


           <div class="form-group row p-each-div consulting">
                <label runat="server" class="col-sm-2 col-form-label plabel">Consulting Doctor</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="text" id="TextBox4" class="form-control ptbox" />
                </div>
            </div>

           <div class="form-group row p-each-div consulting">
                <label runat="server" class="col-sm-2 col-form-label plabel">Consultation<br />fees</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" type="text" id="TextBox5" class="form-control ptbox" />
                </div>
            </div>


          <asp:Button class="btn btn-warning btn-proceed" ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed" />

       </div>
    </form>
</body>
</html>
