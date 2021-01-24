using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=webgubyo";
            try
            {
                MySqlDataReader dr;
                MySqlConnection baglanti = new MySqlConnection(bag);
                baglanti.Open();
                string strsql = "select * from kayit where kayit_email='" + TextBox1.Text + "' and kayit_sifre='" + TextBox2.Text + "'";
                MySqlCommand komut = new MySqlCommand(strsql, baglanti);
                dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    Label3.Text = "yönetici giriş başarılı...";
                    Response.Redirect("panel.aspx");
                }
                else
                {
                    Label3.Text = "yönetici adı veya şifre yanlış...";
                }
                baglanti.Close();
            }
            catch (Exception)
            {
                Label3.Text = "yönetici giriş başarısız...";
                //throw;
            }

        }
    }
}