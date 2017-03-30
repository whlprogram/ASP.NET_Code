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
    
        <asp:TextBox ID="TextBox1" runat="server" Width="40px">姓名：</asp:TextBox>
    
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
    
    </div>
    <div>
        <asp:TextBox ID="TextBox2" runat="server" Width="40px">性别：</asp:TextBox>
        <asp:RadioButton ID="rBtnSex1" runat="server" GroupName="Sex" Text="男" Checked="True" />
        <asp:RadioButton ID="rBtnSex2" runat="server" GroupName="Sex" Text="女" />
        <%--
            使用 GroupName 属性指定一组单选按钮，以创建一组互相排斥的控件。
            当只能从可用选项列表中选择一项时，可使用 GroupName 属性。它的使用效果
            如同RadioButtonList实现单选效果。设置该属性后，每次只能从指定的组中选择一个 RadioButton。

            Checked属性 表示已选中状态
        --%>>
   　</div>
        <div>
            <asp:Button ID="btnOK" runat="server" Text="确定" OnClick="btnOK_Click" />
            <asp:Button ID="btnEsc" runat="server" Text="取消" OnClick="btnEsc_Click" />    
        </div>
    </form>
</body>
</html>
