<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Group_MaskInc_FrontEnd.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="report-page">
        <div class="container">
           <div class="row">
               
             <div class="column1">
                <!------------------------- Invoice details ------------------------->
              
                             
                          
                  
                <table>
                 
                    <thead>
                        
                        <tr>
                              
                            <%--<th class="product-h">Product</th>
                            <th class="pro-price">Unit Price</th>
                            <th class="quan">Quantity</th>
                            <th class="total">Product Total</th>--%>
                            <th class='display-col-1'>Key </th>
                             <th class='display-col-2'>Value</th>
                        </tr>
                    </thead>
                    <tbody runat="server" id="report1">

                    </tbody>
                      <caption>MaskInc data collected from the start </caption>
                </table>
             
           </div>






               <div class="column">
                   

                  <table>
                  
                    <thead>
                        
                        <tr>
                             
                            <%--<th class="product-h">Product</th>
                            <th class="pro-price">Unit Price</th>
                            <th class="quan">Quantity</th>
                            <th class="total">Product Total</th>--%>
                            <th class='display-col-1'>Key </th>
                             <th class='display-col-2'>Value</th>
                        </tr>
                    </thead>
                    <tbody runat="server" id="reportItems1">

                    </tbody>
                          <caption>MaskInc data collected between a the beginnig  and end of the month </caption>
                </table>
          </div>
             
               
           
      </div>
    </div>
    </div>
    <!------ END REPORTS PAGE ------>
</asp:Content>
