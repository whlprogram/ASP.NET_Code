<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="Red" HorizontalAlign="Left">
            您好！现在时间是： <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
            <br />您还没登录本网站，如需登录，请
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">点击me</asp:LinkButton>
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel2" runat="server" Font-Size="9pt" HorizontalAlign="Left">
            请输入姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
        </asp:Panel>
    </form>
</body>
</html>
