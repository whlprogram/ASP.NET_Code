<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>引用CSS样式设置Label控件的外观</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" CssClass="aaa" Text="通过CSS样式设置控件的外观"></asp:Label>
    
    </div>
    </form>
</body>
</html>
