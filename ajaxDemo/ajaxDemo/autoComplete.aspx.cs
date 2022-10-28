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
    public partial class autoComplete : System.Web.UI.Page
    {

      static string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]



        public static List<string> GetCompletionList(string prefixText, int count)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from city where cityName like @name +'%'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", prefixText);
            List<string> citynames = new List<string>();
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                citynames.Add(dr["cityName"].ToString());
            }
            con.Close();
            return citynames;
        }

    }

       
    }
