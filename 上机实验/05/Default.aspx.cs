using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.filling();//调用filling方法
    }
    public void filling()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=(local);uid=sa;pwd=sa;database=stu;";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from student";
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = cmd;
        con.Open();//打开数据库连接
        DataSet ds = new DataSet();
        sda.Fill(ds, "student");//用student表填充数据集
        con.Close();//关闭数据库连接
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)//添加
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=(local);uid=sa;pwd=;database=stu;"; 
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into student values(" + this.TextBox1.Text + "," 
                           + this.TextBox2.Text + "','" + this.TextBox3.Text + "')";//添加学生信息
        cmd.Connection = con;
        con.Open();   //打开数据库连接
        cmd.ExecuteNonQuery();//用ExecuteNonQuery()的方法来执行查询语句
        con.Close();  //关闭数据库的连接        
    }
    protected void Button2_Click(object sender, EventArgs e)//删除
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=(local);uid=sa;pwd=sa;database=stu;";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from student where id=" + this.TextBox1.Text + "";
        //根据学生的编号来删除相应的学生的信息
        cmd.Connection = con;
        con.Open();//打开连接
        cmd.ExecuteNonQuery();//用ExecuteNonQuery()的方法来执行查询语句
        con.Close();//关闭连接

    }
    protected void Button3_Click(object sender, EventArgs e)//修改
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=(local);uid=sa;pwd=sa;database=stu;"; 
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update student set name='" + this.TextBox2.Text + ",banji= " 
                           + this.TextBox3.Text + "' where id=" + this.TextBox1.Text + "";
        //根据学生的编号来修改相应的学生的信息
        cmd.Connection = con;
        con.Open();//打开数据库的连接
        cmd.ExecuteNonQuery();//用ExecuteNonQuery()的方法来执行查询语句
        con.Close();//关闭数据库的连接

    }

    protected void Button4_Click(object sender, EventArgs e)//查询
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=(local);uid=sa;pwd=sa;database=stu;";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from student";// 查询student表
        cmd.Connection = con;
        con.Open();//打开数据库的连接
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = cmd;
        cmd.ExecuteNonQuery();//用ExecuteNonQuery()的方法来执行查询语句
        DataSet ds = new DataSet();
        sda.Fill(ds, "student");//填充数据集
        con.Close();//关闭数据库的连接
        this.GridView1.DataSource = ds;//输出到GridView控件中
        this.GridView1.DataBind();//将数据绑定到GridView控件中

    }
    protected void Button5_Click(object sender, EventArgs e)//刷新
    {
        //数据库名为stu,用户名为sa,用户密码为sa
        SqlConnection con = new SqlConnection("server=(local);uid=sa;pwd=sa;database=stu");
        con.Open();//打开数据库的连接
        if (this.RadioButton1.Checked == true)
        {
            SqlCommand cmd = new SqlCommand();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select * from student where id="
            + this.TextBox1.Text + "", con);
            sda.Fill(ds, "student");//把student表填充到数据集中
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();//将数据绑定到GridView控件中
        }
        if (this.RadioButton2.Checked == true)
        {
            SqlCommand cmd = new SqlCommand();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select * from student where name='"
            + this.TextBox2.Text + "'", con);
            sda.Fill(ds, "student");
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();//将数据绑定到GridView控件中
        }
        if (this.RadioButton3.Checked == true)
        {
            SqlCommand cmd = new SqlCommand();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select * from student where banji='"
            + this.TextBox3.Text + "'", con);
            sda.Fill(ds, "student");//把student表填充到数据集中
            this.GridView1.DataSource = ds;
            this.GridView1.DataBind();//将数据绑定到GridView控件中
        }
        con.Close();  //关闭数据库的连接

    }
}
