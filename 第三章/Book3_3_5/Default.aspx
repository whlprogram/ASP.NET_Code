<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table style="width: 603px; height: 442px" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="2" style="font-size: 16pt; color: #ffffff; background-color: #54a4ff;" class="auto-style1">
                    聊天室</td>
            </tr>
            <tr>
                <td style="width: 404px; height: 18px">
                </td>
                <td align="left" style="width: 200px; height: 18px; font-size: 9pt; border-right-style: none; border-left-style: none;">
                    用户列表：</td>
            </tr>
            <tr>
                <td style="width: 404px; height: 354px;">
                <iframe id="Iframe1" src="Content.aspx" runat="server" scrolling="no"  frameborder="0" style="width: 400px; height: 350px"></iframe>
                </td>
                <td style="width: 200px; height: 354px;">
                <iframe id="Iframe2" src="List.aspx" runat="server"  scrolling="no" style="width: 200px; height: 350px"></iframe>
                </td>
            </tr>
            <tr>
                <td style="width: 400px" align="left">
                    <asp:TextBox ID="txtMessage" runat="server" Width="316px"></asp:TextBox><asp:Button ID="btnSend" runat="server" Text="发送" OnClick="btnSend_Click" /><asp:Button ID="btnExit" runat="server" Text="退出" OnClick="btnExit_Click" /></td>
                <td style="width: 200px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    <%--<form id="form1" runat="server">
        
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#66FFFF" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="35px" ReadOnly="True" Width="555px">聊天室</asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Height="21px" ReadOnly="True" Width="340px"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Height="21px" ReadOnly="True" Width="175px">用户列表</asp:TextBox>
           

           
            <asp:TextBox ID="TextBox5" runat="server" Height="330px" ReadOnly="True" Width="175px"></asp:TextBox>
            <asp:TextBox ID="txtMessage" runat="server" Height="27px" Width="369px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Height="34px" Text="发送" />
            <asp:Button ID="Button2" runat="server" Height="34px" Text="退出" />
    </form>--%>
</body>
</html>
