﻿using Group_MaskInc_FrontEnd.GroupServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_MaskInc_FrontEnd
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        GroupServiceClient sr = new GroupServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {


            dynamic categories = sr.GetallMasktypes();
            dynamic products = sr.GetProductsByMask_Type("Kids");
            string display = " ";
            int n = 0;



            foreach (GroupServiceReference.Product p in products)
            {
                //display 3 masks in a row
                if (n == 3)
                {
                    display += "<div class='row'>";
                    n = 0;
                }
                display += "<div class='col-sm-6 col-lg-4 mb-4' data-aos='fade-up'>";
                display += "<div class='block-4 text-center border'><figure class='block-4-image'>";
                display += "<a href='AboutProduct.aspx?ID=" + p.Product_Id + "'><img src='" + p.Image + "'alt='" + p.Name + "'class=ímg-fluid'></a></figure>";
                display += "<div class='block-4-text p-4'>";
                display += "<h3><a href='AboutProduct.aspx/ID=" + p.Product_Id + "'>" + p.Name + "</a></h3><p class='mb-0>" + p.Description + "</p>";
                display += "<p class='text-primary font-weight-bold'>R " + Math.Round(p.Unit_Price, 2) + "</p>";
                display += "</div></div></div>";
                n++;
            }
            display += "</div>";
            kids.InnerHtml = display;

        }

    }
}