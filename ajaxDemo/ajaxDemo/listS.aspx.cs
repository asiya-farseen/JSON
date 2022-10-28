using AjaxControlToolkit.HtmlEditor.ToolbarButtons;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ajaxDemo
{
    public partial class listS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label1.Text = "You have selected " + ListBox1.SelectedItem.ToString();
           // Label1.Text = "You have selected " + DropDownList1.SelectedItem.ToString();
            //Label1.Visible = true;
            Session["name"] = ListBox1.SelectedItem.ToString();
            //ViewState["password"] = password.Text;
            Response.Redirect("sessionObject.aspx");
        }
    }
}