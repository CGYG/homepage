<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pay.aspx.cs" Inherits="WebApplication1.pay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:600px;height:600px;margin:auto auto;">
            <div style="width:100%;height:100%;">
                <asp:Image ID="Image1" runat="server" ImageUrl="" />
            </div>
            <div style="padding-left:150px;">
                <asp:Button ID="Button1" runat="server" Text="支付" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回订单页" />
            </div>
        </div>
    </form>
</body>
</html>
