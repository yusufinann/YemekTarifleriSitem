<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleriSitem.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        margin-left: 27px;
    }
    .auto-style13 {
        font-weight: normal;
    }
    .auto-style14 {
        margin-right: 295px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style14">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style15">
        <ItemTemplate>
            <h1><strong>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </strong></h1>
            <h5><span class="auto-style13"><strong>Malzemeler</strong></span>:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
            </h5>
            <p>
                <strong>Tarif</strong>:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
            </p>
            <p>
                <asp:Image ID="Image1" runat="server" CssClass="auto-style12" Height="195px" ImageAlign="AbsMiddle" ImageUrl='<%# Eval("YemekResim") %>' Width="315px" />
            </p>
            <p>
                Puan:
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                Eklenme tarihi: <em>
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </em>
            </p>
        </ItemTemplate>
    </asp:DataList>
</p>
<p class="auto-style14">
    &nbsp;</p>
<p class="auto-style14">
    &nbsp;</p>
<p class="auto-style14">
    &nbsp;</p>
<p class="auto-style14">
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
