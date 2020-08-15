<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Home.master" AutoEventWireup="true" CodeFile="finalpay.aspx.cs" Inherits="Customer_finalpay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="UTF-8">
	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/jquery-ui.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/style.css"/>

     <link href="vendor1/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css1/sb-admin.css" rel="stylesheet">
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
    <style>
   
        body{
            background-color:aqua;

        }
        .auto-style3 {
            width: 121%;
            height: 628px;
        }
        .auto-style4 {
            clear: left;
            height: 515px;
            border: 1px solid #e7ebee;
            padding: 1em;
            background: #fff;
        }
        .auto-style5 {
            width: 100%;
            height: 541px;
        }
        .auto-style6 {
            height: 33px;
        }
        .newStyle1 {
            font-family: "Segoe UI Historic";
        }
        .newStyle2 {
            color: #FF0000;
        }
        .newStyle3 {
            font-size: medium;
        }
        .auto-style7 {
            text-align: center;
            font-weight: normal;
            font-size: xx-large;
        }
        .newStyle4 {
            color: #FF0000;
        }
        .newStyle5 {
            color: #FF0000;
        }
        .nd
        {
            display:none;
        }
         .d
        {
            display:block;
        }
        .auto-style8 {
            height: 40px;
        }
        .auto-style9 {
            width: 18%;
            height: 51px;
        }
        .auto-style10 {
            height: 51px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span></span></p>
            <h1 class="mb-0 bread">Payment Gateway</h1>
          </div>
        </div>
      </div>
    </div>


     <section class="ftco-section contact-section bg-light">
      <div class="container">
    		<div class="sap_tabs" style="z-index:1">
							<div id="horizontalTab" style="display: block; margin-left: 0px; margin-right: 0px; margin-top: 0px;" class="auto-style3">
								
								<div class="auto-style4">
								
								
								
									
								    <table cellpadding="10" cellspacing="10">
                                        <tr>
                                            <td colspan="2">
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="395px" AutoPostBack="True">
                                                    <asp:ListItem Selected="True">Credit Card</asp:ListItem>
                                                    <asp:ListItem>Debit Card</asp:ListItem>
                                                     <asp:ListItem>Cash On Delivery</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                            
                                        </tr>
                                        </table>
                                        <table cellpadding="10" cellspacing="10" class="auto-style5" id="t1">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>Card Name</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  Height="40px" Width="230px" >
                                                    <asp:ListItem Selected="True">Visa</asp:ListItem>
                                                    <asp:ListItem>Master</asp:ListItem>
                                                    <asp:ListItem>Rupay</asp:ListItem>
                                                    <asp:ListItem>Maestro</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>Card Number</td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="230px" TextMode="Number"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid card number" ForeColor="#FF3300" ValidationExpression="^(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Expiry Date</td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="230px" TextMode="Date" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                                 </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>Security Code</td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="230px" TextMode="Number"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>ZipCode</td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="230px" TextMode="Number"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"></td>
                                            <td class="auto-style6">
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter a valid zipcode" ForeColor="#FF3300" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
                                        
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Submit" Width="130px" CssClass="btn btn-black py-3 px-5" />
                                                <br />
                                                <br />
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style8"></td>
                                        </tr>
                                    </table>
                                    <table>
                                        <tr>
                                            <td>
                                                <br />
                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </td>
                                                </tr>
                                        </table>
								</div>	
							</div>
						</div>	</div></section>
</asp:Content>

