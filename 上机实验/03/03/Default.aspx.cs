﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.txtTime.Text = DateTime.Now.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('注册成功！')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.opener=null;window.close();</script>");
    }
}