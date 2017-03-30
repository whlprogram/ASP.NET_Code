<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>使用TextBox控件制作会员登录界面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:240px; height:88px">
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;会员登录
                </td>
            </tr>
            <tr>
                <td style="width:60px">会员名:</td>
                <td style="width:150px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:60px">密码:</td>
                <td style="width:150px">
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="6" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:120px">
                    <asp:Button ID="Button1" runat="server" Text="登录" />
                </td>
                <td style="width:120px">
                    
                    <asp:Button ID="Button2" runat="server" Text="注册" OnClick="Button2_Click" />
                    
                </td>
            </tr>
        <table>
    </div>
    </form>
</body>
</html>
