using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Name = Request.Params["name"];
        string Sex = Request.Params["sex"];
        Response.Write("欢迎" + Name + Sex + "！");
    }
}