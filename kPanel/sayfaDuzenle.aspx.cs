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


public partial class yonetim_sayfaDuzenle : System.Web.UI.Page
{
    // bismillahirrahmanirrahim 
    // muhtemel oglum ahmet kağan a sevgilerim le 

    SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {


            String idNo = Request.QueryString["ID"];
            baglanti.Open();
            SqlCommand cmdSql = baglanti.CreateCommand();
            cmdSql.CommandText = " SELECT * FROM sayfalama order by safyaGercekAdi  ";
            SqlDataAdapter arakla = new SqlDataAdapter(cmdSql);
            DataSet verileriCek = new DataSet();
            arakla.Fill(verileriCek);
            int saygelsin = Convert.ToInt32(verileriCek.Tables[0].Rows.Count);
            for (int i = 0; i < saygelsin; i++)
            {
                String sayfaAdi = verileriCek.Tables[0].Rows[i]["safyaGercekAdi"].ToString();
                String idAdi = verileriCek.Tables[0].Rows[i]["id"].ToString();
                //String sayfa = verileriCek.Tables[0].Rows[i]["sayfaAdi"].ToString();

                Liste.Items.Add(sayfaAdi);
                Liste.DataValueField = idAdi;
            }
            baglanti.Close();
        }

    }


    protected void Liste_SelectedIndexChanged(object sender, EventArgs e)
    {
        String sayfa = "";
        FCKeditor1.Value = "";
        Session["sayfa"] = Liste.SelectedValue.ToString();
        sayfa = Session["sayfa"].ToString();
        baglanti.Open();
        SqlCommand cmdSql = baglanti.CreateCommand();
        cmdSql.CommandText = "SELECT * FROM sayfalama WHERE safyaGercekAdi = '" + sayfa + "'  ";
        SqlDataAdapter arakla = new SqlDataAdapter(cmdSql);
        DataSet verileriCek = new DataSet();
        arakla.Fill(verileriCek);
        FCKeditor1.Value = verileriCek.Tables[0].Rows[0]["sayfaIcerigi"].ToString();
        Session["sayfa1"] = verileriCek.Tables[0].Rows[0]["sayfaAdi"].ToString();
        baglanti.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String sayfa1 = Session["sayfa1"].ToString();
        baglanti.Open();
        SqlCommand cmdSql = baglanti.CreateCommand();
        cmdSql.CommandText = "UPDATE sayfalama SET sayfaIcerigi = @habercik  , onay = '1' WHERE sayfaAdi = '" + sayfa1 + "' ";
        SqlParameter habercik = new SqlParameter();
        habercik.DbType = System.Data.DbType.String;
        habercik.ParameterName = "habercik";
        habercik.Value = FCKeditor1.Value;
        cmdSql.Parameters.Add(habercik);
        cmdSql.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect("eklendi.aspx");

    }
}

