<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style=" font-size:9pt; ">
            <tr>
                <td>
                    请从如下四个选项中选出你认为正确的答案（单选题）</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="Key" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Ａ：地球是圆的" />
                </td>  
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="Key" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Ｂ：地球是长的" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" GroupName="Key" OnCheckedChanged="RadioButton3_CheckedChanged" Text="Ｃ：地球是方的" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" GroupName="Key" OnCheckedChanged="RadioButton4_CheckedChanged" Text="Ｄ：地球是椭圆的" />
                </td> 
            </tr>
            <tr>
                <td>
                   你选择了<asp:Label ID="Label1" runat="server" Text="？"></asp:Label>答案</td>
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
