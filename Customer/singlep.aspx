<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Home.master" AutoEventWireup="true" CodeFile="singlep.aspx.cs" Inherits="Customer_singlep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <%-- <div id="preloder">
		<div class="loader"></div>--%>
	    <asp:HiddenField ID="HiddenField1" runat="server" />
	<%--</div>--%>

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span></span></p>
            <h1 class="mb-0 bread">Product</h1>
          </div>
        </div>
      </div>
    </div>


     <section class="ftco-section contact-section bg-light">
      <div class="container">
          <div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="images/product-1.jpg" class="image-popup">
              <asp:Image ID="Image1" runat="server" CssClass="img-fluid" />
                        </a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3>
    				
    				<p class="price"><span>Rs<asp:Label ID="Label2" runat="server" Text=""></asp:Label></span></p>
    				<p><asp:Label ID="Label3" runat="server" Text=""></asp:Label></p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
		              <div class="select-wrap">
	                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                  <select name="" id="" class="form-control">
	                  	<option value="">Small</option>
	                    <option value="">Medium</option>
	                    <option value="">Large</option>
	                    <option value="">Extra Large</option>
	                  </select>
	                </div>
		            </div>
							</div>
							<div class="w-100"></div>
							<div class="input-group col-md-6 d-flex mb-3">
	             	<span class="input-group-btn mr-2">
	                	
	            		</span>
	             	<asp:TextBox ID="TextBox1" runat="server" Text="1" TextMode="Number" AutoPostBack="True" CssClass="auto-style2" Width="78px" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox><span class="input-group-btn ml-2">
	                	
	             	</span>
	          	</div>
	          	
	          	<div class="col-md-12">
	          		<p style="color: #000;">enter in kgs</p>
	          	</div>
<div class="w-100">Total Amount : Rs <asp:Label ID="Label5" runat="server" Text=""></asp:Label></div>
          	</div>
          	<p>
              <asp:Button ID="Button1" runat="server" Text="Add To Cart" CssClass="btn btn-black py-3 px-5" OnClick="Button1_Click" /></p>
    			</div>
              
         <asp:Label ID="Label4" runat="server" Text="" ForeColor="Red"></asp:Label>
    		</div>
          </div>
         </section>
</asp:Content>

