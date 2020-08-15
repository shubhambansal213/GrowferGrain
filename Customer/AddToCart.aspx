<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Home.master" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="Customer_AddToCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span></span></p>
            <h1 class="mb-0 bread">Add To Cart</h1>
          </div>
        </div>
      </div>
    </div>


     <section class="ftco-section contact-section bg-light">
      <div class="container">
          <table class="table table-bordered table-striped" style="margin:100px 100px 100px 100px; width: 69%;" >
                                <tr>
                                    <td class="auto-style2"><strong class="auto-style1">CART</strong></td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1049px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnRowCommand="GridView1_RowCommand" >
                                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Shop">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("V_Name") %>'></asp:Label>
                                                        <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("C_Id") %>'/>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                               
                                                <asp:TemplateField HeaderText="Product">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Pr_Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Price">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("C_Price") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Quantity">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("C_Qty") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                               
                                                <asp:TemplateField HeaderText="Total Price">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("C_TAmt") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Date">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("bdate") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="DELETE">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="icon-disabled-by-default" OnClientClick="return(confirm('sure you want to delete?'))"  CommandName="abc" CommandArgument='<%#Eval("C_Id") %>'>Delete</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="PAY">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="" PostBackUrl='<%#"finalpay.aspx?k="+Eval("C_Id") %>'>Pay</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="EDIT QUANTITY">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="fa fa-edit fa-2x" PostBackUrl='<%#"updateproduct.aspx?k="+Eval("C_Id") %>'>Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="Tan" />
                                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                        </asp:GridView>
                                        <asp:HiddenField ID="HiddenField1" runat="server" />
                                    </td>
                                </tr>
                                 <tr><td>
                                     <div class="col-lg-4 card-right">
					
					
                                         <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Customer/Home.aspx" class="site-btn" CssClass="btn btn-black py-3 px-5">Continue shopping</asp:LinkButton>		<%--<a href="" class="site-btn sb-dark">Continue shopping</a>--%>
				</div>
                                     </td></tr>
                              
                            </table>
          </div></section>
</asp:Content>

