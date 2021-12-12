<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegi2.aspx.cs" Inherits="GununYemegi2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            background-color: #808080;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style13 {
            background-color: #808080;
            font-size: large;
        }
        .auto-style14 {
            color: #0066FF;
            font-size: large;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #99CCFF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style13"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="background-color: #99CCFF">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text='<%# Eval("Ad") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href='YemekguncelleSil.aspx?Yemekid=<%#Eval("Yemekid")%>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/select.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>

