using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {

            
            SqlCommand komut = new SqlCommand("select*from Tbl_Hakkımızda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
            }
        }


        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Hakkımızda set Metin=@m1", bgl.baglanti());
            komut.Parameters.AddWithValue("@m1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti() .Close();
            Response.Write("Güncelleme Yapıldı!");
        }
    }
}