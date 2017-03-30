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
        if (!IsPostBack)
        {
            this.Label1.Text = DateTime.Now.ToLongDateString(); //2016年10月12日
            //this.Label1.Text = DateTime.Today.ToString(); //2016/10/12 0:00:00 
            //this.Label1.Text = DateTime.Now.ToString(); //2016/10/12 21:12:38 
            this.Panel2.Visible = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel2.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text.Trim() != "") //TextBox1.Text.Trim() 去掉前后的空格
        {
            Response.Redirect("Default2.aspx?UserName=" + TextBox1.Text.Trim());
        }
    }
}