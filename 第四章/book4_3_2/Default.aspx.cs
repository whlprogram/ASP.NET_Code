using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections; //引用ArrayList类的命名空间

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ArrayList arrList = new ArrayList();
            arrList.Add("Red");
            arrList.Add("Green");
            arrList.Add("Blue");
            arrList.Add("LightGray");
            DropDownList1.DataSource = arrList;
            DropDownList1.DataBind();
            this.DropDownList1.Items.Insert(0, "请选择列表项");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string color = this.DropDownList1.SelectedItem.Value;
        switch (color)
        {
            case "Red":
                this.DropDownList1.BackColor = System.Drawing.Color.Red;
                break;
            case "Green":
                this.DropDownList1.BackColor = System.Drawing.Color.Green;
                break;
            case "Blue":
                this.DropDownList1.BackColor = System.Drawing.Color.Blue;
                break;
            case "LightGray":
                this.DropDownList1.BackColor = System.Drawing.Color.LightGray;
                break;
            default:
                this.DropDownList1.BackColor = System.Drawing.Color.White;
                break;

        }
    }
}