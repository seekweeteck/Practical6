using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class ChangeStyle : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = Request.QueryString["name"];
            lblProgramme.Text = Request.QueryString["programme"];

            if (!IsPostBack)
            {
                if (Session["lang"]!=null)
                {
                    Response.Write("Language :" + Session["lang"]);
                }
            }
        }
    }
}