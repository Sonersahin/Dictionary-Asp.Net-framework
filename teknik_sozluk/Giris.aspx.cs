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
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {

            SqlConnection baglanti = new SqlConnection();

            baglanti.ConnectionString = ConfigurationManager.ConnectionStrings["teknik_sozlukConnectionString"].ConnectionString;

            string selectsorgusu = string.Format("select * from kullanici where Eposta='{0}' and Sifre='{1}'", TxtEposta.Text, TxtSifre.Text);

            SqlDataAdapter adapter = new SqlDataAdapter(selectsorgusu, baglanti);

            DataTable tablo = new DataTable();

            adapter.Fill(tablo);

            if (tablo.Rows.Count == 0)
            {

                Response.Write("<script>alert('Kullanıcı E-Posta / Şifre Yanlış!!!')</script>");

            }
            else
            {
                Session["KullaniciAdi"] = TxtEposta.Text;
                Response.Redirect("Terim_Ekle.aspx");
            }












        }
    }
}