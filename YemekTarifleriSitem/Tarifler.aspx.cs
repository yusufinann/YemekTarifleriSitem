using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleriSitem
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlsinif bgl =new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            Panel3.Visible= false;
            //Onaylanmayı bekleyen Tarif önerileri
            SqlCommand komut = new SqlCommand("select*From Tbl_Tarifler where TarifDurum=0", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource=dr;
            DataList2.DataBind();

            //Onaylanan Tarif önerileri
            SqlCommand komut2 = new SqlCommand("select*From Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList1.DataSource = dr2;
            DataList1.DataBind();
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
    }
}