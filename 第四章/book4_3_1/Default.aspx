<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ListBox控件选项的多选和单选操作</title>
    <style type="text/css">
        .auto-style1 {
            width: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:272px; height:138px;">
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;ListBox控件的应用</td>
            </tr>
            <tr>
                <td rowspan="4" style="width:117px" align="left" valign="top">
                    <asp:ListBox ID="lbxDest" runat="server" SelectionMode="Multiple" Height="125px" Width="92px"></asp:ListBox>
                </td>
                <td style="width:66px">
                    <asp:Button ID="Button1" runat="server" Text="&lt;&lt;" OnClick="Button1_Click" />
                </td>
                <td rowspan="4" style="width:117px" align="left" valign="top">
                    <asp:ListBox ID="lbxSource" runat="server" Height="125px" SelectionMode="Multiple" Width="92px">
                        
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="width:66px; height:27px">
                    <asp:Button ID="Button2" runat="server" Text="&gt;&gt;" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td style="width:66px; height:27px">
                    <asp:Button ID="Button3" runat="server" Text="&lt;" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td style="width:66px; height:27px">
                    <asp:Button ID="Button4" runat="server" Text="&gt;" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>  


        <table style="width:236px; height:138px;">
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;ListBox控件的 上下移动数据</td>
            </tr>
            <tr>
                <td rowspan="4" align="left" valign="top" class="auto-style1">
                    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Height="125px" Width="92px">
                        <asp:ListItem>星期日</asp:ListItem>
                        <asp:ListItem>星期一</asp:ListItem>
                        <asp:ListItem>星期二</asp:ListItem>
                        <asp:ListItem>星期三</asp:ListItem>
                        <asp:ListItem>星期四</asp:ListItem>
                        <asp:ListItem>星期五</asp:ListItem>
                        <asp:ListItem>星期六</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td style="width:66px">
                    <asp:Button ID="Button5" runat="server" Text="上移" OnClick="Button5_Click" />
                </td>
                
            </tr>
            <tr>
                <td style="width:66px; height:27px">
                    <asp:Button ID="Button6" runat="server" Text="下移" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td style="width:66px; height:27px">
                    <asp:Button ID="Button7" runat="server" Text="循环上移" OnClick="Button7_Click" />
                </td>
            </tr>
            <tr>
                <td style="width:66px; height:27px">
                    <asp:Button ID="Button8" runat="server" Text="循环下移" OnClick="Button8_Click" />
                </td>
            </tr>
        </table> 
    </div>
    </form>
</body>
</html>
