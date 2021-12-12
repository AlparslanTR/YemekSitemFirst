<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Oneriler2.aspx.cs" Inherits="Oneriler2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style11 {
        width: 100%;
        background-color: #99CCFF;
    }
    .auto-style9 {
            width: 131px;
        }
        .auto-style6 {
            text-align: right;
            font-size: large;
            width: 131px;
        }
        .auto-style7 {
            text-align: center;
            margin-left: 80px;
        }
        .auto-style13 {
            text-align: right;
            font-size: large;
            width: 131px;
            height: 26px;
        }
        .auto-style14 {
            text-align: center;
            height: 26px;
        }
        .auto-style12 {
            font-weight: bold;
        }
        .auto-style15 {
            margin-left: 0px;
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
            <td class="auto-style6"><strong>Tarifin Adı:</strong></td>
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
            <td class="auto-style6"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="302px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Öneren Mail:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox5" runat="server" Width="302px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Resim:</strong></td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Kategori:</strong></td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style15" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Text="Onayla" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

