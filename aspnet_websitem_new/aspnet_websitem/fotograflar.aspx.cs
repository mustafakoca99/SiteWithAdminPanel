using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspnet_websitem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = "foto/10.jpg";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = "foto/11.jpg";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = "foto/12.jpg";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = "foto/13.jpg";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = "foto/14.jpg";
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Image2.ImageUrl = "foto/4.jpg";
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Image2.ImageUrl = "foto/5.jpg";
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Image2.ImageUrl = "foto/6.jpg";
        }
    }
}