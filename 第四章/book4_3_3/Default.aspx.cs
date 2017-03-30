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
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            this.Label1.Text = "A";
        }
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            this.Label1.Text = "B";
        }
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton3.Checked == true)
        {
            this.Label1.Text = "C";
        }
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton4.Checked == true)
        {
            this.Label1.Text = "D";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == false && RadioButton2.Checked == false &&
            RadioButton3.Checked == false && RadioButton4.Checked == false)
            Response.Write("<script>alert('请选择答案')</script>");
        else if (RadioButton4.Checked == true)
            Response.Write("<script>alert('正确答案为D，恭喜你，答对了！')</script>");
        else
            Response.Write("<script>alert('正确答案为D，对不起，答错了！')</script>");
    }
}