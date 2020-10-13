using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class Report : System.Web.UI.Page
    {
        //Service reference to use service functions 
        GroupServiceClient SR = new GroupServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, string> myStats = SR.getBasicStats(DateTime.Now);
            string displayStats = "";

            foreach (KeyValuePair<string, string> valuePair in myStats)
            {
                // displayStats += "<td class='display-col'>" + valuePair.Key + " " + valuePair.Value + "</td>";
                displayStats += "<tr><td class='display-col-1'>" + valuePair.Key + "</td>";
                displayStats += "<td class='display-col-2'>" + valuePair.Value + "</td>";
            }
            report1.InnerHtml = displayStats;

            Dictionary<string, string> myStats1 = SR.getStats(DateTime.Now.AddDays(-30), DateTime.Now);
            string displayStats1 = "";

            foreach (KeyValuePair<string, string> valuePair in myStats1)
            {

                displayStats1 += "<tr><td class='display-col-1'>" + valuePair.Key + "</td>";
                displayStats1 += "<td class='display-col-2'>" + valuePair.Value + "</td>";
            }
            reportItems1.InnerHtml = displayStats1;
        }
    }
}