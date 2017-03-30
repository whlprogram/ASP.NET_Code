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
        char a = 'A';
        string b = "Hello World!";
        char[] bArray = { 'H','e','l','l','o',',',' ','w','o','r','l','d'};
        Page p = new Page();
        Response.Write("输出单个字符");
        Response.Write(a);  //输出单个字符a
        Response.Write("<br>");
        Response.Write("输出一个字符串" + b + "<br>"); //输出一个字符串Hello World!
        Response.Write("输出字符数组");
        Response.Write(bArray, 0, bArray.Length);  //输出字符数组Hello, world
        Response.Write("<br>");
        Response.Write("输出一个对象" + p + "<br>");   //输出一个对象System.Web.UI.Page
        
        //Response.WriteFile("输出一个文件" + @"F:\WriteFile.txt" + "<br>"); //错误语法

        Response.Write("输出一个文件");   //输出一个文件awrawawfawf(文件内容)
        Response.WriteFile(@"F:\WriteFile.txt"); //本实例应用WriteFile方法输出一个文件时，该文件必须是已经存在的。
    }
}