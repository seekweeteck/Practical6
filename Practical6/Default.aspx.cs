using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class Default : System.Web.UI.Page
    {
        string _str = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblShowString.Text = _str;
            if (Session["str"]!=null)
            {
                lblShowStringAsSessionState.Text = Session["str"].ToString();
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Store string in a page variable
            _str = txtInput.Text;
            //Store string in a Session object
            Session["str"] = txtInput.Text;

            lblShowString.Text = _str;
            lblShowStringAsSessionState.Text = Session["str"].ToString();
        }
    }
}