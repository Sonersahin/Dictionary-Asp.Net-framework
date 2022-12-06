using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace teknik_sozluk
{
    public partial class Terim_Ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["KullaniciAdi"]!= null)
            {

                LblKullanici.Text = "Hoşgeldin" + Session["KullaniciAdi"].ToString();
                BtnCikisYap.Visible = true;
            }
            else
            {
                Response.Redirect("Giris.aspx");
            }




        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            if (TxtTurkce.Text != "" && Txtİngilizce.Text != "")
            {



                int deger = SqlDataSource1.Insert();

                if (deger > 0)
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                }
                else
                {
                    Panel1.Visible = false;
                }
            }
            else
            {
                Panel2.Visible = true;
                Txtİngilizce.Focus();
            }
        }

        protected void BtnCikisYap_Click(object sender, EventArgs e)
        {

            Session["KullaniciAdi"] = null;

            Response.Redirect("Default.aspx");

        }
    }
}