<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="AboutProduct.aspx.cs" Inherits="Group_MaskInc_FrontEnd.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="form1" runat="server">
          <h1><i class="fa fa-cart-plus"></i>&nbsp;About Product</h1>
    <hr />
    <section class="product-page">
        <div class="container">
            <div class="product-control">
                <a href="Catalog.aspx">Previous</a>
                <a href="CheckOut.aspx">Next</a>
            </div>
            <!-- Image will appear in here -->
                <div id="pimage" runat="server">

             </div>
   <div class="mt-10" id="btn_AddtoCart" runat="server">
    
       <asp:Button ID="Button2" runat="server" Height="58px" Text="AddToCart"  OnClick="Unnamed_ServerClick" Width="256px" />
    </div>
    <div class="mt-10" id="btn_removeProduct" runat="server">
     

         <asp:Button ID="Button1" runat="server" Height="57px" Text="Remove Product"  OnClick="Unnamed_ServerClick1" Width="295px" />

    </div>
        </div>                      
    </section>

     <section class="information">
         <!-- product information will come in here -->
                <div id="prod" runat="server">

             </div>
    </section>
      </form>
</asp:Content>
