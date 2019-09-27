<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="order.aspx.cs" Inherits="WebApplication1.order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: #a79797; height: auto; width: 1000px; margin: auto auto;margin-top:30px;">
            <table style="width: 1000px; text-align: center; margin: auto auto;">
                <tr>
                    <td>用户名称</td>
                    <td>酒店名称</td>
                    <td>房型</td>
                    <td class="auto-style2">入住日期</td>
                    <td class="auto-style1">天数</td>
                    <td>单价</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="uname" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="hname" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="rtype" runat="server" Text="rtype"></asp:Label>
                    </td>
                    <td rowspan="2" class="auto-style2">
                        <asp:Calendar ID="rl" runat="server" SelectedDate="2019-09-26"></asp:Calendar>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="onum" runat="server" Columns="8" AutoPostBack="True" OnTextChanged="onum_TextChanged" TextMode="Number"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="rprice" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="我的订单" />
                    </td>
                    <td class="auto-style1">总价：<asp:Label ID="sumprice" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="提交订单" BackColor="#FF6600" ForeColor="White" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
    </div>
</asp:Content>
