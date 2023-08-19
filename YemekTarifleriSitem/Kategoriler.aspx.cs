using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string id = "";             //Admin Panelindeki Kategori Silme işlemi için
        string islem = "";         //Silme işlemi için islem adında parametre tanımlamıştık.
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)   //Admin Panelindeki Kategori Silme işlemi için
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }

            //Kategori adlarnı Admin.Master a bağlı olan Kategoriler.aspx webform sayfasındaki datalist'e çekelim;

            SqlCommand komut = new SqlCommand("select*from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
         

            //Admin Panelindeki Kategori Silme işlemi için
            if (islem == "sil")
            {
                SqlCommand komutsil= new SqlCommand("Delete From Tbl_Kategoriler where Kategoriid=@k1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("k1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

            }

            Panel4.Visible = false;
            Panel3.Visible = false;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler(KategoriAd) values(@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}