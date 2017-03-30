<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:TextBox ID="txtContent" runat="server" Height="345px" TextMode="MultiLine" Width="380px"></asp:TextBox>
        <%--TextMode="MultiLine"  多行显示--%>>
    </div>
    </form>
</body>
</html>
