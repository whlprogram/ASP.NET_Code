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
        Response.Write("欢迎用户" + Session["UserName"].ToString() + "登录本系统！<br>");
        char[] c = Application["count"].ToString().ToCharArray();
        Image[] Image1 = new Image[c.Length];
        Label1.Text = "您是本网站第";
        this.form1.Controls.Add(Label1);
        for(int i = 0; i < c.Length; i++)
        {
            Image1[i] = new Image();
            Image1[i].ImageUrl = "~/Image/" + c[i].ToString() + ".jpg";
            this.form1.Controls.Add(Image1[i]);
            Label2.Text = "位登录的用户";
            this.form1.Controls.Add(Label2);
        }
    }
}