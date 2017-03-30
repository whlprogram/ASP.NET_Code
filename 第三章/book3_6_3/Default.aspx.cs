using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnExecute_Click(object sender, EventArgs e)
    {
        Server.Execute("newPage.aspx?message=Execute");
        Response.Write("Default.aspx页123");
    }
    protected void btnTransfer_Click(object sender, EventArgs e)
    {
        Server.Transfer("newPage.aspx?message=Transfer");
        Response.Write("Default.aspx页qqqqq");
    }
}