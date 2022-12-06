using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace teknik_sozluk
{
    public partial class sablon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAra_Click(object sender, EventArgs e)
        {

            Session["Arama"] = TxtAra.Text;

            Response.Redirect("Arama_Sonuc.aspx");


        }
    }
}