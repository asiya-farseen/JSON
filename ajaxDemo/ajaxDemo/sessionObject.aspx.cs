using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ajaxDemo
{
    public partial class sessionObject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Response.Write("welcome " + Session["name"].ToString());
                Label1.Text = Session["name"].ToString();
                Session.Timeout = 1;
            }
            else
            {
                Response.Redirect("listS.aspx");

            }
        }


    }
}