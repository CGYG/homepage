<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Orderby.aspx.cs" Inherits="WebApplication1.Orderby" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 1000px; margin: auto auto;margin-top:20px;">
        <asp:GridView ID="GridView1" runat="server" Width="100%" Height="100%" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <columns>
                        <asp:BoundField DataField="Oid" HeaderText="订单号" />
                        <asp:BoundField DataField="Uname" HeaderText="用户名称" />
                        <asp:BoundField DataField="Hname" HeaderText="酒店名称" />
                        <asp:BoundField DataField="Rtype" HeaderText="房间类型" />
                        <asp:BoundField DataField="date" HeaderText="入住日期" />
                        <asp:BoundField DataField="ispay" HeaderText="是否支付" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div style="padding-left:30px;">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Oid") %>' OnClick="LinkButton1_Click1">微信支付</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Oid") %>' OnClick="LinkButton2_Click1">支付宝支付</asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </columns>
            <footerstyle backcolor="#F7DFB5" forecolor="#8C4510" />
            <headerstyle backcolor="#A55129" font-bold="True" forecolor="White" />
            <pagerstyle forecolor="#8C4510" horizontalalign="Center" />
            <rowstyle backcolor="#FFF7E7" forecolor="#8C4510" />
            <selectedrowstyle backcolor="#738A9C" font-bold="True" forecolor="White" />
            <sortedascendingcellstyle backcolor="#FFF1D4" />
            <sortedascendingheaderstyle backcolor="#B95C30" />
            <sorteddescendingcellstyle backcolor="#F1E5CE" />
            <sorteddescendingheaderstyle backcolor="#93451F" />
        </asp:GridView>
    </div>
</asp:Content>
