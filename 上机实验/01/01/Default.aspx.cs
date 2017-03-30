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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string buffer = this.TextBox1.Text.ToString();
        string output = "";
        for (int i = 0; i < buffer.Length; i++)
        {
            output += buffer[buffer.Length - 1 - i];
        }
        TextBox1.Text = output;
    }
}