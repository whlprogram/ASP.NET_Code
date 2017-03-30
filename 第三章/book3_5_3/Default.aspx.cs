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
    protected void btnWriteIPAndDNS_Click(object sender, EventArgs e)
    {
        string UserIP = Request.UserHostAddress.ToString();
        Response.Cookies["myCookies"]["IP"] = UserIP;
        string UserDNS = Request.UserHostName.ToString();
        Response.Cookies["myCookies"]["DNS"] = UserDNS;
        TimeSpan time = new TimeSpan(0, 0, 2, 0);
        Response.Cookies["myCookies"].Expires = DateTime.Now.Add(time);
    }
    protected void btnRead_Click(object sender, EventArgs e)
    {
            Label1.Text = Request.Cookies["myCookies"].Value;
    }
}