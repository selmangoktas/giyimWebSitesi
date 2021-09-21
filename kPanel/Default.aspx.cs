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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
 firmaAdi.Text = ConfigurationManager.AppSettings["DefaultBaslik"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       
        //baglanti.Open();
       // Mesaj.Text = "baglanti kuruldu";
        string sorgu = @"SELECT * FROM kullanicilar WHERE kullanici_adi='" + adi.Text + "' AND sifre='" + sifre.Text + "' ";

        //SqlDataReader oku = new SqlDataReader();
        //genelKullanim.SorguOkuma(sorgu,oku);

        DataTable Okuma = genelKullanim.DataTableGetir(sorgu);

        //baglanti.Open();
        if (Okuma.Rows.Count != 0)
        {
            Session["kullanici_adi"] = Okuma.Rows[0]["adi_soyadi"].ToString();
            Session["yetkiTuru"] = Okuma.Rows[0]["yetkiTuru"].ToString();
            Session["kkkid"] = Okuma.Rows[0]["id"].ToString();
            Response.Redirect("panel.aspx");
        }

        else
        {
            Mesaj.Text = "Böyle bir kullanıcı bulunamadı !!!";
        }
        //oku.Close();
       // baglanti.Close();
    }
}

