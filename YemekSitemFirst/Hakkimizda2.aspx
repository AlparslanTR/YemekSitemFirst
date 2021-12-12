<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Hakkimizda2.aspx.cs" Inherits="Hakkimizda2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style12 {
            width: 100%;
            margin-left: 0px;
        }
        

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
        .auto-style13 {
            background-color: #808080;
            width: 70px;
        }
        .auto-style14 {
            background-color: #99CCFF;
        }
        .auto-style15 {
            margin-left: 520px;
        }
        .auto-style16 {
            font-weight: bold;
            margin-left: 92px;
        }
        .auto-style17 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #99CCFF">
        <table class="auto-style12">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style9"><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style14">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style17" Height="300px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" OnClick="Button3_Click" Text="GÜNCELLE" Width="258px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


