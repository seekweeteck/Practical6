using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;

namespace Practical6
{
    public class BasePage : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            if (Session["lang"]==null)
            {
                //Set default language to English
                Session["lang"] = "en";
            }

            string lang = Convert.ToString(Session["lang"]);
            string culture = string.Empty;

            if (lang.ToLower().CompareTo("ms") == 0 || string.IsNullOrEmpty(culture))
            {
                culture = "ms-MY";
            }
            else
            {
                culture = "en-US";
            }

            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);

            base.InitializeCulture();
        }
    }
}