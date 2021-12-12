<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekTarifiOner.aspx.cs" Inherits="YemekTarifiOner" %>

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
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Ad:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox1" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Malzemeler:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Yapılış:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarifin Sahibi:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox4" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresi:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox5" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="auto-style5">Resim:</td>
        <td style="margin-left: 40px">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
        </td>
        </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="margin-left: 40px" class="auto-style6">
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Kaydet" Width="116px" OnClick="Button1_Click" CssClass="bt1" />
        </td>
    </tr>
</table>
</asp:Content>

