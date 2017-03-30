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
        bool filelsValid = false;
        //如果确认了上传文件，则判断文件类型是否符合要求
        if (this.FileUpload1.HasFile)
        {
            //获取上传文件的后缀
            string fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
            string[] restrictExtension = { ".gif", ".jpg", ".bmp", ".png"};
            //判断文件类型是否符合要求
            for (int i = 0; i < restrictExtension.Length; i++)
            {
                if (fileExtension == restrictExtension[i])
                    filelsValid = true;
            }
            //如果文件类型符合要求,调用SaveAs方法实现上传,并显示相关信息
            if (filelsValid == true)
            {
                try
                {
                    this.Image1.ImageUrl = "~/image/" + FileUpload1.FileName;
                    this.FileUpload1.SaveAs(Server.MapPath("~/image/") + FileUpload1.FileName);
                    this.Label1.Text = "文件上传成功" + "<br/>";
                    this.Label1.Text += "<li>" + "原文件路径" + this.FileUpload1.PostedFile.FileName + "<br/>";
                    this.Label1.Text += "<li>" + "文件大小" + this.FileUpload1.PostedFile.ContentLength + "字节" + "<br/>";
                    this.Label1.Text += "<li>" + "文件类型" + this.FileUpload1.PostedFile.ContentType + "<br/>";
                }
                catch
                {
                    this.Label1.Text = "文件上传不成功！";
                }
                finally
                {
                }
            }
            else
            {
                this.Label1.Text = "只能上传后缀名为.gif, .jpg, .bmp, .png的文件";
            }
        }
    }
}