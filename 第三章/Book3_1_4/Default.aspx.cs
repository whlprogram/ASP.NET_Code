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
    protected void btnOK_Click(object sender, EventArgs e)
    {
        string Name = this.name.Text;
        string Sex = "先生";
        if(rBtnSex2.Checked)
            Sex = "女士";
        Response .Redirect ("~/welcome.aspx?name=" + Name + "&sex=" + Sex ); //等号不要忘记
        
     }  
    
    protected void btnEsc_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close();</script>");
    }
}