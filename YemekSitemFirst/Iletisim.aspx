<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        text-align: right;
        font-weight: bold;
    }
    .auto-style6 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style6" colspan="2"><strong>Bizimle İletişime Geçebilirsiniz</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Konu:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mesaj:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Gönder" Width="100px" CssClass="bt1" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

