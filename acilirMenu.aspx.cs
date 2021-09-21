using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class acilirMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkUpdate_Click(object sender, EventArgs e)
    {

    }
    protected void btnApply_Click(object sender, EventArgs e)
    {
        pnlText.ForeColor = System.Drawing.Color.FromName(RadioButtonList1.SelectedItem.Value);
    }
}
