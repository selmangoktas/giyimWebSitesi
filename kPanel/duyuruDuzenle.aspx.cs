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

public partial class yonetim_duyuruDuzenle : System.Web.UI.Page
{
    // bismillahirrahmanirrahim 
    // muhtemel oglum ahmet kağan a sevgilerim le 

    SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        
                   
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;

        String idNo = Request.QueryString["ID"];
        baglanti.Open();
        SqlCommand cmdSql = baglanti.CreateCommand();
        cmdSql.CommandText = " SELECT * FROM duyurular  WHERE haber_id = '"+idNo+"' ";
        SqlDataAdapter arakla = new SqlDataAdapter(cmdSql);
        DataSet verileriCek = new DataSet();
        arakla.Fill(verileriCek);
       //String sayfaAdi = verileriCek.Tables[0].Rows[0]["haber_id"].ToString();
        haberBaslik.Value  = verileriCek.Tables[0].Rows[0]["haber_baslik"].ToString();
        FCKeditor1.Value = verileriCek.Tables[0].Rows[0]["haber_konusu"].ToString();
        haberTarihi.Text = verileriCek.Tables[0].Rows[0]["haber_tarihi"].ToString();
        String onay = verileriCek.Tables[0].Rows[0]["onay_durumu"].ToString();
        RadioButtonList1.SelectedValue = verileriCek.Tables[0].Rows[0]["secim"].ToString();
        if (onay == "1")
        {
            cekBalim.Checked = true;
            
        }
        else
        {
            cekBalim.Checked = false;
        }


        baglanti.Close();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String idNo = Request.QueryString["ID"];
        baglanti.Open();
        SqlCommand cmdSql = baglanti.CreateCommand();
        String cekTir = "";
        if (cekBalim.Checked == true)
        {
            cekTir = "1";
        }
        else
        {
            cekTir = "0";
        }
        cmdSql.CommandText = "UPDATE duyurular SET haber_baslik=@baslikli, haber_tarihi = '"+haberTarihi.Text+"' , onay_durumu = '" +cekTir+ "',haber_konusu = @habercik,secim = "+RadioButtonList1.SelectedValue+" WHERE haber_id = '" +idNo+ "' ";  
    
        SqlParameter habercik = new SqlParameter();
        habercik.DbType = System.Data.DbType.String;
        habercik.ParameterName = "habercik";
        habercik.Value = FCKeditor1.Value;
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
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        baglanti.Open();
        string haber_id = Request.QueryString["ID"];
        SqlCommand cmdSql = baglanti.CreateCommand();
        cmdSql.CommandText = "DELETE FROM duyurular WHERE haber_id = '" + haber_id + "' ";
        cmdSql.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect("eklendi.aspx");

    }
}
