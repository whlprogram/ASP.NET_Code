<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 16px;
        }
        .auto-style2 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style=" font-size:9pt; ">
            <tr>
                <td>
                    请从如下四个选项中选出你认为正确的答案（多选题）</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Ａ：正方形有四条边" />
                </td>  
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" Text="Ｂ：四边形有四个角" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" Text="Ｃ：正方形属于四边形" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" Text="Ｄ：四边形属于正方形" />
                </td> 
            </tr>
            <tr>
                <td class="auto-style1">
                   你选择了答案是：<asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
