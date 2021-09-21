using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Threading;
using System.Globalization;
using System.Web.UI.MobileControls;
using System.Collections;
using System.Resources;
using System.Web.Security;

public static class genelKullanim
{
    public class deneneme
    {
     

    }

    
  

    public static bool SorguOkuma(string sql, ref SqlDataReader reader)
    {
        SqlConnection cn = null;
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd = cn.CreateCommand();
        cmd.CommandText = sql;
        try
        {
            cn.Open();
            reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return true;
        }
        catch (Exception)
        {
            return false;
        }

    }
   
    public static bool sorguGuncelleEkle(string sql)
    {
        bool bSuccess = true;
        SqlConnection cn = null;
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd = cn.CreateCommand();
        cmd.CommandText = sql;

        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception)
        {
            bSuccess = false;
        }
        cn.Close();
        return bSuccess;
    }


    public static DataTable DataTableGetir(string sql)
    {
        
        using (SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn1"].ConnectionString))
        {
            DataTable ds = new DataTable();
            cnn.Close();
            cnn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            da.Fill(ds);

            return ds;
        }
    }

   
    public static string bosSession(object bolognaDeger)
    {
        if (bolognaDeger == null)
        {
            bolognaDeger = "42";

        }
        //else
        //{
        //    bolognaDeger = HttpContext.Current.Session["'" + bolognaDeger + "'"].ToString(); ;

        //}

        return bolognaDeger.ToString();
    }


    public static void menuSessionlari()
    {
        HttpContext.Current.Session["akademikProgram"] = "42";
        HttpContext.Current.Session["dersBilgisi"] = "42";
        HttpContext.Current.Session["programBilgisi"] = "42";
        HttpContext.Current.Session["yetkiBilgisi"] = "42";
        HttpContext.Current.Session["siteBilgisi"] = "42";
        HttpContext.Current.Session["ogrenciBilgisi"] = "42";
        HttpContext.Current.Session["fakulteBilgisi"] = "42";
        //HttpContext.Current.Session["yetkiBilgisi"] = "42";


    }

      
    public static SqlParameter sqlParameterOlaylari(ref System.Web.UI.WebControls.TextBox ilkVeri)
    {
        //SqlCommand cmdSql = new SqlCommand();
        SqlParameter sonVeri = new SqlParameter();
        sonVeri.DbType = System.Data.DbType.String;
        sonVeri.ParameterName = ilkVeri.ID.ToString();

        string gelen = string.Empty;
        gelen = ilkVeri.Text;


        gelen = gelen.Replace("`", "");
        gelen = gelen.Replace("'", "''");
        //gelen = gelen.Replace(");", "");
        //gelen = gelen.Replace("=", "");
        //gelen = gelen.Replace("&", "");
        //gelen = gelen.Replace("%", "");
        //gelen = gelen.Replace("!", "");
        //gelen = gelen.Replace("#", "");
        //gelen = gelen.Replace("$", "");
        //gelen = gelen.Replace("<", "<");
        //gelen = gelen.Replace(">", ">");
        //gelen = gelen.Replace("*", "");
        //gelen = gelen.Replace("And", "");
        //gelen = gelen.Replace(" Or ", "");

        //gelen = gelen.Replace("--", "");
        //gelen = gelen.Replace("Chr(34)", "");
        //gelen = gelen.Replace("Chr(39)", "");

        sonVeri.Value = gelen;
        return sonVeri;

    }


    public static string veriTemizle(string gelen)
    {
        if (gelen != null)
        {
            gelen = gelen.Replace("'", "`");
            //gelen = gelen.Replace("=", "");
            //gelen = gelen.Replace("&", "");
            //gelen = gelen.Replace("%", "");
            //gelen = gelen.Replace("!", "");
            //gelen = gelen.Replace("#", "");
            //gelen = gelen.Replace("$", "");
            //gelen = gelen.Replace("<", "<");
            //gelen = gelen.Replace(">", ">");
            //gelen = gelen.Replace("*", "");
            //gelen = gelen.Replace("And", "");
            //gelen = gelen.Replace(" Or ", "");
            //gelen = gelen.Replace("'", "");
            //gelen = gelen.Replace("--", "");
            gelen = gelen.Replace("Chr(34)", "");
            gelen = gelen.Replace("Chr(39)", "");

        }
        else
            gelen = String.Empty;

        return gelen;
    }


    public static String dilKontrol(String dil)
    {

        if (HttpContext.Current.Session["dil"] == null)
        {

            dil = "1";
        }
        else
        {

            dil = Convert.ToString(HttpContext.Current.Session["dil"]);


        }



        //HttpCookie cerez = HttpContext.Current.Request.Cookies["dil"];
        //if (cerez == null && cerez.Value == null)
        //{
        //    dil = "1";

        //}
        //else
        //{
        //    dil = cerez.Value;
        //    Thread.CurrentThread.CurrentUICulture = CultureInfo.GetCultureInfo(dil);
        //    Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(dil);
        //}
        return dil;



    }

    





}
