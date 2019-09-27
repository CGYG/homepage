<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="info.aspx.cs" Inherits="WebApplication1.info" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 800px; height: auto; margin: 0 auto;">

        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <p style="width: 100%; height: 30px; font-size: 30px; text-align: center;"><%# Eval("Hname") %></p>
                <asp:Image ID="Image1" runat="server" Height="600px" Width="800px" ImageUrl='<%# Eval("Isrc") %>' />
                <p style="width: 100%; height: 30px; font-size: 30px; text-align: center;">酒店介绍：<%# Eval("Hjs") %></p>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:DropDownList ID="DropDownList1" runat="server" OnTextChanged="DropDownList1_TextChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="130/天" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        <asp:DataList ID="DataList2" runat="server" Width="100%">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 102px; height: 28px">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Uname") %>'></asp:Label>
                        </td>
                        <td rowspan="2" style="width: 509px">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Ccommentext") %>'></asp:Label>
                        </td>
                        <td style="height: 28px">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Cdatatime") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 102px; height: 28px"></td>
                        <td style="height: 28px"></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:Panel ID="Panel1" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td style="width:15%; height: 90px;">
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </td>
                    <td rowspan="2" style="width:85%; height: 90px; margin-left: 10px;">
                        <asp:TextBox ID="TextBox1" runat="server" Height="100%" Width="100%"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="发表评论" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="开始订购" CausesValidation="False" />

    </div>
</asp:Content>
