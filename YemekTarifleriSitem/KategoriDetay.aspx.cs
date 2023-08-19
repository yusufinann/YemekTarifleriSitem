using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace YemekTarifleriSitem
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string kategoriid ="";       //veri taşıma işlemi(anasayfa üzerinde kategoriler kısmında herhangi bri kategoriye tıklayınca ailgili kategoriid li kategoriye yönlendircek.)
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["kategoriid"];

            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where kategoriid=@p1", bgl.baglanti());//ilgili kategoriid li yemekler görüntülenecek.
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            bgl.baglanti().Close();
        }
    }
}