using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ajaxDemo
{
    public partial class loadMore : System.Web.UI.Page
    {
        static string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con;
            SqlCommand cmd = new SqlCommand();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
            cmd.Connection = con;
            cmd.CommandText = "select * from student";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }
    }
}