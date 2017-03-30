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
    
        <asp:Button ID="btnWriteIPAndDNS" runat="server" Text="将用户IP和DNS写入Cookie" Width="270px" OnClick="btnWriteIPAndDNS_Click" />
        <br />      
        <asp:Button ID="btnRead" runat="server" Text="将用户IP和DNS从Cookie中读出" Width="270px" OnClick="btnRead_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
