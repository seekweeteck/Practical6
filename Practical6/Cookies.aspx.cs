using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Int(object sender, EventArgs e)
        {
            //Apply theme
            HtmlLink csslink = new HtmlLink();
            csslink.Href = "~/Standard.css";
            csslink.Attributes.Add("rel", "stylesheet");
            csslink.Attributes.Add("type", "text/css");
            Page.Header.Controls.Add(csslink);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Create the cookie object.
            HttpCookie cookie = new HttpCookie("LocaleCookies");
            // Set a value in it.
            cookie["language"] = "ms";
            // Add another value.
            cookie["country"] = "MY";
         
            // This cookie lives for one year.
            cookie.Expires = DateTime.Now.AddYears(1);
        }

        protected void btnShowLanguageCode_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["LocaleCookies"];
            //Check existence of cookie
            if (cookie != null)
            {
                string language, country;

                if (cookie["language"]!=null && cookie["country"] != null)
                { 
                    language = cookie["language"];
                    country = cookie["country"];
                    lblLanguage.Text = country + "[" + language + "]";
                }  
                
            }
        }
    }
}