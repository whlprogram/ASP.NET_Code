<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册页面</title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
             注意:请您认真填写下面的表单,确保其真实性,以便我们能够及时送货给您
            <tr>
                <td>用户名:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="请填写用户名" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>密码:</td>
                <td>

                    密码:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="txtPwd" runat="server" style="margin-left: 0px" TextMode="Password"></asp:TextBox>
                    <br />
                    确认密码:<asp:TextBox ID="txtRePwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPwd" ErrorMessage="请填写密码" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" ErrorMessage="两次输入密码不匹配"></asp:CompareValidator>
                </td>
           </tr>
            <tr>
                <td class="auto-style1">E-mail:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtTelphone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelphone" ErrorMessage="请输入E-mail地址" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelphone" ErrorMessage="邮箱格式有误" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>性别:</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="Key" Text="男" />
                    <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="Key" Text="女" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td>年龄</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAge" ErrorMessage="年龄不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="本站只能年满15周岁之后才能注册" MaximumValue="100" MinimumValue="15" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>注册日期:</td>
                <td>
                    <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            
            <tr>
                <td>
                    &nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
                </td>
                <td>
                    &nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
                    
                </td>
            </tr>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
        </table>
    </div>
    </form>
</body>
</html>
