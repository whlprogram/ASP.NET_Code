using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("欢迎用户"+ Session["UserName"].ToString() +"登录本系统！<br>");
        Response.Write("您登陆的时间为：" + Session["LoginTime"].ToString() );
    }
}