<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            background-color: #808080;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style9 {
        background-color: #808080;
        font-size: large;
    }
        .auto-style10 {
            background-color: #99CCFF;
        }
        .auto-style12 {
            color: #0066FF;
            font-size: large;
            text-align: right;
        }
        .auto-style13 {
            text-align: left;
            width: 299px;
        }
        .auto-style14 {
            background-color: #808080;
            width: 40px;
        }
        .auto-style15 {
            background-color: #808080;
            width: 41px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #99CCFF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button2_Click1" />
                    </strong></td>
                <td class="auto-style9"><strong>ONAYLANAN YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style10" Width="450px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">
                                <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text='<%# Eval("AdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style12">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/remove.png" Width="36px" />
                            </td>
                            <td class="auto-style12">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/refresh-page-option.png" Width="30px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #99CCFF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style9"><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <div>
            <asp:DataList ID="DataList2" runat="server" CssClass="auto-style10" Width="450px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">
                                <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text='<%# Eval("AdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style12">
                                <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/remove.png" Width="36px" />
                            </td>
                            <td class="auto-style12">
                              <a href="Yorumlar2.aspx?Yorumid=<%# Eval("Yorumid")%>"> <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/refresh-page-option.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </asp:Panel>
        </asp:Content>

