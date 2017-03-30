using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("使用Request[string key]方法" + Request["value"] + "<br>");
        Response.Write("使用Request.Params[string key]方法" + Request.Params["value"] + "<br>");
        Response.Write("使用Request.QueryString[string key]方法" + Request.QueryString["value"] + "<br>");

    }
}