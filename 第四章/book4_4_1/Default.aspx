<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Image控件和ImageMap控件</title>
    <style type="text/css">
        .auto-style1 {
            height:23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--动态显示头像页--%>>
        <table style="font-size:9pt">
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;动态显示头像
                </td>
            </tr>
            <tr style="font-size:9pt; font-family:'Times New Roman'">
                <td class="auto-style1">请选择头像:</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="font-size:9pt; font-family:'Times New Roman'">
                <td>头像显示:</td>
                <td>
                    <asp:Image ID="Image1" runat="server" AlternateText="显示头像" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <%--使用ImageMap控件展示图片中的方位--%>>
        
        <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="请点击图片中的位置"></asp:Label>
        <br />
        <asp:ImageMap ID="ImageMap1" runat="server" HotSpotMode="PostBack" ImageUrl="~/image/指南针.jpg" OnClick="ImageMap1_Click">
            <asp:RectangleHotSpot AlternateText="西北" Bottom="100" HotSpotMode="PostBack" PostBackValue="NW" Right="100" />
            <asp:RectangleHotSpot AlternateText="东北" Bottom="100" HotSpotMode="PostBack" Left="100" PostBackValue="NE" Right="200" />
            <asp:RectangleHotSpot AlternateText="西南" Bottom="200" HotSpotMode="PostBack" PostBackValue="SW" Right="100" Top="100" />
            <asp:RectangleHotSpot AlternateText="东南" Bottom="200" HotSpotMode="PostBack" Left="100" PostBackValue="SE" Right="200" Top="100" />
        </asp:ImageMap>
        
    </div>
    </form>
</body>
</html>
