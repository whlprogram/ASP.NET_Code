<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <table  border="1" cellpadding="0" cellspacing="0" style="width: 199px;
            height: 100px">
            <tr>
                <td colspan="2" style="font-weight: bold; font-size: 16pt; color: #ffffff; background-color: #54a4ff;
                    text-align: center">
                    登录</td>
            </tr>
            <tr>
                <td style="font-size: 9pt; background-color: #f7f6f3; text-align: right">
                    用户名：</td>
                <td style="background-color: #f7f6f3; text-align: center">
                    <asp:TextBox ID="TextBox1" runat="server" Width="113px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="background-color: #f7f6f3">
                </td>
                <td style="background-color: #f7f6f3; text-align: center">
                    <asp:Button ID="btnLogin" runat="server" Font-Size="9pt" OnClick="btnLogin_Click"
                        Text="登录" />
                    &nbsp;
                    <asp:Button ID="btnExit" runat="server" Font-Size="9pt" OnClick="btnExit_Click" Text="退出" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
