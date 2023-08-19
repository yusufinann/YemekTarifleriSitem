using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];

            SqlCommand komut = new SqlCommand("select*from Tbl_Mesajlar where Mesajid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAdSoyad.Text = dr[1].ToString();
                TxtMailAdresi.Text = dr[3].ToString();
                TxtMesajBaslik.Text = dr[2].ToString();
                TxtMesajicerik.Text = dr[4].ToString();

            }
            bgl.baglanti().Close();
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {

        }
    }
}