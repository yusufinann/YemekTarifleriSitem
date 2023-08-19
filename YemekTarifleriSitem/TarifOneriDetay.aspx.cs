using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class TarifOneriDetay : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select*from Tbl_Tarifler where Tarifid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtTarifAd.Text = dr[1].ToString();
                TxtTarifMalzeme.Text = dr[2].ToString();
                TxtYapilis.Text = dr[3].ToString();
                TxtTarifOneren.Text = dr[5].ToString(); 
                TxtOnerenMail.Text = dr[6].ToString();  
            }
            bgl.baglanti().Close();

            

                //Kategori Listesi (Kategorileri DropDown'a çekelim.)
                SqlCommand komut2 = new SqlCommand("select*from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Onayla butonuna basarak Durum Güncellemesi Yapılsın;
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where Tarifid=@t1", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close() ;
            Response.Write("Tarif Onaylandı ve Anasayfaya Eklendi!");

            //Onaylanan Tarif Anasayfaya Eklensin;

            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtTarifMalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close() ;





        }
    }
}