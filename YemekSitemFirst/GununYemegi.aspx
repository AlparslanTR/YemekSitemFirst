<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="450px">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; text-align: center" Text='<%# Eval("Ad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style3">Malzemeler:</span></strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("Malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style3"><strong>Tarifi:</strong></span><asp:Label ID="Label5" runat="server" Text='<%# Eval("Tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Resim") %>' Width="400px" />
                    </td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style3">Puan:</span></strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("Puan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style3">Tarih:</span></strong><asp:Label ID="Label8" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

