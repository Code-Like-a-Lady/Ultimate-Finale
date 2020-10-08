<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Group_MaskInc_FrontEnd.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="invoice-page">
        <div class="container">
            <div class="invoice-table">
                <!------------------------- Invoice details ------------------------->
                <table>
                    <thead>
                        <tr>
                            <th class="product-h">Product</th>
                            <th class="pro-price">Unit Price</th>
                            <th class="quan">Quantity</th>
                            <th class="total">Product Total</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody runat="server" id="invoiceItems"></tbody>
                </table>
            </div>
        </div>
        <!------------------------- Total details ------------------------->
        <div class="total-table">
            <table>
                <thead></thead>
                <tbody runat="server" id="Summaries">
                    <tr>
                        <td class="total-col">
                        Total(tax exclusive):<td>
                            <asp:Label ID="totalID" runat="server" Text="R" readonly="true"></asp:Label>
                    </tr>
                    <tr>
                        <td class="tax-col">
                        Tax:<td>
                            <asp:Label ID="taxID" runat="server" Text="R" readonly="true"></asp:Label>
                    </tr>
                    <tr>
                        <td class="shipping-col">
                        Shipping:<td>
                            <asp:Label ID="shipID" runat="server" Text="R" readonly="true"></asp:Label>
                    </tr>
                    <tr>
                        <td class="discount-col">
                        Discount:<td>
                            <asp:Label ID="discountID" runat="server" Text="R" readonly="true"></asp:Label>
                    </tr>
                    <tr>
                        <td class="grandT-col">
                        Grand total:<td>
                            <asp:Label ID="grandTID" runat="server" Text="R" readonly="true"></asp:Label>
                    </tr>
                </tbody>
            </table>
        </div>
        <!------------------------- BUTTON ------------------------->
        <div class="row">
            <div class="col-lg-12 text-right" runat="server" id="goBack">
                <a href="Home.aspx">Go Back</a>
            </div>
        </div>
    </div>
    <!-- Invoice Page End -->

</asp:Content>
