using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspnet_websitem
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string adisoyadi = TextBox1.Text;
            //string eposta = TextBox2.Text;
            //string iletikonusu = TextBox3.Text;
            //string ileti = TextBox4.Text;
            //Response.Redirect("verial.aspx?adi=" + adisoyadi + "&eposta=" + eposta + "&iletikonusu=" + iletikonusu + "&ileti=" + ileti);
            try
            {
                string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=mustafakoca";
                MySqlConnection baglanti = new MySqlConnection(bag);
                string strsql = "insert into iletisim (idiletisim,kitap_ad_soyad,kitap_eposta,kitap_ileti_konusu,kitap_ileti) values (?idiletisim,?kitap_ad_soyad,?kitap_eposta,?kitap_ileti_konusu,?kitap_ileti)";
                MySqlCommand komut = new MySqlCommand(strsql, baglanti);
                komut.Parameters.AddWithValue("?idiletisim", TextBox5.Text);
                komut.Parameters.AddWithValue("?kitap_ad_soyad", TextBox1.Text);
                komut.Parameters.AddWithValue("?kitap_eposta", TextBox2.Text);
                komut.Parameters.AddWithValue("?kitap_ileti_konusu", TextBox3.Text);
                komut.Parameters.AddWithValue("?kitap_ileti", TextBox4.Text);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Write("mesaj gönderimi başarılı...");
            }
            catch (Exception)
            {
                Response.Write("HATA!!!");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("iletisim.aspx");
        }
    }
}