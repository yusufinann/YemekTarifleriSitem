using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";   // veri taşıma** (38. Ders)
        string islem = "";//Parametre için.(Yemekler.aspx in kaynak kısmında parametre tanımlamıştık.)
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            Panel3.Visible = false;
            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];  //Parantez içine Yemekid=<%#Eval("Yemekid")%> kısmının Evalden bir önceki yazan kısmı yazıyoz(Yemekid).
                islem = Request.QueryString["islem"];
            }
            

            //Yemek Listesi
            SqlCommand komut = new SqlCommand("select*from Tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            if (Page.IsPostBack == false)   //**** 34.ders ****
            {
                //Kategori Listesi (Kategorileri DropDown'a çekelim.)
                SqlCommand komut2 = new SqlCommand("select*from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

             }


            //Admin Panelindeki Kategori Silme işlemi için
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Yemekler where Yemekid=@k1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@k1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Yemek Silindi");

            }


        }


        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName)); //FileUupload ile resim yükleme
            //Yemek Ekleme
            SqlCommand komutekle = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid,YemekResim)values(@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
            komutekle.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komutekle.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komutekle.Parameters.AddWithValue("@p3", TxtYemekTarif.Text);
            komutekle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komutekle.Parameters.AddWithValue("@p5", "~/resimler/" + FileUpload1.FileName);
            komutekle.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yeni Yemek Eklendi!");

            //Yemek eklediğimde Kategori Sayısını 1 arttırma;
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@k1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@k1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}