<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDüzenle.aspx.cs" Inherits="YemekTarifleriSitem.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 182px;
        }
        .auto-style21 {
            width: 182px;
            text-align: right;
        }
        .auto-style22 {
            width: 182px;
            text-align: left;
        }
        .auto-style23 {
            text-align: left;
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
            <td class="auto-style21">KATEGORİ AD:</td>
            <td class="auto-style23">
                <asp:TextBox ID="TxtKategoriAd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">ADET:</td>
            <td class="auto-style23">
                <asp:TextBox ID="TxtKategoriAdet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">RESİM:</td>
            <td class="auto-style23">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="169px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style23">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GÜNCELLE" />
            </td>
        </tr>
    </table>
</asp:Content>
