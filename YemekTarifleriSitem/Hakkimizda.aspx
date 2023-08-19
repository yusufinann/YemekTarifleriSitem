<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifleriSitem.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style15 {
            height: 208px;
            width: 399px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style14">
        <strong>Hakkımızda</strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="399px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <div>
        <br />
        <br />
        <img alt="" class="auto-style15" src="resimler/6286c29b12038878b35630af_How%20to%20help%20your%20team%20become%20better%20presenters_Blog%20hero.jpg" /></div>
</asp:Content>
