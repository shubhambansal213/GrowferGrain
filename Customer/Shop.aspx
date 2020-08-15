<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Home.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Customer_Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span></span></p>
            <h1 class="mb-0 bread">Shop</h1>
          </div>
        </div>
      </div>
    </div>


     <section class="ftco-section contact-section bg-light">
      <div class="container">
          <table width="100%">
              <tr>
                  <td width="30%" class="text-justify">
                      <div class="text-center">
                          <div class="text-justify">
                          <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="240px">
                          </asp:CheckBoxList>
                          </div>
                          <div class="text-left">
                              <br />
                              <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn btn-black py-3 px-5" OnClick="Button1_Click" />
    			<br />
                          </div>
                      </div>
&nbsp;</td>
                  <td>
                      <table class="w-100">
                          <tr>
                              <td>&nbsp;</td>
                              <td><asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" RepeatColumns="2" RepeatDirection="Horizontal">
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
            </asp:DataList></td>
                              <td>&nbsp;</td>
                          </tr>
                      </table>
                  </td>
              </tr>
          </table>
          </div>
         </section>
</asp:Content>

