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

public partial class yonetim_personelDuzenle : System.Web.UI.Page
{
    // bismillahirrahmanirrahim 
    // muhtemel oglum ahmet kağan a sevgilerim le 

    SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
       // akademikSec.Items.Add("__Lütfen Seçiniz__");
    }
    protected void akademikSec_SelectedIndexChanged(object sender, EventArgs e)
    {  
        Session["personelID"] = akademikSec.SelectedValue.ToString();
        String personelID = akademikSec.SelectedValue.ToString();
        Panel1.Visible = true;
        baglanti.Open();
        SqlCommand Sqlcik = baglanti.CreateCommand();
        Sqlcik.CommandText = "SELECT * FROM personel WHERE id = '" +personelID+ "' ";

        SqlDataAdapter arakla = new SqlDataAdapter(Sqlcik);
        DataSet verileriCek = new DataSet();
        arakla.Fill(verileriCek);
        FCKeditor1.Value = verileriCek.Tables[0].Rows[0]["sayfasi"].ToString();
        personelAdi.Text = verileriCek.Tables[0].Rows[0]["adiSoyadi"].ToString();
        kadroSec.SelectedValue = verileriCek.Tables[0].Rows[0]["kadroTuru"].ToString();
        String webAdres = verileriCek.Tables[0].Rows[0]["id"].ToString();
        personelAdres.Text = "personelGoster.aspx?id=" +webAdres+ " ";
        baglanti.Close();
        
    }
    protected void idariSec_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["personelID"] = idariSec.SelectedValue.ToString();
        String personelID = idariSec.SelectedValue.ToString();
        Panel1.Visible = true;
        baglanti.Open();
        SqlCommand Sqlcik = baglanti.CreateCommand();
        Sqlcik.CommandText = "SELECT * FROM personel WHERE id = '" +personelID+ "' ";
        SqlDataAdapter arakla = new SqlDataAdapter(Sqlcik);
        DataSet verileriCek = new DataSet();
        arakla.Fill(verileriCek);
        FCKeditor1.Value = verileriCek.Tables[0].Rows[0]["sayfasi"].ToString();
        personelAdi.Text = verileriCek.Tables[0].Rows[0]["adiSoyadi"].ToString();
        kadroSec.SelectedValue = verileriCek.Tables[0].Rows[0]["kadroTuru"].ToString();
        String webAdres = verileriCek.Tables[0].Rows[0]["id"].ToString();
        personelAdres.Text = "MakaleGoster.aspx?id=" +webAdres+ " ";
        baglanti.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        String personelID = Session["personelID"].ToString();
        SqlCommand Sqlcik = baglanti.CreateCommand();
        Sqlcik.CommandText = "UPDATE personel SET adiSoyadi = '"+personelAdi.Text+"' , kadroTuru = '" +kadroSec.SelectedValue+ "' ,sayfasi= @habercik WHERE id ='"+personelID+"' " ;

        SqlParameter habercik = new SqlParameter();
        habercik.DbType = System.Data.DbType.String;
        habercik.ParameterName = "habercik";
        habercik.Value = FCKeditor1.Value;
        Sqlcik.Parameters.Add(habercik);


        Sqlcik.ExecuteNonQuery();
        baglanti.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        String id = Session["personelID"].ToString();
        SqlCommand cmdSql = baglanti.CreateCommand();
        cmdSql.CommandText = "DELETE FROM personel WHERE id = '" + id + "' ";
        cmdSql.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect("eklendi.aspx");
    }
}
