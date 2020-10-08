using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class Invoice : System.Web.UI.Page
    {
        //Service reference to use service functions 
        GroupServiceClient SR = new GroupServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Check for url parameter 
            int orderID = 1/*Convert.ToInt32(Request.QueryString["ID"])*/;

            //If url parameter is passed 
            if (orderID > 0)
            {
                string display = "";
                //Get all items of the invoice 
                dynamic items = SR.getAllItems1(orderID);

                foreach (Order_Item i in items)
                {
                    GroupServiceReference.Product product = SR.GetProduct(i.Product_Id);

                    //Display details of each item of invoice fetched 
                    display += "<tr><td class='product-col'>" + product.Name + "</td>";
                    display += "<td class='price-col'>" + Math.Round(product.Unit_Price, 2) + "</td>";
                    display += "<td class='quan-col'>" + i.Quantity + "</td>";
                    display += "<td class='total-col'>R" + Math.Round(product.Unit_Price * i.Quantity, 2) + "</td></tr>";
                    product = null;

                }
                invoiceItems.InnerHtml = display;

                var invoice = SR.GetInvoice(orderID);

                totalID.Text += Convert.ToString(Math.Round(invoice.Order_Total));
                taxID.Text += Convert.ToString(Math.Round(invoice.Order_Tax));
                shipID.Text += Convert.ToString(Math.Round(invoice.Order_Shipping));
                discountID.Text += Convert.ToString(Math.Round(invoice.Order_Discount));
                grandTID.Text += Convert.ToString(Math.Round(invoice.Order_Total + invoice.Order_Tax + invoice.Order_Shipping + invoice.Order_Discount));
            }
        }
    }
}