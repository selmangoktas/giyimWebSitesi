using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class butonlar : System.Web.UI.UserControl
{
    string anaMenuId = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = @"select  id,nrd ,TRsayfaAdi,anaMenuId  from  MenuAnaBaslik where aktifPasif='1' and nrd is not null order by convert(int, menuSirasi)  ";
            int sayac = genelKullanim.DataTableGetir(sql).Rows.Count;
            ArrayList say = new ArrayList();


            //for (int i = 0; i < sayac; i++)
            //{

            //    say.Add(i);

            //}
            //menuRpt.DataSource = say;
            //menuRpt.DataBind();

            menuRpt.DataSource = genelKullanim.DataTableGetir(sql);
            menuRpt.DataBind();


            for (int i = 0; i < sayac; i++)
            {

                if (!string.IsNullOrEmpty(Convert.ToString(genelKullanim.DataTableGetir(sql).Rows[i]["nrd"])))


                    /// altMenu(genelKullanim.DataTableGetir(sql).Rows[i]["nrd"].ToString());
                    anaMenuId = genelKullanim.DataTableGetir(sql).Rows[i]["nrd"].ToString();

            }

        }
    }




    //public string altMenu(string anaMenuId)
    //{
    //    // string altMenuAdi = "";
    //    string sql = @"select  anaMenuId  from  MenuAnaBaslik where aktifPasif='1' and anaMenuId='" + anaMenuId + "'";
    //    int sayac = genelKullanim.DataTableGetir(sql).Rows.Count;
    //    ArrayList say = new ArrayList();


    //    if (sayac != 0)
    //    {
    //        foreach (RepeaterItem item in menuRpt.Items)
    //        {
                
    //            Repeater altmenuRpt = (Repeater)item.FindControl("altmenuRpt");

    //            altmenuRpt.Visible = true;

    //            string sql1 = "";


    //            //anaMenuAdi.Text = "<a href=sayfaGoster.aspx?id=" + genelKullanim.DataTableGetir(sql).Rows[i]["nrd"].ToString() + " class=parent><span> " + genelKullanim.DataTableGetir(sql).Rows[i]["TRsayfaAdi"].ToString() + "</span> </a>";
    //            //genelKullanim.DataTableGetir(sql).Rows[i]["TRsayfaAdi"].ToString(); 

    //            sql1 += @"SELECT  id, TRsayfaAdi, anaMenuId, menuSirasi FROM MenuAnaBaslik  where aktifPasif='1' and anaMenuId= '" + anaMenuId + "' ";





    //            altmenuRpt.DataSource = genelKullanim.DataTableGetir(sql1);
    //            altmenuRpt.DataBind();


    //            foreach (RepeaterItem items in altmenuRpt.Items)
    //            {
    //                int sayac1 = genelKullanim.DataTableGetir(sql1).Rows.Count;
    //                Label altMenuAdi = (Label)items.FindControl("altMenuAdi");

    //                for (int t = 0; t < sayac1; t++)
    //                {
    //                    //altMenuAdi.Visible = true;
    //                    altMenuAdi.Text = "<li> <a href=sayfaGoster.aspx?id=" + genelKullanim.DataTableGetir(sql1).Rows[t]["id"].ToString() + "><span> " + genelKullanim.DataTableGetir(sql1).Rows[t]["TRsayfaAdi"].ToString() + "</span> </a></li>";
    //                }



    //            }
    //        }
    //    }
    //    else
    //    {
    //        foreach (RepeaterItem item in menuRpt.Items)
    //        {
    //            Repeater altmenuRpt = (Repeater)item.FindControl("altmenuRpt");
    //            altmenuRpt.Visible = false;
    //            foreach (RepeaterItem items in altmenuRpt.Items)
    //            {
                    
    //                Label altMenuAdi = (Label)items.FindControl("altMenuAdi");
    //                //altMenuAdi.Visible = false;
    //            }
    //        }
    //    }
               
         
    //    return anaMenuId;

    //}



    protected void menuRpt_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater altmenuRpt = (Repeater)e.Item.FindControl("altmenuRpt");

       string  sql1 = @"SELECT  id, TRsayfaAdi, anaMenuId, menuSirasi FROM MenuAnaBaslik  where aktifPasif='1'  ";

        altmenuRpt.DataSource = genelKullanim.DataTableGetir(sql1);
        altmenuRpt.DataBind();

        int sayac1 = genelKullanim.DataTableGetir(sql1).Rows.Count;
        foreach (RepeaterItem items in altmenuRpt.Items)
        {
            Label altMenuAdi = (Label)items.FindControl("altMenuAdi");

            for (int t = 0; t < sayac1; t++)
            {
                //altMenuAdi.Visible = true;
                altMenuAdi.Text = "<li> <a href=sayfaGoster.aspx?id=" + genelKullanim.DataTableGetir(sql1).Rows[t]["id"].ToString() + "><span> " + genelKullanim.DataTableGetir(sql1).Rows[t]["TRsayfaAdi"].ToString() + "</span> </a></li>";
            }
        }


    }
}
