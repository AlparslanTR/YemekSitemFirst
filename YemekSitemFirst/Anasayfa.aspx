<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td>


                     <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"><asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("Ad") %>'></asp:Label></a>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("Malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("Tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("Resim") %>' Width="400px" />
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
                        &nbsp;- <strong>Puan:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("Puan") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>

