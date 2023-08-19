<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifleriSitem.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 120px;
        }
        .auto-style20 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">İçerik:</td>
            <td>
                <asp:TextBox ID="TxtYorumicerik" runat="server" Height="164px" TextMode="MultiLine" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Yemek:</td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style20" Text="Onayla" OnClick="BtnOnayla_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
