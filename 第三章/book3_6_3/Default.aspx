<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnExecute" runat="server" OnClick="btnExecute_Click" Text="Execute方法" />
        <asp:Button ID="btnTransfer" runat="server" Text="Transfer方法" OnClick="btnTransfer_Click" />
    </div>
    </form>
</body>
</html>
