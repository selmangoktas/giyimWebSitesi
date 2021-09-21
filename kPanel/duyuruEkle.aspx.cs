using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

public partial class kpannel_haberEkle : System.Web.UI.Page
{
    // bismillahirrahmanirrahim 
    // muhtemel oglum ahmet kağan a sevgilerim le 

    SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

       //Session.CodePage = 1254;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

         baglanti.Open();

                String bosTarih ="";
         //if (haber_tarihi.SelectedDate.ToString() != "")
         //{
         //    bosTarih = haber_tarihi.TodaysDate.ToShortDateString();
         //    //etk_tarihi = etk_tarihi.TodaysDate.ToString();
         //}
         //else
         //{
         //    bosTarih = haber_tarihi.SelectedDate.ToShortDateString();

         //}









                bosTarih = DateTime.Now.Date.ToString();
        
            SqlCommand cmdSql = baglanti.CreateCommand();
            String deneme = haber_konusu.Value.ToString();
           // cmdSql.Parameters.AddWithValue("@Metin", karakter.fckReplace(FCKeditor1.Value));
            cmdSql.CommandText = "INSERT INTO duyurular ( haber_baslik,haber_tarihi,onay_durumu,haber_konusu,secim) VALUES (@baslikli ,'" + bosTarih + "' ,'" +cekBalim.Checked + "' , @habercik,"+RadioButtonList1.SelectedValue+")";



        SqlParameter habercik = new SqlParameter();
habercik.DbType = System.Data.DbType.String;
habercik.ParameterName = "habercik";
habercik.Value = haber_konusu.Value;
cmdSql.Parameters.Add(habercik);

SqlParameter baslikli = new SqlParameter();
baslikli.DbType = System.Data.DbType.String;
baslikli.ParameterName = "baslikli";
baslikli.Value = haberBaslik.Value;
cmdSql.Parameters.Add(baslikli);



            cmdSql.ExecuteNonQuery();
          
            baglanti.Close();
            Response.Redirect("eklendi.aspx");
      
       
       
    }
}
