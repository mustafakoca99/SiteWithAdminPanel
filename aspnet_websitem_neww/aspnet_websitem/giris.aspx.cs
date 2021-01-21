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
    public partial class giris : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked==true)
            {
                string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=mustafakoca";
                try
                {
                    //MySqlConnection baglanti = new MySqlConnection(bag);
                    //string strsql = "select * from kayit where kayit_email=?kayit_email and kayit_sifre=?kayit_sifre";
                    //MySqlCommand komut = new MySqlCommand(strsql, baglanti);
                    //komut.Parameters.AddWithValue("?kayit_email", txtmail.Text);
                    //komut.Parameters.AddWithValue("?kayit_sifre", txtsifre.Text);
                    //komut.Parameters["?kayit_email"].Value = txtmail.Text;
                    //komut.Parameters["?kayit_sifre"].Value = txtsifre.Text;
                    //Label3.Text = "giriş başarılı...";
                    MySqlDataReader dr;
                    MySqlConnection baglanti = new MySqlConnection(bag);
                    baglanti.Open();
                    string strsql = "select * from kayit where kayit_email='" + txtmail.Text + "' and kayit_sifre='" + txtsifre.Text + "'";
                    MySqlCommand komut = new MySqlCommand(strsql, baglanti);
                    dr = komut.ExecuteReader();
                    if (dr.Read())
                    {
                        Label3.Text = "yönetici giriş başarılı...";
                        Response.Redirect("adminpanel.aspx");
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

            else
            {
                string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=mustafakoca";
                try
                {
                    MySqlDataReader dr;
                    MySqlConnection baglanti = new MySqlConnection(bag);
                    baglanti.Open();
                    string strsql = "select * from kullanicikayit where kullanicikayitmail='" + txtmail.Text + "' and kullanicikayitsifre='" + txtsifre.Text + "'";
                    MySqlCommand komut = new MySqlCommand(strsql, baglanti);
                    dr = komut.ExecuteReader();
                    if (dr.Read())
                    {
                        Label3.Text = "kullanıcı giriş başarılı...";
                        Response.Redirect("kullanicipanel.aspx");
                    }
                    else
                    {
                        Label3.Text = "kullanıcı adı veya şifre yanlış...";
                    }
                    baglanti.Close();
                }
                catch (Exception)
                {
                    Label3.Text = "kullanıcı giriş başarısız...";
                    //throw;
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("giris.aspx");
        }
    }
}