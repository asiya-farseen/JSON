using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ajaxDemo
{
    public partial class loadMoreOption : System.Web.UI.Page
    {
      static string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        int num;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                num = 2;
                ViewState["num"] = num;
                BindRepeaterwithDB(num);
            }
        }
        void BindRepeaterwithDB(int NoofRows)
        {



            int rowCount = GetTotalRow();



            if (NoofRows > rowCount)
            {
                btnLoadMore.Visible = false;
            }
            SqlConnection con = new SqlConnection(cs);
            string query = "select top(@val) * from student";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@val", NoofRows);
            DataTable data = new DataTable();
            sda.Fill(data);



            if (data.Rows.Count > 0)
            {
                repeater.DataSource = data;
                repeater.DataBind();
            }
            else
            {
                repeater.DataSource = null;
                repeater.DataBind();
            }
        }
        
        int GetTotalRow()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select count(*) from student";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int rowCount = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return rowCount;
        }

        protected void btnLoadMore_Click(object sender, EventArgs e)
        {

            int numValue = Convert.ToInt32(ViewState["num"]) + 2;
            BindRepeaterwithDB(numValue);
            ViewState["num"] = numValue;
        }
    }
}

