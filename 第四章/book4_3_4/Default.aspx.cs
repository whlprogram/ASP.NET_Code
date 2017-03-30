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
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
            this.Label1.Text = "A";
        else
            this.Label1.Text = "";
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == true)
            this.Label2.Text = "B";
        else
            this.Label2.Text = "";
    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox3.Checked == true)
            this.Label3.Text = "C";
        else
            this.Label3.Text = "";
    }
    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox4.Checked == true)
            this.Label4.Text = "D";
        else
            this.Label4.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false && CheckBox2.Checked == false &&
            CheckBox3.Checked == false && CheckBox4.Checked == false)
            Response.Write("<script>alert('请选择答案')</script>");
        else if(CheckBox1.Checked ==  true&& CheckBox2.Checked == true &&
            CheckBox3.Checked == true && CheckBox4.Checked == false)
            Response.Write("<script>alert('正确答案是ABC,恭喜你，答对了！')</script>");
        else
            Response.Write("<script>alert('正确答案是ABC,对不起，答错了！')</script>");
    }
}