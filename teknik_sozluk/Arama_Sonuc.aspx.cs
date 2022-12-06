using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace teknik_sozluk
{
    public partial class Arama_Sonuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection teknik_sozlukConnectionString = new SqlConnection();

            teknik_sozlukConnectionString.ConnectionString = ConfigurationManager.ConnectionStrings["teknik_sozlukConnectionString"].ConnectionString;

            string selectsorgusu = string.Format("select ingilizce,turkce from terim where ingilizce like '%{0}%' or turkce like '%{0}%' ", Session["Arama"].ToString());

            SqlDataAdapter sorgu = new SqlDataAdapter(selectsorgusu, teknik_sozlukConnectionString);

            DataTable tablo = new DataTable();

            sorgu.Fill(tablo);

            GridView1.DataSource = tablo;

            GridView1.DataBind();

        }
    }
}