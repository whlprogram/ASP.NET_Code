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
        if (!IsPostBack)
        {
            lbxSource.Items.Add("星期日");
            lbxSource.Items.Add("星期一");
            lbxSource.Items.Add("星期二");
            lbxSource.Items.Add("星期三");
            lbxSource.Items.Add("星期四");
            lbxSource.Items.Add("星期五");
            lbxSource.Items.Add("星期六");


        }
    }
    protected void Button1_Click(object sender, EventArgs e)//  <<
    {
        //获取列表框的选项数
        int count = lbxSource.Items.Count;
        int index = 0;
        //循环从源列表框中转移到目的列表框中
        for (int i = 0; i < count; i++)
        {
            ListItem Item = lbxSource.Items[index];
            lbxSource.Items.Remove(Item);
            lbxDest.Items.Add(Item);
        }
        //获取下一个选项的索引值
        index++;
    }
    protected void Button2_Click(object sender, EventArgs e)// >>
    {
        int count = lbxDest.Items.Count;
        int index = 0;
        for (int i = 0; i < count; i++)
        {
            ListItem Item = lbxDest.Items[index];
            lbxDest.Items.Remove(Item);
            lbxSource.Items.Add(Item);
        }
        index++;
    }
    //选择一项或多项
    protected void Button3_Click(object sender, EventArgs e)// <
    {
        //获取列表框的选项数
        int count = lbxSource.Items.Count;
        int index = 0;
        //循环判断各个项的选中状态
        for (int i = 0; i < count; i++)
        {
            ListItem Item = lbxSource.Items[index];
            //如果选项为选中状态从源列表框中删除并添加到目的列表框中
            if (lbxSource.Items[index].Selected == true)
            {
                lbxSource.Items.Remove(Item);
                lbxDest.Items.Add(Item);
                index--; //将当前选项索引值减1
            }
            //获取下一个选项的索引值
            index++;
        }
        
    }
    protected void Button4_Click(object sender, EventArgs e)// >
    {
        int count = lbxDest.Items.Count;
        int index = 0;
        for (int i = 0; i < count; i++)
        {
            ListItem Item = lbxDest.Items[index];
            if (lbxDest.Items[index].Selected == true)
            {
                lbxDest.Items.Remove(Item);
                lbxSource.Items.Add(Item);
                index--;
            }
            index++;
        }  
    }
    protected void Button5_Click(object sender, EventArgs e) //上移
    {
        //如果不是第一行 上移
        if (ListBox1.SelectedIndex > 0 && ListBox1.SelectedIndex <= ListBox1.Items.Count - 1)
        {
            //记录当前选项的值
            string name = ListBox1.SelectedItem.Text;
            string value = ListBox1.SelectedItem.Value;
            //获取当前选项的索引号
            int index = ListBox1.SelectedIndex;
            //交换当前选项和上一项的索引号
            ListBox1.SelectedItem.Text = ListBox1.Items[index - 1].Text;
            ListBox1.SelectedItem.Value = ListBox1.Items[index - 1].Value;
            ListBox1.Items[index - 1].Text = name;
            ListBox1.Items[index - 1].Value = value;
            //设定上一项为当前选项（即选中项不变）
            ListBox1.SelectedIndex--;
        }
    }
    protected void Button6_Click(object sender, EventArgs e)//下移
    {
        //如果不是最后一行 下移
        if (ListBox1.SelectedIndex >= 0 && ListBox1.SelectedIndex < ListBox1.Items.Count - 1)
        {
            //记录当前选项的值
            string name = ListBox1.SelectedItem.Text;
            string value = ListBox1.SelectedItem.Value;
            //获取当前选项的索引号
            int index = ListBox1.SelectedIndex;
            //交换当前选项和下一项的索引号
            ListBox1.SelectedItem.Text = ListBox1.Items[index + 1].Text;
            ListBox1.SelectedItem.Value = ListBox1.Items[index + 1].Value;
            ListBox1.Items[index + 1].Text = name;
            ListBox1.Items[index + 1].Value = value;
            //设定下一项为当前选项（即选中项不变）
            ListBox1.SelectedIndex++;
        }
    }

    //如果不是第一行 上移即可
    //如果是第一行 循环移动后到最后一行
    protected void Button7_Click(object sender, EventArgs e)//循环上移
    {
        //如果不是第一行
        if (ListBox1.SelectedIndex > 0 && ListBox1.SelectedIndex <= ListBox1.Items.Count - 1)
        {
            //记录当前选项的值
            string name = ListBox1.SelectedItem.Text;
            string value = ListBox1.SelectedItem.Value;
            //获取当前选项的索引号
            int index = ListBox1.SelectedIndex;
            //交换当前选项和上一项的索引号
            ListBox1.SelectedItem.Text = ListBox1.Items[index - 1].Text;
            ListBox1.SelectedItem.Value = ListBox1.Items[index - 1].Value;
            ListBox1.Items[index - 1].Text = name;
            ListBox1.Items[index - 1].Value = value;
            //设定上一项为当前选项（即选中项不变）
            ListBox1.SelectedIndex--;
        }
        //如果是第一行
        else if (ListBox1.SelectedIndex == 0)
        {
            ListItem Item = ListBox1.Items[0];
            ListBox1.Items.Remove(Item);
            ListBox1.Items.Add(Item);
        }
    }
    //如果不是最后一行 下移即可
    //如果是最后一行 循环移动后到第一行
    protected void Button8_Click(object sender, EventArgs e)//循环下移
    {
        //获取列表框的选项数
        int count = ListBox1.Items.Count;
        //如果不是最后一行
        if (ListBox1.SelectedIndex >= 0 && ListBox1.SelectedIndex < count - 1)
        {
            //记录当前选项的值
            string name = ListBox1.SelectedItem.Text;
            string value = ListBox1.SelectedItem.Value;
            //获取当前选项的索引号
            int index = ListBox1.SelectedIndex;
            //交换当前选项和上一项的索引号
            ListBox1.SelectedItem.Text = ListBox1.Items[index + 1].Text;
            ListBox1.SelectedItem.Value = ListBox1.Items[index + 1].Value;
            ListBox1.Items[index + 1].Text = name;
            ListBox1.Items[index + 1].Value = value;
            //设定上一项为当前选项（即选中项不变）
            ListBox1.SelectedIndex++;
        }
        //如果是最后一行
        else if (ListBox1.SelectedIndex == count - 1)
        {
            ListItem Item = ListBox1.Items[count - 1];
            ListBox1.Items.Remove(Item);//移除最后一行
            ListBox1.Items.Insert(0 ,Item);//插在第一行
        }
    }
}