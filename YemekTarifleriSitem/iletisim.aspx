<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifleriSitem.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            width: 189px;
        }
    .auto-style16 {
        width: 189px;
        height: 28px;
        text-align: right;
    }
    .auto-style17 {
        height: 28px;
    }
    .auto-style18 {
        width: 189px;
        text-align: right;
    }
    .auto-style19 {
        font-size: x-large;
    }
        .auto-style20 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style21 {
            font-family: arial;
            color: #14396A;
            font-size: medium;
            text-shadow: 1px 1px 0px #7CACDE;
            box-shadow: 1px 1px 1px #BEE2F9;
            padding: 10px 25px;
            border-radius: 10px;
            border: 2px solid #3866A3;
            background: yellowgreen;
            background: yellowgreen;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style19" colspan="2"><strong>Mesaj Paneli</strong></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Mail Adresiniz:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Konu:</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Mesaj:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style20" Height="83px" TextMode="MultiLine" Width="232px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="Button1" runat="server" Text="Gönder" Width="167px" CssClass="auto-style21" OnClick="Button1_Click" />
                </strong>
            </td>
        </tr>
    </table>
    </asp:Content>
