<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifleriSitem.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            width: 177px;
            height: 27px;
        }
        .auto-style21 {
            height: 27px;
        }
        .auto-style22 {
            width: 177px;
            text-align: right;
            font-size: large;
        }
        .auto-style23 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style24 {
            width: 177px;
            height: 18px;
        }
        .auto-style25 {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemekAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="104px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemekTarif" runat="server" Height="178px" TextMode="MultiLine" Width="245px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style22"><strong>Yemek Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="248px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp; &nbsp;</td>
            <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style23" Height="38px" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="250px" />
                </strong>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="38px" OnClick="Button1_Click" Text="Günün Yemeği Seç" Width="250px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
