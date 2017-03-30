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
        Label2.Text = DateTime.Now.ToString();
        string c = Application["count"].ToString();
        if (c == "1")
        {
            Label1.Text = "您是第一次光临本网站，欢迎光临！";
            Application.Lock();
            Application["LastTime"] = DateTime.Now.ToString();//记录第一次访问时间
            Application.UnLock();
        }
        else
        {
            Label1.Text = "您上次访问时间为：" + Application["LastTime"];
            Application.Lock();
            Application["LastTime"] = DateTime.Now.ToString();//记录第一次访问时间
            Application.UnLock();
        }
    }
}