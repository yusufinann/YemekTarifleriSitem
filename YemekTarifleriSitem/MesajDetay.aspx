<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifleriSitem.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <td class="auto-style19">Mesaj Başlık:</td>
            <td>
                <asp:TextBox ID="TxtMesajBaslik" runat="server" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">İçerik:</td>
            <td>
                <asp:TextBox ID="TxtMesajicerik" runat="server" Height="203px" TextMode="MultiLine" Width="260px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
