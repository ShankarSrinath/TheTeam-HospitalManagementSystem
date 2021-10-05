<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="hospital1.Scripts.WebForms.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Content/css/bootstrap.css" />
    <link rel="stylesheet" href="Custom_Styling/Index_custom.css" />
</head>

<body>
    <form id="form1" runat="server">
       
       
            <header>
        <div class="navbar fixed-top navbar-expand-lg navbar-dark header-thing">
        <a class="navbar-brand" href="#"><strong class="logo">Nisha Hospital</strong></a>
            </div>        
        </header>

        <div class="main-container">

         <!---   <div class="first-row">
            <span class="first-row-one"><a class="nav-item" href="#">Regular Patient</a></span>
            <span class="first-row-two"><a class="nav-item" href="../OP registry.aspx">Outpatient Register</a></span>
           </div>
           <div class="second-row">
            <span class="second-row-one"><a class="nav-item" href="../pharm2.aspx">Pharmacy</a></span>
            <span class="second-row-two"><a class="nav-item" href="#">Phaanotherrmacy</a></span>
            </div> --->

            <ul class="first-one">
                <li><a class="nav-item" href="OP registry.aspx">Outpatient Register</a></li>
                <li><a class="nav-item" href="#">Regular Patient</a></li>
                <li><a class="nav-item" href="pharm2.aspx">Pharmacy</a></li>
                <li><a class="nav-item" href="#">Sign Up</a></li>
            </ul>
            


        </div>

    </form>
    </body>
</html>
