<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekguncelleSil.aspx.cs" Inherits="YemekguncelleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
        text-align: right;
        font-size: large;
        width: 104px;
    }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
        }
    .auto-style9 {
        width: 104px;
    }
    .auto-style11 {
        width: 100%;
        background-color: #99CCFF;
    }
    .auto-style10 {
        font-weight: bold;
    }
        .auto-style13 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            text-align: right;
            font-size: medium;
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek Adı:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Yemek Resim:</strong></td>
            <td class="auto-style14">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style13" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Güncelle" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="34px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="129px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

