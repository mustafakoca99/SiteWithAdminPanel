using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=webgubyo";
            MySqlConnection baglanti = new MySqlConnection(bag);
            string strsql = "insert into kayit (idkayit,kayit_ad_soyad,kayit_email,kayit_tel,kayit_sifre,kayit_sifre_tekrar) values (?idkayit,?kayit_ad_soyad,?kayit_email,?kayit_tel,?kayit_sifre,?kayit_sifre_tekrar)";
            MySqlCommand komut = new MySqlCommand(strsql, baglanti);
            komut.Parameters.AddWithValue("?idkayit", TextBox1.Text);
            komut.Parameters.AddWithValue("?kayit_ad_soyad", TextBox2.Text);
            komut.Parameters.AddWithValue("?kayit_email", TextBox3.Text);
            komut.Parameters.AddWithValue("?kayit_tel", TextBox4.Text);
            komut.Parameters.AddWithValue("?kayit_sifre", TextBox5.Text);
            komut.Parameters.AddWithValue("?kayit_sifre_tekrar", TextBox6.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Label7.Text = "yönetici kayıt başarılı...";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit.aspx");
        }
    }
}