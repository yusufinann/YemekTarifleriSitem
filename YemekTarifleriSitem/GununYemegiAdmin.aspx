<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifleriSitem.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
        <table class="auto-style14">
            <tr>
                <td class="auto-style27"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style25"  Text="-" Width="40px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style26"  Text="+" Width="40px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>MESAJ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" BackColor="#5E9FEE" Height="212px" Width="396px">
            <ItemTemplate>
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                           <td> 
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Image ID="Image5" runat="server" CssClass="auto-style29" Height="35px" ImageUrl="~/resimler/onaypng.png" Width="36px" /></a>
                               &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
