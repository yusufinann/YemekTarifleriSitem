<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifleriSitem.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style14 {
            width: 98%;
        }
        .auto-style18 {
            height: 60px;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            color: #FFFF99;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style14">
            <tr>
                <td class="auto-style18"><strong style="background-color: #FFFF66"><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>">
                    <asp:Label ID="Label3" runat="server" BackColor="#FFFF99" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td><span class="auto-style16"><strong>Malzemeler:</strong></span>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span class="auto-style16"><strong>Yemek Tarifi:</strong></span>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span class="auto-style16"><strong>&nbsp;Eklenme Tarihi:</strong></span> <strong><em>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </em></strong>&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span class="auto-style16"><strong>Puan:</strong></span> <strong><em>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
