<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/Home.master" AutoEventWireup="true" CodeFile="showorders.aspx.cs" Inherits="Vendor_showorders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            height: 216px;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 362px;
        }
        .newStyle1 {
            margin-left: 100px;
        }
         .not-active{
            pointer-events:none;
            cursor:default;
            color:grey;
        }
        .active{
            pointer-events:all;
            cursor:default;
            color:grey;
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
          <table align="center" cellpadding="10" cellspacing="10" class="auto-style2">
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="newStyle1" GridLines="Horizontal" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                   
                    <Columns>
                        <asp:TemplateField HeaderText="PRODUCT NAME">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pr_Name") %>'></asp:Label>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("payid") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PRODUCT QUANTITY">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("C_Qty") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TOTAL AMOUNT">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("C_TAmt") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DATE">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("paymentdate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                   
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
            </td>
        </tr>
    </table>
          </div></section>
</asp:Content>

