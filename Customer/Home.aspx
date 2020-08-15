<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Customer_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .wrapper-dropdown {
    /* Size and position */
    position: relative; /* Enable absolute positioning for children and pseudo elements */
    width: 200px;
    padding: 10px;
    margin: 0 auto;

    /* Styles */
    background: #ffffff;
    color: #000;
    outline: none;
    cursor: pointer;

    /* Font settings */
    font-weight: bold;
}
        .auto-style1 {
            /* Size and position */
        position: relative; /* Enable absolute positioning for children and pseudo elements */;
            width: 200px;
            padding: 10px;
            margin: 0 auto;
/* Styles */background: #ffffff;
            color: #000;
            outline: none;
            cursor: pointer; /* Font settings */;
            font-weight: bold;
            left: -2px;
            top: 0px;
        }
        .auto-style2 {
            text-align: left;
            margin-left: 40px;
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
            <h3>
                <table>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1">
                            
                            <asp:ListItem Value="India">--Country--</asp:ListItem>
                            <asp:ListItem Value="India">India</asp:ListItem>
                                <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
                                                     </asp:DropDownList></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList2" runat="server" CssClass="wrapper-dropdown">
                           
                             <asp:ListItem Value="India">--State--</asp:ListItem>
                             <asp:ListItem Value="India">Gujarat</asp:ListItem>
                                <asp:ListItem Value="Indonesia">Maharashtra</asp:ListItem>
                                                     </asp:DropDownList></td>
                     <td> &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" CssClass="wrapper-dropdown">
                         
                          <asp:ListItem Value="India">--City--</asp:ListItem>
                         <asp:ListItem Value="India">Vadodara</asp:ListItem>
                                <asp:ListItem Value="Indonesia">Surat</asp:ListItem>
                                                  </asp:DropDownList></td>

                         <td>&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList4" runat="server" CssClass="wrapper-dropdown" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList></td>
                    </tr>
                </table></h3>
         
           </div>
        </div>
      </div>
    </div>

      <section class="ftco-section">
			<div class="container">
				<div class="row no-gutters ftco-services">
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-shipped"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Free Shipping</h3>
                <span>On order over Rs300</span>
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-diet"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Always Fresh</h3>
                <span>Product well package</span>
              </div>
            </div>    
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-award"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Superior Quality</h3>
                <span>Quality Products</span>
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-customer-service"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Support</h3>
                <span>24/7 Support</span>
              </div>
            </div>      
          </div>
        </div>
			</div>
		</section>

     <section class="ftco-section contact-section bg-light">
      <div class="container">

          <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" RepeatColumns="3" RepeatDirection="Horizontal">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" ForeColor="#333333" />
                <ItemTemplate>
                    <h4 class="text-center"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Pr_Name") %>'></asp:Label></h4>
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="400px" width="400px" ImageUrl='<%# Eval("Pr_Pic") %>' />
                    <br />
                    <br />
                      <h4 class="text-center">RS : <asp:Label ID="Label2" runat="server" Text='<%# Eval("ST_Price") %>'></asp:Label>/kg</h4>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="icon-shopping_cart btn"  PostBackUrl='<%#"singlep.aspx?k="+Eval("Pr_Id")%>' Height="58px" Width="102px">Cart</asp:LinkButton>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </ItemTemplate>
                <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
          </div></section>
</asp:Content>

