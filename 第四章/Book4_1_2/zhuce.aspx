<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
            height: 23px;
        }
        .auto-style2 {
            width: 250px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <table style="width:400px;" >
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户注册
                </td>
            </tr>
            <tr>
                <td class="auto-style1">用户名:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:100px">密码:</td>
                <td style="width:250px">
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="6" TextMode="Password" Width="150px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width:100px">确认密码:</td>
                <td style="width:250px">
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="6" TextMode="Password" Width="150px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width:100px">E-mail:</td>
                <td style="width:250px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width:100px">详细地址:</td>
                <td style="width:250px">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:120px">
                    <asp:Button ID="Button1" runat="server" Text="注册" />
                </td>
                <td style="width:120px">
                        
                    <asp:TextBox ID="TextBox6" runat="server" BackColor="#FFFF80" Height="92px" ReadOnly="True" TextMode="MultiLine" Width="232px">用户须知：1 2 3 4 5 6 7 8 9 </asp:TextBox>
                        
                </td>
            </tr>
        <table>
    </div>
    </form>
</body>
</html>
