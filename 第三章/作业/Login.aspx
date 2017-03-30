<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="用户名:"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>(whl)
    
        <br />
        <asp:Label ID="Label2" runat="server" Text="  密码:  "></asp:Label>
        <asp:TextBox ID="txtPwd" TextMode="Password" runat="server"></asp:TextBox>(whl)
    
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登录" />
        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" />
    
    </div>
    </form>
</body>
</html>
