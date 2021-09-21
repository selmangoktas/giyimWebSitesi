using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

public partial class kpannel_kontrol : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Convert.ToString(Session["adi_soyadi"]);
        string kullaniciAdi = string.Empty;
        string yetkiTuru = Convert.ToString(Session["yetkiTuru"]);
        string kkkid = Convert.ToString(Session["kkkid"]);

        if (!string.IsNullOrEmpty(kkkid) && !string.IsNullOrEmpty(yetkiTuru))
        {
           
                string sql = @"select * from kullanicilar where id='"+kkkid+"'";
                DataTable guvenlik = genelKullanim.DataTableGetir(sql);
                if (kkkid == guvenlik.Rows[0]["id"].ToString())
                {
                    kullaniciAdi = guvenlik.Rows[0]["adi_soyadi"].ToString();
                    Mesaj1.Text = " hoşgeldin " + kullaniciAdi;
                }
        }

        else
        {
            //Session["sifre"]
            Mesaj1.Text = "Kısıtlı Bir Bölge Lütfen Giriş Yapınız.";
            girisTikla.Visible = true;
            Response.Redirect("hatali.aspx");
            
            
        }

           

                
          
 
            
       
     }

    }

