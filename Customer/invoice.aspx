<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Home.master" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="Customer_invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script> 
        function printDiv() { 
            var divContents = document.getElementById("GFG").innerHTML; 
            var a = window.open('', '', 'height=500, width=500'); 
            a.document.write('<html>'); 
            a.document.write('<body > '); 
            a.document.write(divContents); 
            a.document.write('</body></html>'); 
            a.document.close(); 
            a.print(); 
        } 
    </script> 
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 308px;
            font-size: large;
            text-align: center;
        }
        .auto-style4 {
            width: 274px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            margin-left: 160px;
        }
        .auto-style7 {
            width: 308px;
            height: 52px;
            text-align: center;
        }
        .auto-style8 {
            width: 274px;
            height: 52px;
            text-align: center;
        }
        .auto-style9 {
            height: 52px;
            text-align: center;
        }
        .auto-style10 {
            font-size: large;
            text-align: center;
            margin-left: 160px;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            width: 274px;
            font-size: large;
            text-align: center;
        }
        .auto-style13 {
            font-size: large;
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            text-align: left;
        }
          .btn{
            background-color:dodgerblue;
            border:none;
            color:white;
            padding:12px 16px;
            font-size:16px;
            cursor:pointer;
       
        
        }
          @media print{
            .priya{
                visibility: hidden;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span></span></p>
            <h1 class="mb-0 bread">Bill</h1>
          </div>
        </div>
      </div>
    </div>


     <section class="ftco-section contact-section bg-light">
      <div class="container">
          <div id = "GFG">
          <table  cellpadding="10" cellspacing="10" class="auto-style1">
            <tr>
                <td class="auto-style14" colspan="4">
                    <h2><strong>Bill</strong></h2>
                </td>
            </tr>
            <tr>
               <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3"><strong>Shop Name :</strong></td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style11"></asp:Label>
                </td>
               <td class="auto-style15">&nbsp;</td>
                </tr>
               <tr><td class="auto-style15">&nbsp;</td>
                <td class="auto-style3"><strong>User Name : </strong></td>
                <td class="auto-style14">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style11"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
               
            </tr>
              <tr>
                 <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13"><strong>Date :</strong></td>
                <td class="auto-style14">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style11"></asp:Label>
                </td>
                 <td class="auto-style15">&nbsp;</td>
            </tr>
           <tr>
                 <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13"><strong>Product Name :</strong></td>
                <td class="auto-style14">
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style11"></asp:Label>
                </td>
                 <td class="auto-style15">&nbsp;</td>
            </tr>
                <tr>
                 <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13"><strong>Quantity :</strong></td>
                <td class="auto-style14">
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style11"></asp:Label>
                </td>
                 <td class="auto-style15">&nbsp;</td>
            </tr>
                <tr>
                 <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13"><strong>Total Amount:</strong></td>
                <td class="auto-style14">
                    <asp:Label ID="Label12" runat="server" CssClass="auto-style11"></asp:Label>
                </td>
                 <td class="auto-style15">&nbsp;</td>
            </tr>
           
           
            <tr>
                 <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13"><strong>Payment Type :</strong></td>
                <td class="auto-style14">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style11"></asp:Label>
                </td>
                 <td class="auto-style15">&nbsp;</td>
            </tr>
              <tr>
                 <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13"><strong>Status :</strong></td>
                <td class="auto-style14">
                    Paid
                </td>
                 <td class="auto-style15">&nbsp;</td>
            </tr>
           </table>
              </div>
          <table>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13" colspan="2">
                    <asp:Button ID="Button1" runat="server" Height="33px" CssClass="btn btn-black py-3 px-5" Text="download Invoice" Width="195px" class="priya" OnClientClick="printDiv()" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
          </div></section>
</asp:Content>

