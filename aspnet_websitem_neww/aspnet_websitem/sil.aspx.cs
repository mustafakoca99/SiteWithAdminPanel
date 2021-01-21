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
    public partial class sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string bag = "server=localhost;user id=root;password=root;persistsecurityinfo=True;database=mustafakoca";
                MySqlConnection baglanti = new MySqlConnection(bag);
                string strsql = "DELETE FROM kayit WHERE idkayit=?idkayit";
                MySqlCommand komut = new MySqlCommand(strsql, baglanti);
                komut.Parameters.AddWithValue("?idkayit", TextBox1.Text);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                Label2.Text = "Silme işlemi başarılı :)";
            }
            catch (Exception)
            {
                Label2.Text = "Hata!";
              //  throw;
            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("sil.aspx");
        }
    }
}