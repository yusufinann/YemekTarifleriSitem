<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleriSitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        width: 100%;
        height: 387px;
        margin-left: 0px;
    }
    .auto-style13 {
        width: 187px;
    }
        .auto-style26 {
            width: 100%;
        }
        .auto-style32 {
            width: 170px;
        }
        .auto-style33 {
            width: 169px;
        }
        .auto-style34 {
            width: 171px;
        }
        .auto-style35 {
            background-color: #FFFFCC;
        }
        .auto-style36 {
            width: 154px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="auto-style26">
            <tr>
                <td class="auto-style36">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style26">
            <tr>
                <td class="auto-style32">Tarif Ad:</td>
                <td>
                    <asp:TextBox ID="TxtTarifAd" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style26">
            <tr>
                <td class="auto-style32">Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="tb5" Height="140px" Width="202px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style26">
            <tr>
                <td class="auto-style33">Yapılış:</td>
                <td>
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="161px" Width="200px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style26">
            <tr>
                <td class="auto-style32">Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="188px" />
                </td>
            </tr>
        </table>
        <table class="auto-style26">
            <tr>
                <td class="auto-style34">Tarif Öneren:</td>
                <td>
                    <asp:TextBox ID="TxtTarifOneren" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style26">
            <tr>
                <td class="auto-style32">Mail Adresi:</td>
                <td>
                    <asp:TextBox ID="TxtMailAdresi" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
        </table>
</p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnTarifGonder" runat="server" BorderColor="#CC3300" CssClass="auto-style35" OnClick="BtnTarifGonder_Click" Text="Tarif Gönder" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
</p>
</asp:Content>
