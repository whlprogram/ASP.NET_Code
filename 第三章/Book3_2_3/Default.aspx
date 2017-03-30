<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>获取页面间传送的值</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnRedirect" runat="server" OnClick="btnRedirect_Click" Text="跳转" />
    
    </div>
    </form>
</body>
</html>
