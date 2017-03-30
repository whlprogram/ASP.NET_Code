<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="学生编号"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="学生姓名"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="所在班级"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="按编号查询" GroupName="a" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="按姓名查询" GroupName="a" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="按班级查询" GroupName="a" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="删除" onclick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="修改" onclick="Button3_Click" />
                </td>                
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="查询" onclick="Button4_Click" />
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="刷新" onclick="Button5_Click" />
                </td>
                <td></td>  
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        
    </div>
    </form>
</body>
</html>
