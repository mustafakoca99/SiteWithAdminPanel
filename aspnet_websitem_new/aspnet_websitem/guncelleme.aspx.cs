using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace aspnet_websitem
{
    public partial class guncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("guncelleme.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text == TextBox6.Text && TextBox1.Text!=""||TextBox2.Text!="" ||TextBox3.Text!="" ||TextBox4.Text!="" ||TextBox5.Text!="" ||TextBox6.Text!="")
            {
                try
                {
                    string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=mustafakoca";
                    MySqlConnection baglanti = new MySqlConnection(bag);
                    //string strsql = "insert into kayit (idkayit,kayit_ad_soyad,kayit_email,kayit_tel,kayit_sifre,kayit_sifre_tekrar) values (?idkayit,?kayit_ad_soyad,?kayit_email,?kayit_tel,?kayit_sifre,?kayit_sifre_tekrar)";
                    string strsql = "UPDATE kayit SET kayit_ad_soyad=?kayit_ad_soyad, kayit_email = ?kayit_email, kayit_tel = ?kayit_tel, kayit_sifre=?kayit_sifre, kayit_sifre_tekrar=?kayit_sifre_tekrar WHERE idkayit = ?idkayit";
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
                    Label7.Text = "Güncelleme başarılı...";
                }
                catch (Exception)
                {
                    Response.Write("HATA!");
                }
            }
            else
            {
                Label7.Text = "ŞİFRELER AYNI DEĞİL VEYA ALANLAR BOŞ!!!!";
                Response.Write("ŞİFRELER AYNI DEĞİL VEYA ALANLAR BOŞ!!!!");
            }
        }
    }
}