using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class Global : System.Web.UI.Page
    {
        protected void Page_Int(object sender, EventArgs e)
        {
            //Apply theme
            HtmlLink csslink = new HtmlLink();

            string themeName = Session["SelectedCss"].ToString();
            csslink.Href = themeName + ".css";
            csslink.Attributes.Add("rel", "stylesheet");
            csslink.Attributes.Add("type", "text/css");
            Page.Header.Controls.Add(csslink);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            lblVisitorCount.Text = Application["Count"].ToString();
            lblVisitDateTime.Text = DateTime.Now.ToShortDateString();
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (chkRemember.Checked)
            {
                Session["SelectedCss"] = ddlTheme.SelectedItem.Text.Trim();

                // Create the cookie object.
                HttpCookie cookie = new HttpCookie("Themes");
                // Set a value in it.
                
                cookie["theme"] = ddlTheme.SelectedItem.Text + ".css";
                // This cookie lives for one year.
                cookie.Expires = DateTime.Now.AddDays(30);
                Response.Write("Theme selected: " + cookie["theme"]);
            }
        }
    }
}