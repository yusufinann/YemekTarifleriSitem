using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public class sqlsinif
    {
        public  SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-M1F4IS3\\SQLEXPRESS01;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
        


    }
}