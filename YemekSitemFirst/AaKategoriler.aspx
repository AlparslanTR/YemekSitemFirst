<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AaKategoriler.aspx.cs" Inherits="AaKategoriler" %>

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
            width: 65px;
        }
        .auto-style10 {
            background-color: #99CCFF;
        }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #99CCFF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style8"><strong>KATEGORİ LİSTESİ</strong></td>
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
                           <a href="AaKategoriler.aspx?Kategorid=<%#Eval("Kategorid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/remove.png" Width="36px" /></a>
                        </td>
                        <td class="auto-style4">
                           <a href="KategoriAdminDetay.aspx?Kategorid=<%#Eval("Kategorid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/refresh-page-option.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    
        <asp:Panel ID="Panel3" runat="server" style="background-color: #99CCFF">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style9"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td class="auto-style8"><strong>KATEGORİ EKLEME</strong>
                       
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
               <td>Kategori Ad:&nbsp;</td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>Kategori Resim:</td>
               <td>
                   <asp:FileUpload ID="FileUpload1" runat="server" />
               </td>
           </tr>
           <tr>
               <td>&nbsp;</td>
               <td><strong>
                   <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style12" OnClick="BtnEkle_Click" Text="Ekle" Width="100px" />
                   </strong></td>
           </tr>
       </table>

   </asp:Panel>
    </asp:Content>

