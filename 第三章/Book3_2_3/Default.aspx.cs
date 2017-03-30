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
    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("Request.aspx?value=获得页面间的传值");//等号两边不能有空格
        //Response.Redirect("Request.aspx?value = 获得页面间的传值"); // 错误代码，空格多余
    }
}