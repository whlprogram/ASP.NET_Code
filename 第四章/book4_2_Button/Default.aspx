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
    
        <asp:Button ID="Button1" runat="server" BackColor="#B0B0B0" BorderColor="Gray" OnClick="Button1_Click" Text="点击me" />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FFFFC0" BorderColor="Black" BorderWidth="2px" Font-Size="18pt" PostBackUrl="~/Default2.aspx">超链接</asp:LinkButton>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="IamgeButton按钮" BorderColor="Black" BorderWidth="2px" ImageUrl="~/image/image1.gif" PostBackUrl="~/Default3.aspx" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="#8080FF" BorderWidth="2px" ImageUrl="~/image/image2.gif" NavigateUrl="~/Default4.aspx" Target="_blank">HyperLink</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
