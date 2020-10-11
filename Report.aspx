<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Group_MaskInc_FrontEnd.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="report-page">
        <div class="container">
            <div class="report-table">
                <!------------------------- Invoice details ------------------------->
                <table>
                    <thead>
                        <tr>
                            <%--<th class="product-h">Product</th>
                            <th class="pro-price">Unit Price</th>
                            <th class="quan">Quantity</th>
                            <th class="total">Product Total</th>--%>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody runat="server" id="reportItems"></tbody>
                </table>

                <table>
                    <thead>
                        <tr>
                            <%--<th class="product-h">Product</th>
                            <th class="pro-price">Unit Price</th>
                            <th class="quan">Quantity</th>
                            <th class="total">Product Total</th>--%>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody runat="server" id="reportItems1"></tbody>
                </table>
            </div>
        </div>
    </div>

    <!------ END REPORTS PAGE ------>
</asp:Content>
