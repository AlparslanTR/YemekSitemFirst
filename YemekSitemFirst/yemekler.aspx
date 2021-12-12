<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="yemekler.aspx.cs" Inherits="yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        text-align: right;
    }
        .auto-style6 {
            width: 300px;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style8 {
            background-color: #808080;
        }
        .auto-style9 {
            background-color: #808080;
            width: 69px;
            text-align: left;
        }
        .auto-style10 {
            background-color: #99CCFF;
        }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: medium;
            font-weight: bold;
        }
        .auto-style13 {
            background-color: #808080;
            font-size: large;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            font-size: medium;
            text-align: right;
        }
        .auto-style17 {
            font-size: large;
            text-align: right;
        }
        .auto-style18 {
            text-align: right;
        }
        .auto-style19 {
            background-color: #808080;
            width: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #99CCFF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1"/>
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
                        <td class="auto-style4">
                           <a href="yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/remove.png" Width="36px" /></a>
                        </td>
                        <td class="auto-style4">
                           <a href="YemekguncelleSil.aspx?Yemekid=<%#Eval("Yemekid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/refresh-page-option.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    
        <asp:Panel ID="Panel3" runat="server" style="background-color: #99CCFF">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style19"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style9"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" />
                        </strong></td>
                    <td class="auto-style13"><strong>YEMEK EKLEME </strong>
                       
                    </td>
                </tr>
            </table>
        </asp:Panel>
   <asp:Panel ID="Panel4" runat="server" CssClass="auto-style10">
       <table class="auto-style1">
           <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style18"><strong><span class="auto-style15">Yemek Ad:</span></strong>&nbsp;</td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style16"><strong>Yemek Malzeme:</strong></td>
               <td>
                   <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style16"><strong>Yemek Tarif:</strong></td>
               <td>
                   <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style17"><strong>Kategori:</strong></td>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td>&nbsp;</td>
               <td class="auto-style14"><strong>
                   <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style12" OnClick="BtnEkle_Click" Text="Ekle" Width="100px" />
                   </strong></td>
           </tr>
       </table>

   </asp:Panel>
    </asp:Content>

