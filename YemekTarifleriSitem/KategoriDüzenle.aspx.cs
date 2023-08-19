using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";   //veri taşıma
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];//veri taşıma işlemi için
            if (Page.IsPostBack == false)//****Sayfayı yeniden yükleme demek.Yani bir kere yükledin, daha sora o haliyle al at demek.(30.DERS)****
            {
                SqlCommand komut = new SqlCommand("select*from Tbl_Kategoriler where Kategoriid=@p1 ", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtKategoriAd.Text = dr[1].ToString();
                    TxtKategoriAdet.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();


            }


        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@k1,KategoriAdet=@k3 where Kategoriid=@k3", bgl.baglanti());
            komut.Parameters.AddWithValue("@k1", TxtKategoriAd.Text);
            komut.Parameters.AddWithValue("@k2", TxtKategoriAdet.Text);
            komut.Parameters.AddWithValue("@k3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Kategori Düzenlendi!");




        }
    }
}