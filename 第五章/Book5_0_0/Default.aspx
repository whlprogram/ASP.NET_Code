<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册页面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp用户注册
            <tr>
                <td>用户名:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="姓名不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>密码:</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" style="margin-left: 0px" TextMode="Password"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>确认密码:</td>
                <td>
                    <asp:TextBox ID="txtRePwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" ErrorMessage="确认密码与密码不匹配"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>年龄</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAge" ErrorMessage="年龄不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="年龄必须在10-100之间" MaximumValue="100" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>出生日期:</td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage="日期不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtDate" ErrorMessage="日期格式有误(XXXX-X-X)" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>邮箱:</td>
                <td>
                    <asp:TextBox ID="txtTelphone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelphone" ErrorMessage="邮箱不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelphone" ErrorMessage="邮箱格式有误" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
                </td>
                <td>
                    &nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
                    
                </td>
            </tr>
            <tr>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
