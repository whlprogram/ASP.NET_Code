using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text == "whl" && txtPwd.Text == "whl")
        {
            Session["UserName"] = txtUserName.Text;//使用Session变量记录用户命名，多个页面间调用
            Application.Lock();
            Application["count"] = (int)Application["count"] + 1;//访问人数+1
            Application.UnLock();
            Response.Redirect("~/Welcome.aspx");//跳转到欢迎页面
        }
        else
        {
            Response.Write("<script>alert('登录失败！请返回查找原因');Location='Login.aspx'</script>");
        }

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPwd.Text = "";
    }
}