﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int P_int_current = Convert.ToInt32(Application["current"]);
        Application.Lock();
        if (P_int_current == 0 || P_int_current > 20)
        {
            P_int_current = 0;
            Application["chats"] = Session["userName"].ToString() + "说：" + txtMessage.Text.Trim() 
                                    + "(" + DateTime.Now.ToString() + ")";
        }
        else
        {
            Application["chats"] = Application["chats"].ToString() + "," + Session["userName"].ToString() + "说：" + txtMessage.Text.Trim() + "(" + DateTime.Now.ToString() + ")";
        }
        P_int_current += 1;
        Application["current"] = P_int_current;
        Application.UnLock();
    }
    protected void btnExit_Click(object sender, EventArgs e)
    {

        Application.Lock();
        string P_str_userName = Application["user"].ToString();
        Application["user"] = P_str_userName.Replace(Session["userName"].ToString(), "");
        Application.UnLock();
        Response.Write("<script>window.close();</script>");
    }
}