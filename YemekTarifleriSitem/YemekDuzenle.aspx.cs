using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleriSitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            ID = Request.QueryString["Yemekid"];//veri taşıma işlemi için

            if (Page.IsPostBack == false)//****Sayfayı yeniden yükleme demek.Yani bir kere yükledin, daha sora o haliyle al at demek.(30.DERS)****
            {

                //Seçilen Yemeği bilgileriyle birlikte Yemek Duzenle sayfasına çekelim: (*** 35.Ders ***)
                SqlCommand komut = new SqlCommand("select*from Tbl_Yemekler where Yemekid=@p1 ", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", ID);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtYemekAd.Text = dr[1].ToString();
                    TxtMalzemeler.Text = dr[2].ToString();
                    TxtYemekTarif.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }

            if (Page.IsPostBack == false)//****Sayfayı yeniden yükleme demek.Yani bir kere yükledin, daha sora o haliyle al at demek.(36.DERS)****
            {
                //Yemek Kategorilerini DropDownList e çekelim:
                SqlCommand komutDropDownList = new SqlCommand("select*from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader çek = komutDropDownList.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = çek;
                DropDownList1.DataBind();

            }


        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName)); //FileUupload ile resim yükleme

            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4,YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", TxtYemekTarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", ID);
            komut.Parameters.AddWithValue("@p6", "~/resimler/"+FileUpload1.FileName);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yemek Güncelleme İşlemi Yapıldı!");

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            
            //Tüm Yemeklerin Durumunu False Yaptık;
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Günün Yemeği Eklendi!");

            
            //Günün Yemeği için id ye göre Durumu True Yapalım;
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set Durum=1 where Yemekid=@k1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@k1", ID);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Günün Yemeği Eklendi!");


        }
    }
}