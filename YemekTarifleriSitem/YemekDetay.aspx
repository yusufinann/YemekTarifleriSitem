<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifleriSitem.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: xx-large;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            font-size: small;
        }
        .auto-style17 {
            font-size: x-large;
            color: #000000;
        }
        .auto-style19 {
            width: 408px;
        }
        .auto-style20 {
            font-size: x-large;
            color: #FFFF99;
        }
        .auto-style21 {
            color: #000000;
        }
    .auto-style22 {
        width: 170px;
    }
    .auto-style23 {
        width: 170px;
        height: 29px;
    }
    .auto-style24 {
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text="Label"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style20" Height="596px">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style17" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style21" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        <span class="auto-style21">&nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style16" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </span><span class="auto-style20"><strong>______________________</strong></span></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="background-color: #FFFFCC">Yorum Yapma Paneli</div>
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style15">
                <tr>
                    <td class="auto-style22">Ad Soyad:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Mail:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">Yorumunuz:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" OnTextChanged="TextBox3_TextChanged" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
</div>
</asp:Content>
