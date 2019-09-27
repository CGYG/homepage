<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="margin-top: 10px;">
            <asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox>&nbsp;&nbsp;&nbsp;<asp:Button ID="search" runat="server" Text="搜索" OnClick="search_Click" />
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="收起" OnClick="Button1_Click" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div style="margin-top: 10px; padding-bottom: 30px; padding-top: 10px;">
                <div style="border: solid 1px black;margin-bottom:20px;">
                    <asp:DataList ID="DataList4" runat="server" RepeatDirection="Horizontal" Width="1200px">
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <a href="info.aspx?Hid=<%# Eval("Hid") %>"><%# Eval("Hname") %></a>
                            <br />
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Isrc") %> ' Height="200px" Width="200px" />
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </asp:Panel>
    </div>
    <div style="border: solid 1px black; margin-top: 15px; padding-bottom: 30px;">
        <p style="height: 30px; text-align: center; width: 100%; font-size: 30px; color: black; margin-bottom: 20px;">核心区域</p>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" Width="1200px">
            <ItemStyle HorizontalAlign="Center" />
            <ItemTemplate>
                <a href="info.aspx?Hid=<%# Eval("Hid") %>"><%# Eval("Hname") %></a>
                <br />
                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Isrc") %> ' Height="200px" Width="200px" />
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="border: solid 1px black; margin-top: 30px; padding-bottom: 30px;">
        <p style="height: 30px; text-align: center; width: 100%; font-size: 30px; color: black;">舒适区域</p>
        <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" Width="1200px">
            <ItemStyle HorizontalAlign="Center" />
            <ItemTemplate>
                <a href="info.aspx?Hid=<%# Eval("Hid") %>"><%# Eval("Hname") %></a>
                <br />
                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Isrc") %> ' Height="200px" Width="200px" />
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="border: solid 1px black; margin-top: 30px; padding-bottom: 30px;">
        <p style="height: 30px; text-align: center; width: 100%; font-size: 30px; color: black;">外围区域</p>
        <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal" Width="1200px">
            <ItemStyle HorizontalAlign="Center" />
            <ItemTemplate>
                <a href="info.aspx?Hid=<%# Eval("Hid") %>"><%# Eval("Hname") %></a>
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Isrc") %> ' Height="200px" Width="200px" />
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
