<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="用户名:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>(whl)
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="  密码:  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPwd" TextMode="Password" runat="server"></asp:TextBox>(whl)
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登录" />
                </td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
