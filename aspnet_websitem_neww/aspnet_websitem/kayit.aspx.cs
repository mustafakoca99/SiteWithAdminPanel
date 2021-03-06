﻿using System;
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
    public partial class kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection baglanti = new SqlConnection("server=localhost;user id=root;password=root;persistsecurityinfo=True;database=mustafakoca");
            //int id;
            //string telefon,vadsoyad,email,sifre,sifretekrar;
            ////string vsoyad;
            //id = Convert.ToInt32(TextBox1.Text);
            //vadsoyad = TextBox2.Text;
            //email = TextBox3.Text;
            //telefon = TextBox4.Text;
            //sifre = TextBox5.Text;
            //sifretekrar = TextBox6.Text;

            //baglanti.Open();
            //SqlCommand kayit = new SqlCommand("insert into kayit(idkayit,kayit_ad_soyad,kayit_email,kayit_tel,kayit_sifre,kayit_sifre_tekrar) values(@id,@vadsoyad,@email,@telefon,@sifre,@sifretekrar)", baglanti);
            //kayit.Parameters.Add("id", id);
            //kayit.Parameters.Add("vadsoyad", vadsoyad);
            //kayit.Parameters.Add("email", email);
            //kayit.Parameters.Add("telefon", telefon);
            //kayit.Parameters.Add("sifre", sifre);
            //kayit.Parameters.Add("sifretekrar", sifretekrar);
            //kayit.ExecuteNonQuery();
            //baglanti.Close();

            //Response.Redirect("kayit.aspx");

            if (CheckBox1.Checked==true)
            {
                if (TextBox5.Text == TextBox6.Text)
                {
                    try
                    {
                        string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=mustafakoca";
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
                    catch (Exception)
                    {
                        Label7.Text="yönetici kayıt hata...";
                    }
                }
                else
                {
                    Label7.Text = "yönetici şifreler aynı değil...";
                }
            }
            else
            {
                if (TextBox5.Text == TextBox6.Text)
                {
                    try
                    {
                        string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=mustafakoca";
                        MySqlConnection baglanti = new MySqlConnection(bag);
                        string strsql = "insert into kullanicikayit (idkullanicikayit,kullanicikayitadsoyad,kullanicikayitmail,kullanicikayittel,kullanicikayitsifre,kullanicikayitsifretekrar) values (?idkayit,?kayit_ad_soyad,?kayit_email,?kayit_tel,?kayit_sifre,?kayit_sifre_tekrar)";
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
                        Label7.Text = "kullanıcı kayıt başarılı...";
                    }
                    catch (Exception)
                    {
                        Label7.Text = "kullanıcı kayıt hata...";
                    }
                }
                else
                {
                    Label7.Text = "kullanıcı şifreler aynı değil...";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit.aspx");
        }
    }
}