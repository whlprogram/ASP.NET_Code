using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ArrayList arrList = new ArrayList();
            arrList.Add("boy头像");
            arrList.Add("girl头像");
            DropDownList1.DataSource = arrList;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "请选择头像...");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //用户选择DropDownList控件中的不同项时，显示不同的用户头像
        if (DropDownList1.SelectedIndex == 1)
            Image1.ImageUrl = "~/image/boy.jpg";
        else if (DropDownList1.SelectedIndex == 2)
            Image1.ImageUrl = "~/image/girl.jpg";
        else
            Image1.ImageUrl = "";
    }
    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        string region = "";
        switch (e.PostBackValue)
        {
            case "NW":
                region = "西北";
                break;
            case "NE":
                region = "东北";
                break;
            case "SE":
                region = "东南";
                break;
            case "SW":
                region = "西南";
                break;
        }
        Label1.Text = "您现在所指的方位是：" + region + "方向";
    }
}