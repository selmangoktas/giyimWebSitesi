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

public partial class sayfaGoster : System.Web.UI.Page
{



    SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);
    
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            String sayfa = Request.QueryString["sayfa"];
            baglanti.Open();
            SqlCommand cmdSql = baglanti.CreateCommand();
            cmdSql.CommandText = " SELECT * FROM sayfalama  WHERE sayfaAdi = '" + sayfa + "'  ";
            SqlDataAdapter arakla = new SqlDataAdapter(cmdSql);
            DataSet verileriCek = new DataSet();
            arakla.Fill(verileriCek);

            String sayfaAdi = verileriCek.Tables[0].Rows[0]["sayfaAdi"].ToString();
            String idAdi = verileriCek.Tables[0].Rows[0]["id"].ToString();
            String sayfaIcerigi = verileriCek.Tables[0].Rows[0]["sayfaIcerigi"].ToString();
            sayfaIcerigiGoster.Text = sayfaIcerigi;

            baglanti.Close();
        }
    }
}
