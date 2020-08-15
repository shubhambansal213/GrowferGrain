<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Home.master" AutoEventWireup="true" CodeFile="yourorders.aspx.cs" Inherits="Customer_yourorders" %>

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

    <style type="text/css">
        .auto-style1 {
            height: 222px;
            width: 106px;
        }
          .btn{
            background-color:dodgerblue;
            border:none;
            color:white;
            padding:12px 16px;
            font-size:16px;
            cursor:pointer;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span></span></p>
            <h1 class="mb-0 bread">Your Orders</h1>
          </div>
        </div>
      </div>
    </div>


     <section class="ftco-section contact-section bg-light">
      <div class="container">
          <table cellpadding="10" cellspacing="10" align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="815px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" >
                        <Columns>
                            <asp:TemplateField HeaderText="PRODUCT NAME">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pr_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="QUANTITY">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("C_Qty") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TOTAL AMOUNT">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("C_TAmt") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DATE">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("bdate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                           
                            
                            <asp:TemplateField HeaderText="BILL">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="fa fa-download fa-2x" PostBackUrl='<%#"invoice.aspx?k=" + Eval("C_Id") %>' >Download</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    </td>
                </tr>
            </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
          </div>
         </section>
</asp:Content>

