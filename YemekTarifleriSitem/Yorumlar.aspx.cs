using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlsinif bgl =new sqlsinif();

        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
                Panel4.Visible = false;
                Panel2.Visible = false;
            
           
           

            //Onaylı Yorumları Getirme;
            SqlCommand komut = new SqlCommand("select*from Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
            SqlDataReader dr= komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            //Onaysız Yorumları Getirme;

            SqlCommand komut2 = new SqlCommand("select*from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();

            //Yorum Silme
            id = Request.QueryString["Yorumid"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Yorumlar where Yorumid=@k1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@k1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Yorum Silindi");

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel4.Visible=false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible= true;   
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}