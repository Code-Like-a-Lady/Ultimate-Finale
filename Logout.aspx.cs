using Group_MaskInc_FrontEnd.GroupServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_MaskInc_FrontEnd
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        GroupServiceClient sr = new GroupServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["LoggedInUserID"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}