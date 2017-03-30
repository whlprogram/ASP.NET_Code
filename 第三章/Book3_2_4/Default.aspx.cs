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
        HttpBrowserCapabilities b = Request.Browser;
        Response.Write("客户端浏览器信息：");
        Response.Write("<hr>");
        Response.Write("类型：" + b.Type + "<br>");
        Response.Write("名称：" + b.Browser + "<br>");
        Response.Write("版本：" + b.Version + "<br>");
        Response.Write("操作平台：" + b.Platform  + "<br>");
        Response.Write("是否支持框架 " + b.Frames + "<br>");
        Response.Write("是否支持表格 " + b.Tables + "<br>");
        Response.Write("是否支持Cookies " + b.Cookies + "<br>");
        Response.Write("<hr>");
    }
}