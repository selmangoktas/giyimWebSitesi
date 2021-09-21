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

public partial class yonetim_personelEkle : System.Web.UI.Page
{
    // bismillahirrahmanirrahim 
    // muhtemel oglum ahmet kağan a sevgilerim le 

    SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        baglanti.Open();
        SqlCommand Sqlcik = baglanti.CreateCommand();
        Sqlcik.CommandText = "INSERT INTO personel (adiSoyadi,sayfasi,kadroTuru) VALUES ('" + personelAdi.Text + "' , @habercik,'" + kadroSec.SelectedValue + "')";

        SqlParameter habercik = new SqlParameter();
        habercik.DbType = System.Data.DbType.String;
        habercik.ParameterName = "habercik";
        habercik.Value = FCKeditor1.Value;
        Sqlcik.Parameters.Add(habercik);
        
        Sqlcik.ExecuteNonQuery();
        Response.Redirect("eklendi.aspx");
        baglanti.Close();

    }
}
